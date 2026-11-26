import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/catalog/data/datasources/catalog_local_data_source.dart';
import 'package:tmshop/features/catalog/data/datasources/catalog_remote_data_source.dart';
import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/features/catalog/data/models/catalog_models.dart';
import 'package:tmshop/features/catalog/data/repositories/catalog_repository_impl.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';

import '../../../helpers/home_fixtures.dart';

class _MockRemote extends Mock implements CatalogRemoteDataSource {}

class _MockLocal extends Mock implements CatalogLocalDataSource {}

void main() {
  late _MockRemote remote;
  late _MockLocal local;
  late CatalogRepositoryImpl repository;
  final tree = CategoryTreeModel.fromJson(FakeCatalogBackend().tree('ru'));

  setUpAll(() {
    registerFallbackValue(CachedTree(tree: tree, fetchedAt: fixtureNow));
  });

  setUp(() {
    remote = _MockRemote();
    local = _MockLocal();
    repository = CatalogRepositoryImpl(remote, local, now: () => fixtureNow);
    when(() => local.writeTree(any(), any())).thenAnswer((_) async {});
  });

  group('getCategory', () {
    test('uses the cached tree without a download', () async {
      when(
        () => local.readTree('ru'),
      ).thenAnswer((_) async => CachedTree(tree: tree, fetchedAt: fixtureNow));
      final category = (await repository.getCategory(
        languageCode: 'ru',
        slug: 'el-audio',
      )).getOrElse((_) => throw StateError('left'));
      expect(category?.name, 'Аудио');
      verifyNever(() => remote.getTree(any()));
    });

    test('downloads when the slug is not cached; null if unknown', () async {
      when(() => local.readTree('ru')).thenAnswer((_) async => null);
      when(() => remote.getTree('ru')).thenAnswer((_) async => tree);

      final found = await repository.getCategory(
        languageCode: 'ru',
        slug: 'shoes',
      );
      expect(found.getOrElse((_) => null)?.slug, 'shoes');

      final missing = await repository.getCategory(
        languageCode: 'ru',
        slug: 'nope',
      );
      expect(missing.isRight(), isTrue);
      expect(missing.getOrElse((_) => throw StateError('left')), isNull);
    });

    test('offline without cache is a NetworkFailure', () async {
      when(() => local.readTree('ru')).thenThrow(const CacheException());
      when(() => remote.getTree('ru')).thenThrow(const NetworkException());
      final result = await repository.getCategory(
        languageCode: 'ru',
        slug: 'shoes',
      );
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  test('getProducts sends the query as parameters', () async {
    when(
      () => remote.getProducts(any(), any()),
    ).thenAnswer((_) async => const ProductListPageModel(items: [], total: 0));
    await repository.getProducts(
      languageCode: 'tk',
      query: const ProductQuery(
        categorySlug: 'shoes',
        sort: ProductSort.newest,
      ),
      cursor: '20',
    );
    verify(
      () => remote.getProducts('tk', {
        'category': 'shoes',
        'sort': 'newest',
        'cursor': '20',
      }),
    ).called(1);
  });

  test('getFacets maps server errors with their message', () async {
    when(
      () => remote.getFacets(any(), any()),
    ).thenThrow(const ServerException(message: 'Сервис недоступен'));
    final failure = (await repository.getFacets(
      languageCode: 'ru',
      query: const ProductQuery(categorySlug: 'shoes'),
    )).getLeft().toNullable();
    expect((failure! as ServerFailure).message, 'Сервис недоступен');
  });
}
