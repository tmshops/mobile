import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/app/router/app_router.dart';
import 'package:tmshop/app/router/app_routes.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/features/catalog/domain/entities/product_list_page.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_products_use_case.dart';
import 'package:tmshop/features/catalog/domain/usecases/get_category_use_case.dart';
import 'package:tmshop/features/catalog/presentation/bloc/category_products_bloc.dart';
import 'package:tmshop/features/search/domain/entities/search_hints.dart';
import 'package:tmshop/features/search/domain/repositories/search_repository.dart';
import 'package:tmshop/features/search/presentation/bloc/search_bloc.dart';

import '../../helpers/mock_blocs.dart';

class _MockSearchRepository extends Mock implements SearchRepository {}

class _MockGetCategory extends Mock implements GetCategoryUseCase {}

class _MockGetProducts extends Mock implements GetCategoryProductsUseCase {}

const _product = ProductSummary(
  id: 'shoes-men-sneakers-1',
  title: 'Кроссовки Xiaomi, модель K11',
  imageUrl: '',
  price: 640,
);

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  late _MockGetProducts getProducts;

  setUpAll(() => registerFallbackValue(const ProductQuery(categorySlug: '')));

  setUp(() {
    final search = _MockSearchRepository();
    when(search.history).thenAnswer((_) async => right(const []));
    when(
      () => search.popular(any()),
    ).thenAnswer((_) async => right(const ['Кроссовки']));
    when(
      () => search.hints(any(), any()),
    ).thenAnswer((_) async => right(const SearchHints()));
    when(
      () => search.remember(any()),
    ).thenAnswer((_) async => right(const ['Кроссовки']));
    getProducts = _MockGetProducts();
    when(
      () => getProducts(
        languageCode: any(named: 'languageCode'),
        query: any(named: 'query'),
        cursor: any(named: 'cursor'),
      ),
    ).thenAnswer(
      (_) async => right(const ProductListPage(items: [_product], total: 1)),
    );
    getIt
      ..registerFactory(() => SearchBloc(search))
      ..registerFactory(
        () => CategoryProductsBloc(_MockGetCategory(), getProducts),
      );
  });

  tearDown(getIt.reset);

  Future<void> frames(WidgetTester tester) async {
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
  }

  testWidgets('a popular query opens its results, the bar edits it', (
    tester,
  ) async {
    final cubits = GlobalCubits();
    final GoRouter router = createAppRouter(
      auth: cubits.auth,
      initialLocation: AppRoutes.search,
    );
    addTearDown(router.dispose);
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: cubits.providers,
        child: MaterialApp.router(
          theme: AppTheme.light(),
          locale: AppLocales.ru,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          routerConfig: router,
        ),
      ),
    );
    await frames(tester);
    expect(find.text(ru.searchPopular), findsOneWidget);

    await tester.tap(find.text('Кроссовки'));
    await frames(tester);
    expect(find.text(_product.title), findsOneWidget);
    final query =
        verify(
              () => getProducts(
                languageCode: 'ru',
                query: captureAny(named: 'query'),
                cursor: any(named: 'cursor'),
              ),
            ).captured.single
            as ProductQuery;
    expect(query.searchText, 'Кроссовки');

    await tester.tap(find.byType(TextField).first);
    await frames(tester);
    // Back on the search screen with the query still in the field.
    expect(find.text(ru.searchFor('Кроссовки')), findsOneWidget);
  });
}
