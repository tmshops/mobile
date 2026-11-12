import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../error/exceptions.dart';
import 'user_profile.dart';

/// Where session tokens live: the Keystore / Keychain, never Hive (TZ §7.2).
/// Throws [CacheException].
abstract interface class TokenStorage {
  Future<SessionTokens?> read();

  Future<void> write(SessionTokens tokens);

  Future<void> clear();
}

@LazySingleton(as: TokenStorage)
class SecureTokenStorage implements TokenStorage {
  const SecureTokenStorage(this._storage);

  final FlutterSecureStorage _storage;

  static const _access = 'access_token';
  static const _refresh = 'refresh_token';

  @override
  Future<SessionTokens?> read() => _guard(() async {
    final access = await _storage.read(key: _access);
    final refresh = await _storage.read(key: _refresh);
    if (access == null || refresh == null) return null;
    return SessionTokens(access: access, refresh: refresh);
  });

  @override
  Future<void> write(SessionTokens tokens) => _guard(() async {
    await _storage.write(key: _access, value: tokens.access);
    await _storage.write(key: _refresh, value: tokens.refresh);
  });

  @override
  Future<void> clear() => _guard(() async {
    await _storage.delete(key: _access);
    await _storage.delete(key: _refresh);
  });

  static Future<T> _guard<T>(Future<T> Function() run) async {
    try {
      return await run();
    } on Object catch (e) {
      throw CacheException(e);
    }
  }
}
