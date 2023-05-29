import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/services/storage/secure_storage.service.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart'
    as item_list_model;
import 'package:borrow_app/views/group_selection/group_selection.model.dart'
    as group_selection_model;
import 'package:borrow_app/views/item_detail/item_detail.model.dart'
    as item_detail_model;
import 'package:dio/dio.dart';

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
      await _client.post("/auth/signup", data: payload);
    } catch (error) {
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<void> login({required LoginDto payload}) async {
    try {
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
  Future<group_selection_model.UserModel> getGroups() async {
    try {
      final response = await _client.get(
        "/user/auth/current-user",
        queryParameters: {
          "relations": ['groups']
        },
      );
      return group_selection_model.UserModel.fromJson(response.data);
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
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<item_list_model.GroupModel> getGroupItemsAndCategories({
    required String groupId,
  }) async {
    try {
      final response = await _client.get(
        "/group/$groupId",
        queryParameters: {
          "relations": ["categories", "items.category", "items.owner"]
        },
      );
      return item_list_model.GroupModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not get group items: $error");
    }
  }

  @override
  Future<void> postGroup(group_selection_model.GroupModel group) async {
    try {
      final userId = await _storageService.read(key: "user-id");
      final groupWithCreatorId = group_selection_model.CreateGroupDTO(
        name: group.name,
        description: group.description,
        creatorId: userId!,
      );
      await _client.post("/group", data: groupWithCreatorId);
    } catch (error) {
      throw Exception("Could not create group: $error");
    }
  }

  @override
  Future<item_detail_model.ItemModel> getItemDetails({
    required String itemId,
  }) async {
    try {
      final response = await _client.get("/item/$itemId");
      return item_detail_model.ItemModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not get item detail: $error");
    }
  }
}
