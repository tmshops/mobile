import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/hive_registry.dart';
import '../../../../core/database/json_cache.dart';
import '../../../../core/dev/fake_backend/fake_info_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// GET /info/{slug}: one JSON shape per page, parsed by the repository's
/// models. Throws `NetworkException` / `ServerException`.
abstract interface class InfoRemoteDataSource {
  Future<Map<String, dynamic>> page(String languageCode, String slug);
}

@LazySingleton(as: InfoRemoteDataSource, env: [Environment.dev])
class FakeInfoRemoteDataSource implements InfoRemoteDataSource {
  FakeInfoRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeInfoBackend _backend;

  static const _latency = Duration(milliseconds: 400);

  @override
  Future<Map<String, dynamic>> page(String languageCode, String slug) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    final json = _backend.page(languageCode, slug);
    if (json == null) throw const ServerException(code: 'not_found');
    return json;
  }
}

/// Last copy of each page per language, for reading offline. Throws
/// [CacheException].
abstract interface class InfoLocalDataSource {
  Future<Map<String, dynamic>?> read(String languageCode, String slug);

  Future<void> write(
    String languageCode,
    String slug,
    Map<String, dynamic> json,
  );
}

@LazySingleton(as: InfoLocalDataSource)
class InfoLocalDataSourceImpl implements InfoLocalDataSource {
  InfoLocalDataSourceImpl(@Named(HiveBoxes.infoCache) LazyBox<String> box)
    : _cache = JsonCache(box);

  final JsonCache _cache;

  static String _key(String languageCode, String slug) => '$languageCode/$slug';

  @override
  Future<Map<String, dynamic>?> read(String languageCode, String slug) async =>
      (await _cache.read(_key(languageCode, slug)))?.json;

  @override
  Future<void> write(
    String languageCode,
    String slug,
    Map<String, dynamic> json,
  ) => _cache.write(
    _key(languageCode, slug),
    CachedJson(json: json, fetchedAt: DateTime.now()),
  );
}
