import 'package:borrow_app/services/api/backend_service.dart';
import 'package:borrow_app/views/authentication/auth.model.dart';
import 'package:dio/dio.dart';

class RestBackendServiceImplementation implements BackendServiceAggregator {
  final Dio _client;
  final Uri _baseUri;

  RestBackendServiceImplementation({
    required Dio dioClient,
    required Uri baseUri,
  })  : _client = dioClient,
        _baseUri = baseUri {
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
      await _client.post("/auth/login", data: payload);
    } catch (error) {
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _client.post("/auth/logout");
    } catch (error) {
      throw Exception("Failed to sign in: $error");
    }
  }

  @override
  Future<void> refreshTokens() {
    // TODO: implement refreshTokens
    throw UnimplementedError();
  }
}
