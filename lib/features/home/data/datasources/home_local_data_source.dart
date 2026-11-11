import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/hive_registry.dart';
import '../../../../core/database/json_cache.dart';
import '../../../../core/error/exceptions.dart';
import '../models/home_models.dart';

/// Saved Home response plus the device time it was downloaded.
class CachedHome {
  const CachedHome({required this.response, required this.fetchedAt});

  final HomeResponseModel response;
  final DateTime fetchedAt;
}

/// Hive cache of the last Home response per language. Throws
/// [CacheException].
abstract interface class HomeLocalDataSource {
  Future<CachedHome?> read(String languageCode);

  Future<void> write(String languageCode, CachedHome home);
}

@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  HomeLocalDataSourceImpl(@Named(HiveBoxes.homeCache) LazyBox<String> box)
    : _cache = JsonCache(box);

  final JsonCache _cache;

  @override
  Future<CachedHome?> read(String languageCode) async {
    final cached = await _cache.read(languageCode);
    if (cached == null) return null;
    try {
      return CachedHome(
        response: HomeResponseModel.fromJson(cached.json),
        fetchedAt: cached.fetchedAt,
      );
    } on Object catch (e) {
      // Saved by an older app version with a different shape.
      throw CacheException(e);
    }
  }

  @override
  Future<void> write(String languageCode, CachedHome home) => _cache.write(
    languageCode,
    CachedJson(json: home.response.toJson(), fetchedAt: home.fetchedAt),
  );
}
