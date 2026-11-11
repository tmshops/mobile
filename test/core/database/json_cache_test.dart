import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:tmshop/core/database/json_cache.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/features/catalog/data/datasources/catalog_local_data_source.dart';
import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/features/catalog/data/models/catalog_models.dart';

void main() {
  late Directory dir;
  late LazyBox<String> box;
  final savedAt = DateTime(2026, 11, 11, 9, 30);

  setUp(() async {
    dir = await Directory.systemTemp.createTemp('json_cache_test');
    Hive.init(dir.path);
    box = await Hive.openLazyBox<String>('cache');
  });

  tearDown(() async {
    await Hive.close();
    await dir.delete(recursive: true);
  });

  test('round-trips JSON with its download time', () async {
    final cache = JsonCache(box);
    await cache.write(
      'ru',
      CachedJson(json: const {'a': 1}, fetchedAt: savedAt),
    );
    final read = await cache.read('ru');
    expect(read?.json, {'a': 1});
    expect(read?.fetchedAt, savedAt);
    expect(await cache.read('tk'), isNull);
  });

  test('a broken entry throws and is deleted', () async {
    await box.put('ru', 'not json');
    await expectLater(
      JsonCache(box).read('ru'),
      throwsA(isA<CacheException>()),
    );
    expect(await box.get('ru'), isNull);
  });

  test('catalog tree survives the cache round-trip', () async {
    final source = CatalogLocalDataSourceImpl(box);
    final tree = CategoryTreeModel.fromJson(FakeCatalogBackend().tree('tk'));
    await source.writeTree('tk', CachedTree(tree: tree, fetchedAt: savedAt));
    final read = await source.readTree('tk');
    expect(read?.tree, tree);
  });
}
