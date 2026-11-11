import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/database/hive_registry.dart';
import '../../../../core/database/json_cache.dart';
import '../../../../core/error/exceptions.dart';
import '../models/catalog_models.dart';

class CachedTree {
  const CachedTree({required this.tree, required this.fetchedAt});

  final CategoryTreeModel tree;
  final DateTime fetchedAt;
}

/// Hive cache of the category tree per language (TZ §8). Throws
/// [CacheException].
abstract interface class CatalogLocalDataSource {
  Future<CachedTree?> readTree(String languageCode);

  Future<void> writeTree(String languageCode, CachedTree tree);
}

@LazySingleton(as: CatalogLocalDataSource)
class CatalogLocalDataSourceImpl implements CatalogLocalDataSource {
  CatalogLocalDataSourceImpl(@Named(HiveBoxes.catalogCache) LazyBox<String> box)
    : _cache = JsonCache(box);

  final JsonCache _cache;

  @override
  Future<CachedTree?> readTree(String languageCode) async {
    final cached = await _cache.read(languageCode);
    if (cached == null) return null;
    try {
      return CachedTree(
        tree: CategoryTreeModel.fromJson(cached.json),
        fetchedAt: cached.fetchedAt,
      );
    } on Object catch (e) {
      throw CacheException(e);
    }
  }

  @override
  Future<void> writeTree(String languageCode, CachedTree tree) => _cache.write(
    languageCode,
    CachedJson(json: tree.tree.toJson(), fetchedAt: tree.fetchedAt),
  );
}
