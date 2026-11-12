import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/hive_registry.dart';
import '../../../../core/database/json_cache.dart';
import '../../../../core/dev/fake_backend/fake_config_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/app_config_model.dart';

/// GET /config. Throws `NetworkException` / `ServerException`.
abstract interface class ConfigRemoteDataSource {
  Future<AppConfigModel> fetch(String languageCode);
}

@LazySingleton(as: ConfigRemoteDataSource, env: [Environment.dev])
class FakeConfigRemoteDataSource implements ConfigRemoteDataSource {
  FakeConfigRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeConfigBackend _backend;

  static const _latency = Duration(milliseconds: 300);

  @override
  Future<AppConfigModel> fetch(String languageCode) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return AppConfigModel.fromJson(_backend.config(languageCode));
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}

/// The last config on the device. Throws [CacheException].
abstract interface class ConfigLocalDataSource {
  Future<AppConfigModel?> read();

  Future<void> write(AppConfigModel config);
}

@LazySingleton(as: ConfigLocalDataSource)
class ConfigLocalDataSourceImpl implements ConfigLocalDataSource {
  ConfigLocalDataSourceImpl(@Named(HiveBoxes.configCache) LazyBox<String> box)
    : _cache = JsonCache(box);

  final JsonCache _cache;

  /// One config per install; texts in it are re-fetched on language change.
  static const _key = 'config';

  @override
  Future<AppConfigModel?> read() async {
    final cached = await _cache.read(_key);
    if (cached == null) return null;
    try {
      return AppConfigModel.fromJson(cached.json);
    } on Object catch (e) {
      throw CacheException(e);
    }
  }

  @override
  Future<void> write(AppConfigModel config) => _cache.write(
    _key,
    CachedJson(json: config.toJson(), fetchedAt: DateTime.now()),
  );
}
