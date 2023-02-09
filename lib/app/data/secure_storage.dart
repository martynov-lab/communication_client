import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:injectable/injectable.dart';

@Singleton()
class SecureStorage {
  late final FlutterSecureStorage storage;
  SecureStorage() {
    storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
  }

  static const _keyAccessToken = 'AccessToken';
  static const _keyRefreshToken = 'RefreshToken';

  Future setAccessToken(String? token) async => await storage.write(
        key: _keyAccessToken,
        value: token,
      );
  Future<String?> getAccessToken() async =>
      await storage.read(key: _keyAccessToken);

  Future setRefreshToken(String? token) async => await storage.write(
        key: _keyRefreshToken,
        value: token,
      );
  Future<String?> getRefreshToken() async =>
      await storage.read(key: _keyRefreshToken);
}
