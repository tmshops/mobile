import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../core/navigation/tab_reselect_scope.dart';
import '../../core/product/domain/product_summary.dart';
import '../../features/cart/presentation/pages/cart_page.dart';
import '../../features/catalog/presentation/pages/catalog_page.dart';
import '../../features/catalog/presentation/pages/category_products_page.dart';
import '../../features/favourites/presentation/pages/favourites_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/kit/presentation/pages/kit_page.dart';
import '../../features/product/presentation/pages/product_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../shell/app_shell.dart';
import '../shell/app_tab.dart';
import 'app_routes.dart';
import 'home_navigation.dart';

/// Builds the app router: five tabs, each with its own stack (TZ §4).
///
/// Full-screen routes (product, checkout, video feed, …) are added as
/// top-level routes so they open over the bottom menu.
GoRouter createAppRouter({String initialLocation = AppRoutes.home}) {
  final rootKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  // One signal per tab; they live as long as the router.
  final reselect = [for (final _ in AppTab.values) TabReselectSignal()];

  return GoRouter(
    navigatorKey: rootKey,
    initialLocation: initialLocation,
    routes: [
      StatefulShellRoute(
        builder: (context, state, shell) =>
            AppShell(navigationShell: shell, reselectSignals: reselect),
        navigatorContainerBuilder: (context, shell, children) => BranchStack(
          currentIndex: shell.currentIndex,
          reselectSignals: reselect,
          children: children,
        ),
        branches: [
          _branch(
            AppRoutes.home,
            (context) => HomePage(
              onNavigate: (destination) =>
                  openHomeDestination(context, destination),
              onOpenKit: kDebugMode ? () => context.push(AppRoutes.kit) : null,
            ),
          ),
          _branch(
            AppRoutes.catalog,
            (context) => CatalogPage(
              onOpenCategory: (slug) =>
                  context.push(AppRoutes.categoryProducts(slug)),
            ),
            routes: [
              GoRoute(
                path: AppRoutes.categoryProductsPath,
                builder: (context, state) => CategoryProductsPage(
                  // Key by slug so a sibling chip opens a fresh page.
                  key: ValueKey(state.pathParameters[AppRoutes.slugParam]),
                  slug: state.pathParameters[AppRoutes.slugParam] ?? '',
                  onOpenCategory: (slug) =>
                      context.push(AppRoutes.categoryProducts(slug)),
                  onOpenProduct: (product) => _openProduct(context, product),
                  onOpenCatalog: () => context.go(AppRoutes.catalog),
                ),
              ),
            ],
          ),
          _branch(
            AppRoutes.cart,
            (context) => CartPage(
              onOpenProduct: (id) => context.push(AppRoutes.product(id)),
              onOpenCatalog: () => context.go(AppRoutes.catalog),
              onComingSoon: () => showComingSoon(context),
            ),
          ),
          _branch(AppRoutes.favourites, (_) => const FavouritesPage()),
          _branch(AppRoutes.profile, (_) => const ProfilePage()),
        ],
      ),
      // Top-level routes sit on the root navigator, over the menu.
      GoRoute(
        path: AppRoutes.productPath,
        builder: (context, state) {
          final id = state.pathParameters[AppRoutes.idParam] ?? '';
          return ProductPage(
            // A new id (from «Похожие») is a new page, not a reused one.
            key: ValueKey(id),
            id: id,
            preview: switch (state.extra) {
              final ProductSummary p when p.id == id => p,
              _ => null,
            },
            onOpenProduct: (product) => _openProduct(context, product),
            // `go` leaves the product page and switches to the Cart tab.
            onOpenCart: () => context.go(AppRoutes.cart),
            onComingSoon: () => showComingSoon(context),
          );
        },
      ),
      if (kDebugMode)
        GoRoute(path: AppRoutes.kit, builder: (_, _) => const KitPage()),
    ],
  );
}

void _openProduct(BuildContext context, ProductSummary product) =>
    context.push(AppRoutes.product(product.id), extra: product);

StatefulShellBranch _branch(
  String path,
  WidgetBuilder page, {
  List<RouteBase> routes = const [],
}) => StatefulShellBranch(
  routes: [
    GoRoute(path: path, builder: (context, _) => page(context), routes: routes),
  ],
);
