import 'dart:convert';

import 'package:barbershop_frontend/user/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureCredentialsStorage implements CredentialsStorage {
  final FlutterSecureStorage _secureStorage;

  SecureCredentialsStorage(this._secureStorage);

  static const _key = 'oauth2_credentials';

  StringMap? _cachedCredentials;

  @override
  Future<StringMap?> read() async {
    if (_cachedCredentials != null) return _cachedCredentials;
    final credentialMap = await _secureStorage.read(key: _key);
    if (credentialMap == null) return null;
    final decoded = jsonDecode(credentialMap);
    StringMap credentials = {"accessToken": decoded["accessToken"]};
    return _cachedCredentials = credentials;
  }

  @override
  Future<void> save(StringMap credentials) {
    _cachedCredentials = credentials;
    return _secureStorage.write(key: _key, value: jsonEncode(credentials));
  }

  @override
  Future<void> clear() {
    _cachedCredentials = null;
    return _secureStorage.delete(key: _key);
  }
}
