import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart' as item_list_model;
import 'package:borrow_app/views/group_selection/group_selection.model.dart' as group_selection_model;
import 'package:borrow_app/views/item_detail/item_detail.model.dart' as item_detail_model;
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RestBackendServiceImplementation implements BackendServiceAggregator {
  final Dio _client;
  final FlutterSecureStorage _secureStorage;

  RestBackendServiceImplementation({
    required Dio dioClient,
    required FlutterSecureStorage secureStorage,
  })  : _client = dioClient,
        _secureStorage = secureStorage;

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
      await _secureStorage.write(key: 'accessToken', value: response.data['accessToken']);
      await _secureStorage.write(key: 'refreshToken', value: response.data['refreshToken']);
    } catch (error) {
      await _secureStorage.deleteAll();
      throw Exception("Failed to sign in: $error");
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
      await _secureStorage.deleteAll();
    } catch (error) {
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<item_list_model.GroupModel> getGroupItemsAndCategories({required String groupId}) async {
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
  Future<item_detail_model.ItemModel> getItemDetails({required String itemId}) async {
    try {
      final response = await _client.get("/item/$itemId");
      return item_detail_model.ItemModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not get item detail: $error");
    }
  }
}
