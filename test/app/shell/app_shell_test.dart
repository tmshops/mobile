import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/app/router/app_router.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/cart/presentation/bloc/cart_quote_bloc.dart';
import 'package:tmshop/features/catalog/domain/entities/product_query.dart';
import 'package:tmshop/features/catalog/presentation/bloc/category_products_bloc.dart';
import 'package:tmshop/features/catalog/presentation/bloc/category_tree_bloc.dart';
import 'package:tmshop/features/catalog/presentation/widgets/catalog_view.dart';
import 'package:tmshop/features/catalog/presentation/widgets/category_products_view.dart';
import 'package:tmshop/features/home/presentation/bloc/for_you_bloc.dart';
import 'package:tmshop/features/home/presentation/bloc/home_bloc.dart';
import 'package:tmshop/features/home/presentation/widgets/home_view.dart';
import 'package:tmshop/features/kit/presentation/pages/kit_page.dart';

import '../../helpers/catalog_fixtures.dart';
import '../../helpers/home_fixtures.dart';
import '../../helpers/mock_blocs.dart';

class _MockTreeBloc extends MockBloc<CategoryTreeEvent, CategoryTreeState>
    implements CategoryTreeBloc {}

class _MockProductsBloc
    extends MockBloc<CategoryProductsEvent, CategoryProductsState>
    implements CategoryProductsBloc {}

class _MockCartQuoteBloc extends MockBloc<CartQuoteEvent, CartQuoteState>
    implements CartQuoteBloc {}

void main() {
  late GoRouter router;

  setUp(() {
    final home = MockHomeBloc();
    when(() => home.state).thenReturn(
      HomeState.loaded(content: sampleHome('ru').copyWith(sections: const [])),
    );
    final forYou = MockForYouBloc();
    when(() => forYou.state).thenReturn(const ForYouState());
    final tree = _MockTreeBloc();
    when(
      () => tree.state,
    ).thenReturn(CategoryTreeState.loaded(tree: sampleTree('ru')));
    final products = _MockProductsBloc();
    when(() => products.state).thenReturn(
      const CategoryProductsState(
        query: ProductQuery(categorySlug: 'clothes'),
        status: ProductsStatus.notFound,
      ),
    );
    final cartQuote = _MockCartQuoteBloc();
    when(() => cartQuote.state).thenReturn(const CartQuoteState());
    getIt
      ..registerFactory<HomeBloc>(() => home)
      ..registerFactory<CartQuoteBloc>(() => cartQuote)
      ..registerFactory<ForYouBloc>(() => forYou)
      ..registerFactory<CategoryTreeBloc>(() => tree)
      ..registerFactory<CategoryProductsBloc>(() => products);
  });

  tearDown(getIt.reset);

  /// Catalog images shimmer forever, so time is stepped, not settled.
  Future<void> settle(WidgetTester tester) async {
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
  }

  Future<void> pumpShell(WidgetTester tester) async {
    tester.view.physicalSize =
        const Size(360, 800) * tester.view.devicePixelRatio;
    addTearDown(tester.view.resetPhysicalSize);
    router = createAppRouter();
    addTearDown(router.dispose);
    final cubits = GlobalCubits();
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [...cubits.providers],
        child: MaterialApp.router(
          theme: AppTheme.light(),
          locale: AppLocales.ru,
          localizationsDelegates: AppLocales.delegates,
          supportedLocales: AppLocales.supported,
          routerConfig: router,
        ),
      ),
    );
    await settle(tester);
  }

  bool isVisible(Type type) =>
      find.byType(type, skipOffstage: true).evaluate().isNotEmpty;

  String? visibleTabTitle(WidgetTester tester) {
    final roots = find.byType(RootTabPage, skipOffstage: true);
    if (roots.evaluate().isEmpty) return null;
    return tester.widget<RootTabPage>(roots).title;
  }

  Future<void> tapTab(WidgetTester tester, String label) async {
    await tester.tap(
      find.descendant(of: find.byType(AppNavBar), matching: find.text(label)),
    );
    await settle(tester);
  }

  /// Unmounts so shimmer and other timers stop before the test ends.
  Future<void> unmount(WidgetTester tester) =>
      tester.pumpWidget(const SizedBox());

  testWidgets('starts on Home and switches tabs', (tester) async {
    await pumpShell(tester);
    expect(isVisible(HomeView), isTrue);

    await tapTab(tester, 'Каталог');
    expect(isVisible(CatalogView), isTrue);
    expect(router.state.uri.path, '/catalog');

    await tapTab(tester, 'Профиль');
    expect(visibleTabTitle(tester), 'Профиль');
    await unmount(tester);
  });

  testWidgets('system back on another tab returns to Home', (tester) async {
    await pumpShell(tester);
    await tapTab(tester, 'Корзина');

    final handled = await tester.binding.handlePopRoute();
    await settle(tester);
    expect(handled, isTrue);
    expect(isVisible(HomeView), isTrue);
    await unmount(tester);
  });

  testWidgets('«В каталог» on Home switches to the Catalog tab', (
    tester,
  ) async {
    await pumpShell(tester);
    await tester.tap(find.text('В каталог'));
    await settle(tester);
    expect(isVisible(CatalogView), isTrue);
    await unmount(tester);
  });

  testWidgets('a category opens its product list inside the Catalog tab', (
    tester,
  ) async {
    await pumpShell(tester);
    await tapTab(tester, 'Каталог');
    await tester.tap(find.text('Все товары').first);
    await settle(tester);

    expect(router.state.uri.path, '/catalog/category/clothes');
    expect(isVisible(CategoryProductsView), isTrue);
    // The bottom menu stays visible over the product list.
    expect(isVisible(AppNavBar), isTrue);

    // Re-tapping the active tab returns to the tree.
    await tapTab(tester, 'Каталог');
    expect(router.state.uri.path, '/catalog');
    await unmount(tester);
  });

  testWidgets('Kit opens over the menu in debug builds', (tester) async {
    await pumpShell(tester);
    await tester.tap(find.byTooltip('Kit'));
    await settle(tester);
    expect(find.byType(KitPage), findsOneWidget);
    expect(router.state.uri.path, '/kit');
    await unmount(tester);
  });
}
