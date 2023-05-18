import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RestBackendServiceImplementation implements BackendServiceAggregator {
  final Dio _client;
  final Uri _baseUri;
  final FlutterSecureStorage _secureStorage;

  RestBackendServiceImplementation({
    required Dio dioClient,
    required Uri baseUri,
    required FlutterSecureStorage secureStorage,
  })  : _client = dioClient,
        _baseUri = baseUri,
        _secureStorage = secureStorage {
    _client.options.baseUrl = _baseUri.toString();
  }

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
  Future<void> logout() async {
    try {
      await _client.post("/auth/logout");
      await _secureStorage.deleteAll();
    } catch (error) {
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<dynamic> getGroupWithItemsWithOwner({required String id}) async {
    try {
      // TODO: implement and use proper backend route
      // TODO: GroupModel
      await _client.get("/group/$id");
    } catch (error) {
      // TODO: error handling
      //
    }
  }
}
