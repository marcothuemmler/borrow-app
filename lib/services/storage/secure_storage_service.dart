import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  static const _secureStorage = FlutterSecureStorage();

  Future<void> writeTokenData({required Map<String, dynamic> tokenData}) {
    return Future.wait([
      _secureStorage.write(key: 'accessToken', value: tokenData['accessToken']),
      _secureStorage.write(key: 'refreshToken', value: tokenData['refreshToken'])
    ]);
  }

  Future<void> deleteAll() {
    return _secureStorage.deleteAll();
  }

  Future<String?> read({required String key}) {
    return _secureStorage.read(key: key);
  }

  Future<bool> containsKey({required String key}) {
    return _secureStorage.containsKey(key: key);
  }
}
