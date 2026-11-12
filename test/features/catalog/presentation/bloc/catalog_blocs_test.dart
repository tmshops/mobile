import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/catalog/domain/entities/facet.dart';
import 'package:tmshop/features/catalog/domain/entities/product_list_page.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';
import 'package:tmshop/features/catalog/domain/usecases/fetch_category_tree_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_cached_category_tree_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_facets_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_products_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_use_case.dart';
import 'package:tmshop/features/catalog/presentation/bloc/category_products_bloc.dart';
import 'package:tmshop/features/catalog/presentation/bloc/category_tree_bloc.dart';
import 'package:tmshop/features/catalog/presentation/bloc/filters_bloc.dart';

import '../../../../helpers/catalog_fixtures.dart';

class _MockGetCachedTree extends Mock implements GetCachedCategoryTreeUseCase {}

class _MockFetchTree extends Mock implements FetchCategoryTreeUseCase {}

class _MockGetCategory extends Mock implements GetCategoryUseCase {}

class _MockGetProducts extends Mock implements GetCategoryProductsUseCase {}

class _MockGetFacets extends Mock implements GetCategoryFacetsUseCase {}

void main() {
  setUpAll(() {
    registerFallbackValue(const ProductQuery(categorySlug: ''));
    registerFallbackValue(const AppliedFilters());
  });

  group('CategoryTreeBloc', () {
    late _MockGetCachedTree getCached;
    late _MockFetchTree fetch;
    final cached = sampleTree('ru', isFromCache: true);
    final fresh = sampleTree('ru');

    setUp(() {
      getCached = _MockGetCachedTree();
      fetch = _MockFetchTree();
    });

    blocTest<CategoryTreeBloc, CategoryTreeState>(
      'cache first, then the fresh tree',
      setUp: () {
        when(() => getCached('ru')).thenAnswer((_) async => right(cached));
        when(() => fetch('ru')).thenAnswer((_) async => right(fresh));
      },
      build: () => CategoryTreeBloc(getCached, fetch),
      act: (bloc) => bloc.add(const CategoryTreeEvent.started('ru')),
      expect: () => [
        CategoryTreeState.loaded(tree: cached, isRefreshing: true),
        CategoryTreeState.loaded(tree: fresh),
      ],
    );

    blocTest<CategoryTreeBloc, CategoryTreeState>(
      'no cache and offline: skeleton, then failure',
      setUp: () {
        when(() => getCached('ru')).thenAnswer((_) async => right(null));
        when(
          () => fetch('ru'),
        ).thenAnswer((_) async => left(const NetworkFailure()));
      },
      build: () => CategoryTreeBloc(getCached, fetch),
      act: (bloc) => bloc.add(const CategoryTreeEvent.started('ru')),
      expect: () => const [
        CategoryTreeState.loading(),
        CategoryTreeState.failure(NetworkFailure()),
      ],
    );
  });

  group('CategoryProductsBloc', () {
    late _MockGetCategory getCategory;
    late _MockGetProducts getProducts;
    const query = ProductQuery(categorySlug: 'shoes');
    final category = sampleTree('ru').find('shoes');
    final first = samplePageFor('ru', query);
    final second = samplePageFor('ru', query, cursor: first.nextCursor);

    setUp(() {
      getCategory = _MockGetCategory();
      getProducts = _MockGetProducts();
      when(
        () => getCategory(languageCode: 'ru', slug: 'shoes'),
      ).thenAnswer((_) async => right(category));
      when(
        () => getProducts(
          languageCode: 'ru',
          query: any(named: 'query'),
          cursor: any(named: 'cursor'),
        ),
      ).thenAnswer((inv) async {
        final q = inv.namedArguments[#query] as ProductQuery;
        final cursor = inv.namedArguments[#cursor] as String?;
        return right(samplePageFor('ru', q, cursor: cursor));
      });
    });

    CategoryProductsBloc build() =>
        CategoryProductsBloc(getCategory, getProducts);

    Future<void> start(CategoryProductsBloc bloc) async {
      bloc.add(
        const CategoryProductsEvent.started(languageCode: 'ru', slug: 'shoes'),
      );
      await bloc.stream.firstWhere((s) => s.status == ProductsStatus.idle);
    }

    test('loads the category and its first page', () async {
      final bloc = build();
      await start(bloc);
      expect(bloc.state.category, category);
      expect(bloc.state.items, first.items);
      expect(bloc.state.total, first.total);
      expect(bloc.state.banner, isNotNull);
      await bloc.close();
    });

    test('a promotion loads its products without a category', () async {
      final bloc = build()
        ..add(
          const CategoryProductsEvent.started(
            languageCode: 'ru',
            slug: '',
            promoSlug: 'black-friday',
          ),
        );
      await bloc.stream.firstWhere((s) => s.status == ProductsStatus.idle);
      expect(bloc.state.query.promoSlug, 'black-friday');
      expect(bloc.state.items, isNotEmpty);
      // Black Friday takes discounted products only.
      expect(bloc.state.items.every((p) => p.oldPrice != null), isTrue);
      verifyNever(
        () => getCategory(
          languageCode: any(named: 'languageCode'),
          slug: any(named: 'slug'),
        ),
      );

      bloc.add(const CategoryProductsEvent.sortChanged(ProductSort.priceAsc));
      await bloc.stream.firstWhere(
        (s) =>
            s.status == ProductsStatus.idle &&
            s.query.sort == ProductSort.priceAsc,
      );
      expect(bloc.state.query.promoSlug, 'black-friday');
      await bloc.close();
    });

    test('an unknown slug ends in notFound without loading products', () async {
      when(
        () => getCategory(languageCode: 'ru', slug: 'gone'),
      ).thenAnswer((_) async => right(null));
      final bloc = build()
        ..add(
          const CategoryProductsEvent.started(languageCode: 'ru', slug: 'gone'),
        );
      await bloc.stream.firstWhere((s) => s.status == ProductsStatus.notFound);
      verifyNever(
        () => getProducts(
          languageCode: any(named: 'languageCode'),
          query: any(named: 'query'),
        ),
      );
      await bloc.close();
    });

    test('next page appends; a second request meanwhile is dropped', () async {
      final bloc = build();
      await start(bloc);
      bloc
        ..add(const CategoryProductsEvent.nextPageRequested())
        ..add(const CategoryProductsEvent.nextPageRequested());
      await bloc.stream.firstWhere(
        (s) =>
            s.status == ProductsStatus.idle &&
            s.items.length > first.items.length,
      );
      expect(bloc.state.items, [...first.items, ...second.items]);
      verify(
        () => getProducts(
          languageCode: 'ru',
          query: query,
          cursor: first.nextCursor,
        ),
      ).called(1);
      await bloc.close();
    });

    test('a sort change reloads from the first page', () async {
      final bloc = build();
      await start(bloc);
      bloc.add(const CategoryProductsEvent.sortChanged(ProductSort.priceAsc));
      final state = await bloc.stream.firstWhere(
        (s) => s.status == ProductsStatus.idle,
      );
      final prices = state.items.map((p) => p.price).toList();
      expect(prices, orderedEquals([...prices]..sort()));
      expect(state.query.sort, ProductSort.priceAsc);
      await bloc.close();
    });

    test('a page answer from before a filter change is ignored', () async {
      final slowPage = Completer<Either<Failure, ProductListPage>>();
      final bloc = build();
      await start(bloc);
      when(
        () => getProducts(
          languageCode: 'ru',
          query: query,
          cursor: first.nextCursor,
        ),
      ).thenAnswer((_) => slowPage.future);

      bloc.add(const CategoryProductsEvent.nextPageRequested());
      await Future<void>.delayed(Duration.zero);
      const filters = AppliedFilters(price: PriceRange(max: 300));
      bloc.add(const CategoryProductsEvent.filtersApplied(filters));
      final filtered = await bloc.stream.firstWhere(
        (s) => s.status == ProductsStatus.idle && s.query.filters == filters,
      );
      slowPage.complete(right(second));
      await Future<void>.delayed(Duration.zero);

      expect(bloc.state.items, filtered.items);
      expect(bloc.state.items.every((p) => p.price <= 300), isTrue);
      await bloc.close();
    });
  });

  group('FiltersBloc', () {
    late _MockGetFacets getFacets;
    final facets = sampleFacets('ru', 'shoes');

    setUp(() {
      getFacets = _MockGetFacets();
      when(
        () => getFacets(
          languageCode: any(named: 'languageCode'),
          categorySlug: any(named: 'categorySlug'),
          filters: any(named: 'filters'),
        ),
      ).thenAnswer((_) async => right(facets));
    });

    blocTest<FiltersBloc, FiltersState>(
      'counts on open, then once per burst of changes',
      build: () => FiltersBloc(getFacets),
      act: (bloc) async {
        bloc.add(
          const FiltersEvent.started(
            languageCode: 'ru',
            categorySlug: 'shoes',
            applied: AppliedFilters(),
          ),
        );
        await Future<void>.delayed(Duration.zero);
        for (final max in [900, 800, 700]) {
          bloc.add(
            FiltersEvent.changed(AppliedFilters(price: PriceRange(max: max))),
          );
        }
      },
      wait: FiltersBloc.debounce * 2,
      verify: (bloc) {
        verify(
          () => getFacets(
            languageCode: 'ru',
            categorySlug: 'shoes',
            filters: any(named: 'filters'),
          ),
        ).called(2);
        expect(bloc.state.draft.price.max, 700);
        expect(bloc.state.isCounting, isFalse);
        expect(bloc.state.total, facets.total);
        expect(bloc.state.facets, isA<List<Facet>>());
      },
    );

    blocTest<FiltersBloc, FiltersState>(
      'a failed count keeps the draft and reports the failure',
      setUp: () => when(
        () => getFacets(
          languageCode: any(named: 'languageCode'),
          categorySlug: any(named: 'categorySlug'),
          filters: any(named: 'filters'),
        ),
      ).thenAnswer((_) async => left(const NetworkFailure())),
      build: () => FiltersBloc(getFacets),
      act: (bloc) => bloc.add(
        const FiltersEvent.started(
          languageCode: 'ru',
          categorySlug: 'shoes',
          applied: AppliedFilters(price: PriceRange(min: 10)),
        ),
      ),
      expect: () => const [
        FiltersState(draft: AppliedFilters(price: PriceRange(min: 10))),
        FiltersState(
          draft: AppliedFilters(price: PriceRange(min: 10)),
          isCounting: false,
          failure: NetworkFailure(),
        ),
      ],
    );
  });
}
