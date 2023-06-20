import "package:flutter/material.dart";
import "package:flutter_secure_storage/flutter_secure_storage.dart";
import "package:jwt_decoder/jwt_decoder.dart";

class SecureStorageService extends ChangeNotifier {
  final FlutterSecureStorage _storage;

  SecureStorageService({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  Future<bool> containsKey({required String key}) async {
    return await _storage.containsKey(key: key);
  }

  Future<bool> writeTokenData({required Map<String, dynamic> data}) async {
    final Map<String, dynamic>? decodedToken = JwtDecoder.tryDecode(
      data["accessToken"],
    );
    await _storage.write(key: "user-id", value: decodedToken?["sub"]);
    await _storage.write(key: "accessToken", value: data["accessToken"]);
    await _storage.write(key: "refreshToken", value: data["refreshToken"]);
    notifyListeners();
    return true;
  }

  Future<bool> deleteAll() async {
    await _storage.deleteAll();
    notifyListeners();
    return false;
  }

  Future<String?> read({required String key}) async {
    return await _storage.read(key: key);
  }
}
