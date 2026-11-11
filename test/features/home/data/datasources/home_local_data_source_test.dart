import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/features/home/data/datasources/home_local_data_source.dart';

import '../../../../helpers/home_fixtures.dart';

void main() {
  late Directory dir;
  late LazyBox<String> box;
  late HomeLocalDataSourceImpl source;

  setUp(() async {
    dir = await Directory.systemTemp.createTemp('home_cache_test');
    Hive.init(dir.path);
    box = await Hive.openLazyBox<String>('home_cache');
    source = HomeLocalDataSourceImpl(box);
  });

  tearDown(() async {
    await Hive.close();
    await dir.delete(recursive: true);
  });

  test('round-trips a response per language', () async {
    final model = sampleHomeModel('tk');
    await source.write(
      'tk',
      CachedHome(response: model, fetchedAt: fixtureNow),
    );

    final cached = await source.read('tk');
    expect(cached?.fetchedAt, fixtureNow);
    expect(cached?.response.sections.length, model.sections.length);
    expect(await source.read('ru'), isNull);
  });

  test('a corrupt entry throws CacheException and is removed', () async {
    await box.put('ru', '{not json');
    await expectLater(source.read('ru'), throwsA(isA<CacheException>()));
    expect(await box.get('ru'), isNull);
  });
}
