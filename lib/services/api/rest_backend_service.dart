import "dart:typed_data";

import "package:borrow_app/services/api/backend_service.dart";
import "package:borrow_app/services/storage/secure_storage.service.dart";
import "package:borrow_app/views/authentication/auth.model.dart";
import "package:borrow_app/views/chat_list/chat_list.model.dart";
import "package:borrow_app/views/dashboard/item_list/item_list.model.dart";
import "package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart";
import "package:borrow_app/views/dashboard/profile/profile_item_list/profile_item_list.model.dart";
import "package:borrow_app/views/group_selection/group_selection.model.dart";
import "package:borrow_app/views/invitation_list/invitation_list.model.dart";
import "package:borrow_app/views/item_detail/item_detail.model.dart";
import "package:borrow_app/views/item_editor/item_editor.model.dart";
import "package:borrow_app/views/profile_settings/profile_settings.model.dart";
import "package:dio/dio.dart";
import "package:http_parser/http_parser.dart";
import "package:image_picker/image_picker.dart";

class RestBackendServiceImplementation implements BackendServiceAggregator {
  final Dio _client;
  final SecureStorageService _storageService;

  const RestBackendServiceImplementation({
    required Dio dioClient,
    required SecureStorageService storageService,
  })  : _client = dioClient,
        _storageService = storageService;

  @override
  Future<void> signup({required SignupDto payload}) async {
    try {
      await _storageService.deleteAll();
      await _client.post<dynamic>("/auth/signup", data: payload);
    } catch (error) {
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<void> login({required LoginDto payload}) async {
    try {
      await _storageService.deleteAll();
      final Response<Map<String, dynamic>> response = await _client.post(
        "/auth/login",
        data: payload,
      );
      await _storageService.writeTokenData(data: response.data!);
    } catch (error) {
      await _storageService.deleteAll();
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<bool> refreshTokens() async {
    try {
      final Response<Map<String, dynamic>> response = await _client.post(
        "/auth/refresh",
      );
      return await _storageService.writeTokenData(data: response.data!);
    } catch (error) {
      return await _storageService.deleteAll();
    }
  }

  @override
  Future<GroupSelectionUserModel> getGroups() async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      final Response<Map<String, dynamic>> response = await _client.get(
        "/users/with-groups/$userId",
        queryParameters: <String, dynamic>{
          "join": <dynamic>["groups", "invitations"],
          "fields": "username"
        },
      );
      return GroupSelectionUserModel.fromJson(response.data!);
    } catch (error) {
      throw Exception("Could not get group items: $error");
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _client.post<dynamic>("/auth/logout");
      await _storageService.deleteAll();
    } catch (error) {
      throw Exception("Failed to log out: $error");
    }
  }

  @override
  Future<ItemListGroupModel> getGroupItemsAndCategories({
    required String groupId,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _client.get(
        "/groups/$groupId",
        queryParameters: <String, List<String>>{
          "join": <String>[
            "categories",
            "items",
            "items.category",
            "items.owner",
          ],
          "sort": <String>["items.created_at,DESC"]
        },
      );
      return ItemListGroupModel.fromJson(response.data!);
    } catch (error) {
      throw Exception("Could not get group items: $error");
    }
  }

  @override
  Future<List<ProfileItemListItemModel>> getItemsFromOwner({
    required String groupId,
  }) async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      final Response<List<dynamic>> response = await _client.get(
        "/items",
        queryParameters: <String, dynamic>{
          "join": <String>["group", "owner", "category"],
          "filter": <String>[
            "group.id||\$eq||$groupId",
            "owner.id||\$eq||$userId"
          ],
          "sort": <String>["created_at,DESC"]
        },
      );
      return List<ProfileItemListItemModel>.from(
        response.data!.map((dynamic json) {
          return ProfileItemListItemModel.fromJson(json);
        }),
      );
    } catch (error) {
      throw Exception("Could not get group items: $error");
    }
  }

  @override
  Future<GroupSelectionGroupModel> postGroup(
    GroupSelectionGroupModel group,
  ) async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      final CreateGroupDTO groupWithCreatorId = CreateGroupDTO(
        name: group.name,
        description: group.description,
        creatorId: userId!,
      );
      final Response<Map<String, dynamic>> response =
          await _client.post("/groups", data: groupWithCreatorId);
      return GroupSelectionGroupModel.fromJson(response.data!);
    } catch (error) {
      throw Exception("Could not create group: $error");
    }
  }

  @override
  Future<ItemDetailItemModel> getItemDetails({
    required String itemId,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _client.get(
        "/items/$itemId",
        queryParameters: <String, List<String>>{
          "join": <String>["category", "owner"]
        },
      );
      final ItemDetailItemModel item =
          ItemDetailItemModel.fromJson(response.data!);
      final String? myUserId = await _storageService.read(key: "user-id");
      return item.copyWith(isMyItem: item.owner.id == myUserId);
    } catch (error) {
      throw Exception("Could not get item detail: $error");
    }
  }

  @override
  Future<ItemEditorItemModel> getItemEditorDetails({
    required String itemId,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _client.get(
        "/items/$itemId",
        queryParameters: <String, List<String>>{
          "join": <String>["category", "owner"]
        },
      );
      return ItemEditorItemModel.fromJson(response.data!);
    } catch (error) {
      throw Exception("Could not get item detail: $error");
    }
  }

  @override
  Future<void> putGroupImage({
    required String groupId,
    required XFile? groupImage,
  }) async {
    if (groupImage is! XFile) {
      return;
    }
    try {
      final Uint8List bytes = await groupImage.readAsBytes();
      final String type = groupImage.name.split(".").last;

      final FormData formData = FormData.fromMap(<String, dynamic>{
        "file": MultipartFile.fromBytes(
          bytes,
          filename: groupImage.name,
          contentType: MediaType("image", type),
        ),
        "type": "image/$type",
      });
      await _client.put<dynamic>(
        "/groups/cover/$groupId",
        data: formData,
        options: Options(contentType: "multipart/form-data"),
      );
    } catch (error) {
      throw Exception("Failed to upload project image: $error");
    }
  }

  @override
  Future<void> inviteGroupMembers({
    required InvitationModel payload,
  }) async {
    try {
      final Map<String, List<String>> data = <String, List<String>>{
        "emails": <String>[...payload.emails]
      };
      await _client.put<dynamic>(
        "/groups/${payload.groupId}/invitations",
        data: data,
      );
    } catch (error) {
      throw Exception("Could not invite users: $error");
    }
  }

  @override
  Future<void> postCategory({
    required String groupId,
    required CategorySettingsCategoryModel model,
  }) async {
    try {
      final CreateCategoryDTO modelDTO = CreateCategoryDTO(
        name: model.name,
        description: model.description,
        groupId: groupId,
      );
      await _client.post<dynamic>("/categories", data: modelDTO);
    } catch (error) {
      throw Exception("Could not set group $error");
    }
  }

  @override
  Future<CategorySettingsCategoryListModel> getCategories({
    required String groupId,
  }) async {
    try {
      final Response<Map<String, dynamic>> response = await _client.get(
        "/groups/$groupId",
        queryParameters: <String, List<String>>{
          "fields": <String>["id"],
          "join": <String>["categories"]
        },
      );
      return CategorySettingsCategoryListModel.fromJson(response.data!);
    } catch (error) {
      throw Exception("Could not get group categories: $error");
    }
  }

  @override
  Future<void> deleteCategory({required String id}) async {
    try {
      await _client.delete<dynamic>("/categories/$id");
    } catch (error) {
      throw Exception("Could not delete category: $error");
    }
  }

  @override
  Future<void> deleteItem({required String id}) async {
    try {
      await _client.delete<dynamic>("/items/$id");
    } catch (error) {
      throw Exception("Could not delete category: $error");
    }
  }

  @override
  Future<List<ChatRoomModel>> loadMyChatRooms() async {
    try {
      final Response<List<dynamic>> response = await _client.get("/chats");
      return List<ChatRoomModel>.from(
        response.data!.map((dynamic json) {
          return ChatRoomModel.fromJson(json);
        }),
      );
    } catch (error) {
      throw Exception("Could not load user chatrooms: $error");
    }
  }

  @override
  Future<ProfileSettingsUserModel> loadProfileData() async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      final Response<Map<String, dynamic>> response = await _client.get(
        "/users/$userId",
      );
      return ProfileSettingsUserModel.fromJson(response.data!);
    } catch (error) {
      throw Exception(("Could not load profile data: $error"));
    }
  }

  @override
  Future<ProfileSettingsUserModel> patchUser({
    required ProfileSettingsUserModel user,
  }) async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      final UpdateUserDto payload = UpdateUserDto(
        username: user.username,
        email: user.email,
      );
      final Response<Map<String, dynamic>> response =
          await _client.patch("/users/$userId", data: payload);
      return ProfileSettingsUserModel.fromJson(response.data!);
    } catch (error) {
      throw Exception("Could not patch user: $error");
    }
  }

  @override
  Future<void> putProfileImage({required XFile profileImage}) async {
    try {
      final Uint8List bytes = await profileImage.readAsBytes();
      final String type = profileImage.name.split(".").last;
      final String? userId = await _storageService.read(key: "user-id");
      final FormData formData = FormData.fromMap(<String, dynamic>{
        "file": MultipartFile.fromBytes(
          bytes,
          filename: profileImage.name,
          contentType: MediaType("image", type),
        ),
        "type": "image/$type",
      });
      await _client.put<dynamic>(
        "/users/cover/$userId",
        data: formData,
        options: Options(contentType: "multipart/form-data"),
      );
    } catch (error) {
      throw Exception("Failed to upload project image: $error");
    }
  }

  @override
  Future<XFile> getProfileImage({required String imageUrl}) async {
    try {
      final Response<Uint8List> response = await _client.get(
        imageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      final String? contentType = response.headers["content-type"]?.first;
      final String? extension = contentType?.split("/").last;
      return XFile.fromData(
        response.data!,
        name: "cover.$extension",
        mimeType: contentType,
      );
    } catch (error) {
      throw Exception("Could not load profile image: $error");
    }
  }

  @override
  Future<void> deleteProfileImage() async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      await _client.delete<dynamic>("/users/cover/$userId");
    } catch (error) {
      throw Exception("Could not delete profile image: $error");
    }
  }

  @override
  Future<void> deleteAccount({required String password}) async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      await _client.delete<dynamic>(
        "/users/$userId",
        data: <String, String>{"password": password},
      );
      await _storageService.deleteAll();
    } catch (error) {
      throw Exception("Could not delete account");
    }
  }

  @override
  Future<void> deleteGroupInvitation({required String groupId}) async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      await _client.delete<dynamic>("/groups/$groupId/invitations/$userId");
    } catch (error) {
      throw Exception("Could not delete group invitation: $error");
    }
  }

  @override
  Future<void> joinGroup({required String groupId}) async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      await _client.put<dynamic>("/groups/$groupId/members/$userId");
    } catch (error) {
      throw Exception("Could not join group: $error");
    }
  }

  @override
  Future<List<InvitationListInvitationModel>> loadInvitations() async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      final Response<List<dynamic>> response =
          await _client.get("/users/$userId/invitations");
      return List<InvitationListInvitationModel>.from(
        response.data!.map((dynamic json) {
          return InvitationListInvitationModel.fromJson(json);
        }),
      );
    } catch (error) {
      throw Exception("Could not load invitations : $error");
    }
  }

  @override
  Future<List<ItemEditorCategoryModel>> getCategoriesForItemEditor({
    required String groupId,
  }) async {
    try {
      final Response<List<dynamic>> response = await _client.get(
        "/categories",
        queryParameters: <String, dynamic>{
          "join": <String>["group"],
          "filter": "group.id||\$eq||$groupId"
        },
      );
      return List<ItemEditorCategoryModel>.from(
        response.data!.map((dynamic json) {
          return ItemEditorCategoryModel.fromJson(json);
        }),
      );
    } catch (error) {
      throw Exception("Could not load categories: $error");
    }
  }

  @override
  Future<void> patchItem({
    required String itemId,
    required ItemEditorItemModel item,
  }) async {
    try {
      final ItemEditorItemModelDTO payload = ItemEditorItemModelDTO(
        name: item.name,
        description: item.description,
        categoryId: item.category!.id!,
      );
      await _client.patch<dynamic>("/items/$itemId", data: payload);
    } catch (error) {
      throw Exception("Could patch item $error");
    }
  }

  @override
  Future<String> postItem({
    required ItemEditorItemModel item,
    required String groupId,
  }) async {
    try {
      final String? userId = await _storageService.read(key: "user-id");
      final NewItemEditorItemModelDTO payload = NewItemEditorItemModelDTO(
        name: item.name,
        description: item.description,
        categoryId: item.category!.id!,
        ownerId: userId!,
        groupId: groupId,
      );
      final Response<Map<String, dynamic>> res = await _client.post(
        "/items",
        data: payload,
      );
      return res.data!["id"];
    } catch (error) {
      throw Exception("Couldn't post item $error");
    }
  }

  @override
  Future<void> setItemAvailability({
    required String itemId,
    required bool availability,
  }) async {
    await _client.patch<dynamic>(
      "/items/$itemId",
      data: <String, bool>{"isActive": availability},
    );
  }

  @override
  Future<void> putItemImage({
    required String itemId,
    required XFile image,
  }) async {
    try {
      final Uint8List bytes = await image.readAsBytes();
      final String type = image.name.split(".").last;
      final FormData formData = FormData.fromMap(<String, dynamic>{
        "file": MultipartFile.fromBytes(
          bytes,
          filename: image.name,
          contentType: MediaType("image", type),
        ),
        "type": "image/$type",
      });
      await _client.put<dynamic>(
        "/items/cover/$itemId",
        data: formData,
        options: Options(contentType: "multipart/form-data"),
      );
    } catch (error) {
      throw Exception("Failed to upload item image: $error");
    }
  }

  @override
  Future<XFile> getItemImage({required String imageUrl}) async {
    try {
      final Response<Uint8List> response = await _client.get(
        imageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      final String? contentType = response.headers["content-type"]?.first;
      final String? extension = contentType?.split("/").last;
      return XFile.fromData(
        response.data!,
        name: "cover.$extension",
        mimeType: contentType,
      );
    } catch (error) {
      throw Exception("Could not load item image: $error");
    }
  }

  @override
  Future<void> deleteItemImage({required String itemId}) async {
    try {
      await _client.delete<dynamic>("/items/cover/$itemId");
    } catch (error) {
      throw Exception("Could not delete profile image: $error");
    }
  }
}
