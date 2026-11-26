import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';
import 'package:tmshop/features/catalog/domain/repositories/catalog_repository.dart';
import 'package:tmshop/features/catalog/domain/usecases/fetch_category_tree_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_cached_category_tree_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_facets_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_products_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_use_case.dart';

import '../../../helpers/catalog_fixtures.dart';

class _MockRepository extends Mock implements CatalogRepository {}

void main() {
  late _MockRepository repository;

  setUp(() => repository = _MockRepository());

  test('tree use cases delegate', () async {
    final tree = sampleTree('ru');
    when(
      () => repository.getCachedTree('ru'),
    ).thenAnswer((_) async => right(null));
    when(() => repository.fetchTree('ru')).thenAnswer((_) async => right(tree));
    expect(await GetCachedCategoryTreeUseCase(repository)('ru'), right(null));
    expect(await FetchCategoryTreeUseCase(repository)('ru'), right(tree));
  });

  test('GetCategoryUseCase passes language and slug', () async {
    when(
      () => repository.getCategory(languageCode: 'tk', slug: 'shoes'),
    ).thenAnswer((_) async => left(const NetworkFailure()));
    final result = await GetCategoryUseCase(repository)(
      languageCode: 'tk',
      slug: 'shoes',
    );
    expect(result.getLeft().toNullable(), isA<NetworkFailure>());
  });

  test('products and facets use cases pass the query through', () async {
    const query = ProductQuery(categorySlug: 'shoes');
    final page = samplePageFor('ru', query);
    final facets = sampleFacets('ru', 'shoes');
    when(
      () => repository.getProducts(
        languageCode: 'ru',
        query: query,
        cursor: '20',
      ),
    ).thenAnswer((_) async => right(page));
    when(
      () => repository.getFacets(
        languageCode: 'ru',
        query: const ProductQuery(categorySlug: 'shoes'),
      ),
    ).thenAnswer((_) async => right(facets));

    expect(
      await GetCategoryProductsUseCase(repository)(
        languageCode: 'ru',
        query: query,
        cursor: '20',
      ),
      right(page),
    );
    expect(
      await GetCategoryFacetsUseCase(repository)(
        languageCode: 'ru',
        query: const ProductQuery(categorySlug: 'shoes'),
      ),
      right(facets),
    );
  });
}
