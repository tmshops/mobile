import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/product/presentation/product_summary_tile.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';
import 'package:tmshop/features/catalog/presentation/bloc/category_products_bloc.dart';
import 'package:tmshop/features/catalog/presentation/widgets/category_products_view.dart';

import '../../../../helpers/catalog_fixtures.dart';
import '../../../../helpers/pump_view.dart';

class _MockProductsBloc
    extends MockBloc<CategoryProductsEvent, CategoryProductsState>
    implements CategoryProductsBloc {}

void main() {
  late _MockProductsBloc bloc;
  late List<String> openedCategories;

  setUp(() {
    bloc = _MockProductsBloc();
    openedCategories = [];
  });

  CategoryProductsState loaded(
    String lang, {
    String slug = 'clothes',
    AppliedFilters filters = const AppliedFilters(),
  }) {
    final query = ProductQuery(categorySlug: slug, filters: filters);
    final page = samplePageFor(lang, query);
    return CategoryProductsState(
      query: query,
      category: sampleTree(lang).find(slug),
      items: page.items,
      total: page.total,
      nextCursor: page.nextCursor,
      banner: page.banner,
      status: ProductsStatus.idle,
    );
  }

  Future<void> pump(
    WidgetTester tester,
    CategoryProductsState state, {
    Locale locale = AppLocales.ru,
    double textScale = 1,
    double width = 360,
  }) async {
    when(() => bloc.state).thenReturn(state);
    await pumpView(
      tester,
      CategoryProductsView(
        onOpenCategory: openedCategories.add,
        onOpenProduct: (_) {},
        onOpenCatalog: () {},
      ),
      providers: [BlocProvider<CategoryProductsBloc>.value(value: bloc)],
      locale: locale,
      textScale: textScale,
      width: width,
    );
  }

  testWidgets('with a header: no app bar, header first, filters by promo', (
    tester,
  ) async {
    const query = ProductQuery(categorySlug: '', promoSlug: 'black-friday');
    final page = samplePageFor('ru', query);
    when(() => bloc.state).thenReturn(
      CategoryProductsState(
        query: query,
        items: page.items,
        total: page.total,
        status: ProductsStatus.idle,
      ),
    );
    await pumpView(
      tester,
      CategoryProductsView(
        header: const SliverToBoxAdapter(child: Text('PROMO HEADER')),
        onOpenCategory: openedCategories.add,
        onOpenProduct: (_) {},
        onOpenCatalog: () {},
      ),
      providers: [BlocProvider<CategoryProductsBloc>.value(value: bloc)],
    );
    expect(find.byType(AppBar), findsNothing);
    expect(find.text('PROMO HEADER'), findsOneWidget);
    expect(find.byType(ProductSummaryTile), findsWidgets);
  });

  testWidgets('shows title, subcategory chips, count and the grid', (
    tester,
  ) async {
    final state = loaded('ru');
    await pump(tester, state);
    expect(find.text('Одежда'), findsOneWidget);
    expect(find.text('Женщинам'), findsOneWidget);
    expect(find.textContaining('товар'), findsWidgets);
    expect(find.byType(ProductSummaryTile), findsWidgets);

    await tester.tap(find.text('Мужчинам'));
    expect(openedCategories, ['clothes-men']);
  });

  testWidgets('grid / list toggle switches to rows', (tester) async {
    await pump(tester, loaded('ru'));
    await tester.tap(find.byTooltip('Показать списком'));
    await tester.pump();
    expect(find.byType(ProductSummaryRow), findsWidgets);
    expect(find.byType(ProductSummaryTile), findsNothing);
  });

  testWidgets('active filter chips remove one filter or all', (tester) async {
    final filters = const AppliedFilters(price: PriceRange(max: 900))
        .toggleChoice(
          'source',
          const FilterChoice(value: 'tmall', label: 'Tmall'),
        );
    await pump(tester, loaded('ru', filters: filters));

    // Two filters → badge «2» on the Filters button.
    expect(find.bySemanticsLabel('Фильтры, выбрано: 2'), findsOneWidget);
    expect(find.text('до 900 TMT'), findsOneWidget);

    await tester.tap(
      find.descendant(
        of: find.widgetWithText(RemovableChip, 'Tmall'),
        matching: find.byType(Icon),
      ),
    );
    verify(
      () => bloc.add(
        const CategoryProductsEvent.filtersApplied(
          AppliedFilters(price: PriceRange(max: 900)),
        ),
      ),
    ).called(1);

    await tester.ensureVisible(find.text('Сбросить все'));
    await tester.tap(find.text('Сбросить все'));
    verify(
      () => bloc.add(
        const CategoryProductsEvent.filtersApplied(AppliedFilters()),
      ),
    ).called(1);
  });

  testWidgets('no results for filters offers to clear them', (tester) async {
    await pump(
      tester,
      loaded(
        'ru',
        filters: const AppliedFilters(price: PriceRange(max: 1)),
      ).copyWith(items: const [], total: 0, nextCursor: null),
    );
    expect(find.text('Ничего не нашлось'), findsOneWidget);
  });

  testWidgets('first-page failure shows the error with retry', (tester) async {
    await pump(
      tester,
      const CategoryProductsState(
        query: ProductQuery(categorySlug: 'clothes'),
        status: ProductsStatus.failure,
        failure: ServerFailure(message: 'Технические работы'),
      ),
    );
    expect(find.text('Технические работы'), findsOneWidget);
    await tester.tap(find.text('Повторить'));
    verify(() => bloc.add(const CategoryProductsEvent.refreshed())).called(1);
  });

  testWidgets('an unknown category says so', (tester) async {
    await pump(
      tester,
      const CategoryProductsState(
        query: ProductQuery(categorySlug: 'gone'),
        status: ProductsStatus.notFound,
      ),
    );
    expect(find.text('Категория не найдена'), findsOneWidget);
  });

  for (final width in [360.0, 412.0]) {
    testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp, both views', (
      tester,
    ) async {
      final filters =
          const AppliedFilters(price: PriceRange(min: 100, max: 2500))
              .toggleChoice(
                'delivery',
                const FilterChoice(
                  value: 'express',
                  label: 'Ekspress · 7–10 gün',
                ),
              )
              .setToggle('discount', 'Arzanladyşly', on: true);
      await pump(
        tester,
        loaded(
          'tk',
          filters: filters,
        ).copyWith(status: ProductsStatus.loadingMore),
        locale: AppLocales.tk,
        textScale: 1.3,
        width: width,
      );
      await scrollThrough(tester, find.byType(CustomScrollView));
      await tester.tap(find.byTooltip('Sanaw görnüşinde görkez'));
      await tester.pump();
      await scrollThrough(tester, find.byType(CustomScrollView));
      await tester.pumpWidget(const SizedBox());
    });
  }
}
