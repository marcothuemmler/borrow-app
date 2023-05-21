import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/services/storage/secure_storage_service.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:borrow_app/views/dashboard/item_list/item_list.model.dart';
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
      await _storageService.writeTokenData(tokenData: response.data);
    } catch (error) {
      await _storageService.deleteAll();
      throw Exception("Failed to sign in: $error");
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
  Future<GroupModel> getGroupItemsAndCategories({required String groupId}) async {
    try {
      final response = await _client.get(
        "/group/$groupId",
        queryParameters: {
          "relations": ["categories", "items.category", "items.owner"]
        },
      );
      return GroupModel.fromJson(response.data);
    } catch (error) {
      throw Exception("Could not get group items: $error");
    }
  }
}
