import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/services/storage/secure_storage.service.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/chat_list/chat_list.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
import 'package:borrow_app/views/dashboard/profile/categories_settings/category_settings.model.dart';
import 'package:borrow_app/views/group_selection/group_selection.model.dart';
import 'package:borrow_app/views/item_detail/item_detail.model.dart';
import 'package:borrow_app/views/profile_settings/profile_settings.model.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';

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
      await _client.post("/auth/signup", data: payload);
    } catch (error) {
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<void> login({required LoginDto payload}) async {
    try {
      await _storageService.deleteAll();
      final response = await _client.post("/auth/login", data: payload);
      await _storageService.writeTokenData(data: response.data);
    } catch (error) {
      await _storageService.deleteAll();
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<bool> refreshTokens() async {
    try {
      final response = await _client.post('/auth/refresh');
      return await _storageService.writeTokenData(data: response.data);
    } catch (error) {
      return await _storageService.deleteAll();
    }
  }

  @override
  Future<GroupSelectionUserModel> getGroups() async {
    try {
      final userId = await _storageService.read(key: "user-id");
      final response = await _client.get(
        "/users/with-groups/$userId",
        queryParameters: {
          "join": ['groups'],
          "fields": "username"
        },
      );
      return GroupSelectionUserModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not get group items: $error");
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _client.post("/auth/logout");
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
      final response = await _client.get(
        "/groups/$groupId",
        queryParameters: {
          "join": ["categories", "items", "items.category", "items.owner"]
        },
      );
      return ItemListGroupModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not get group items: $error");
    }
  }

  @override
  Future<GroupSelectionGroupModel> postGroup(
    GroupSelectionGroupModel group,
  ) async {
    try {
      final userId = await _storageService.read(key: "user-id");
      final groupWithCreatorId = CreateGroupDTO(
        name: group.name,
        description: group.description,
        creatorId: userId!,
      );
      final response = await _client.post("/groups", data: groupWithCreatorId);
      return GroupSelectionGroupModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not create group: $error");
    }
  }

  @override
  Future<ItemDetailItemModel> getItemDetails({
    required String itemId,
  }) async {
    try {
      final response = await _client.get(
        "/items/$itemId",
        queryParameters: {
          'join': ['category', 'owner']
        },
      );
      final item = ItemDetailItemModel.fromJson(response.data);
      final myUserId = await _storageService.read(key: "user-id");
      return item.copyWith(isMyItem: item.owner.id == myUserId);
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
      final bytes = await groupImage.readAsBytes();
      final type = groupImage.name.split(".").last;

      final formData = FormData.fromMap({
        "file": MultipartFile.fromBytes(
          bytes,
          filename: groupImage.name,
          contentType: MediaType("image", type),
        ),
        "type": "image/$type",
      });
      await _client.put(
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
    // TODO: implement inviteMembers
  }

  @override
  Future<void> postCategory({
    required String groupId,
    required CategorySettingsCategoryModel model,
  }) async {
    try {
      final modelDTO = CreateCategoryDTO(
        name: model.name,
        description: model.description,
        groupId: groupId,
      );
      await _client.post("/categories", data: modelDTO);
    } catch (error) {
      throw Exception("Could not set group $error");
    }
  }

  @override
  Future<CategorySettingsCategoryListModel> getCategories({
    required String groupId,
  }) async {
    try {
      final response = await _client.get(
        "/groups/$groupId",
        queryParameters: {
          "fields": ['id'],
          "join": ['categories']
        },
      );
      return CategorySettingsCategoryListModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not get group categories: $error");
    }
  }

  @override
  Future<void> deleteCategory({required String id}) async {
    try {
      await _client.delete("/categories/$id");
    } catch (error) {
      throw Exception("Could not delete category: $error");
    }
  }

  @override
  Future<List<ChatRoomModel>> loadMyChatRooms() async {
    try {
      final response = await _client.get("/chats");
      return List<ChatRoomModel>.from(
        response.data.map((json) {
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
      final userId = await _storageService.read(key: "user-id");
      final response = await _client.get("/users/$userId");
      return ProfileSettingsUserModel.fromJson(response.data);
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
      final response = await _client.patch("/users/$userId", data: payload);
      return ProfileSettingsUserModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not patch user: $error");
    }
  }

  @override
  Future<void> putProfileImage({required XFile profileImage}) async {
    try {
      final bytes = await profileImage.readAsBytes();
      final type = profileImage.name.split(".").last;
      final userId = await _storageService.read(key: "user-id");
      final formData = FormData.fromMap({
        "file": MultipartFile.fromBytes(
          bytes,
          filename: profileImage.name,
          contentType: MediaType("image", type),
        ),
        "type": "image/$type",
      });
      await _client.put(
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
      final response = await _client.get(
        imageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      final contentType = response.headers["content-type"]?.first;
      final extension = contentType?.split("/").last;
      return XFile.fromData(
        response.data,
        name: "cover.$extension",
        mimeType: contentType,
      );
    } catch (error) {
      throw Exception("Could not load profile image: $error");
    }
  }
}
