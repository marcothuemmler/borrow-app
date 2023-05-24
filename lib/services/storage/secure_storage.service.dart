import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage;

  SecureStorageService({required FlutterSecureStorage storage}) : _storage = storage;

  Future<bool> containsKey({required String key}) async {
    return await _storage.containsKey(key: key);
  }

  Future<bool> writeTokenData({required Map<String, dynamic> data}) async {
    await _storage.write(key: "accessToken", value: data['accessToken']);
    await _storage.write(key: "refreshToken", value: data['refreshToken']);
    return true;
  }

  Future<bool> deleteAll() async {
    await _storage.deleteAll();
    return false;
  }

  Future<String?> read({required String key}) async {
    return await _storage.read(key: key);
  }
}
