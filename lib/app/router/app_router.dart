import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_cubit.dart';
import '../../core/l10n/l10n.dart';
import '../../core/navigation/stream_listenable.dart';
import '../../core/navigation/tab_reselect_scope.dart';
import '../../core/product/domain/product_summary.dart';
import '../../core/theme/theme.dart';
import '../../core/widgets/widgets.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/cart/presentation/pages/cart_page.dart';
import '../../features/catalog/presentation/pages/catalog_page.dart';
import '../../features/checkout/domain/entities/checkout.dart';
import '../../features/checkout/presentation/pages/checkout_page.dart';
import '../../features/checkout/presentation/pages/payment_page.dart';
import '../../features/catalog/presentation/pages/category_products_page.dart';
import '../../features/favourites/presentation/pages/favourites_page.dart';
import '../../features/favourites/presentation/pages/price_alerts_page.dart';
import '../../features/favourites/presentation/pages/viewed_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/kit/presentation/pages/kit_page.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/orders/presentation/pages/order_page.dart';
import '../../features/orders/presentation/pages/orders_page.dart';
import '../../features/orders/presentation/pages/parcel_page.dart';
import '../../features/orders/presentation/pages/parcels_page.dart';
import '../../features/product/presentation/pages/product_page.dart';
import '../../features/profile/presentation/pages/profile_edit_page.dart';
import '../../features/promotions/presentation/pages/promotions_page.dart';
import '../../features/promotions/presentation/widgets/promo_header.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/reviews/presentation/pages/reviews_pages.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/wallet/presentation/bloc/wallet_payment_cubit.dart';
import '../../features/wallet/presentation/pages/balance_page.dart';
import '../../features/wallet/presentation/pages/surcharges_page.dart';
import '../../features/wallet/presentation/pages/wallet_payment_page.dart';
import '../../features/wallet/presentation/widgets/surcharges_view.dart';
import '../shell/app_shell.dart';
import '../shell/app_tab.dart';
import 'app_routes.dart';
import 'home_navigation.dart';

/// Builds the app router: five tabs, each with its own stack (TZ §4).
///
/// Full-screen routes (product, checkout, video feed, …) are added as
/// top-level routes so they open over the bottom menu.
GoRouter createAppRouter({
  required AuthCubit auth,
  String initialLocation = AppRoutes.home,
}) {
  final rootKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  // One signal per tab; they live as long as the router.
  final reselect = [for (final _ in AppTab.values) TabReselectSignal()];

  return GoRouter(
    navigatorKey: rootKey,
    initialLocation: initialLocation,
    refreshListenable: StreamListenable(auth.stream),
    redirect: (context, state) => _guard(auth.state, state.uri),
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
              onCheckout: (promo) =>
                  context.push(AppRoutes.checkoutWith(promo)),
              onComingSoon: () => showComingSoon(context),
            ),
          ),
          _branch(
            AppRoutes.favourites,
            (context) => FavouritesPage(
              onOpenProduct: (product) => _openProduct(context, product),
              onOpenCatalog: () => context.go(AppRoutes.catalog),
              onOpenCart: () => context.go(AppRoutes.cart),
              onLogin: () =>
                  context.push(AppRoutes.loginFrom(AppRoutes.favourites)),
            ),
          ),
          _branch(
            AppRoutes.profile,
            (context) => ProfilePage(
              onLogin: () =>
                  context.push(AppRoutes.loginFrom(AppRoutes.profile)),
              onOpenOrders: () => context.push(AppRoutes.orders),
              onOpenParcels: () => context.push(AppRoutes.parcels),
              onOpenViewed: () => context.push(AppRoutes.viewed),
              onOpenPriceAlerts: () => context.push(AppRoutes.priceAlerts),
              onOpenBalance: () => context.push(AppRoutes.balance),
              onOpenSurcharges: () => context.push(AppRoutes.surcharges),
              onOpenSettings: () => context.push(AppRoutes.settings),
              onEditProfile: () => context.push(AppRoutes.profileEdit),
              onOpenNotifications: () => context.push(AppRoutes.notifications),
              onOpenMyReviews: () => context.push(AppRoutes.myReviews),
              onComingSoon: () => showComingSoon(context),
            ),
            routes: _profileRoutes,
          ),
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
            // Plain login: back to this page afterwards.
            onLogin: () => context.push(AppRoutes.login),
            onAllReviews: () => context.push(AppRoutes.productReviews(id)),
            onComingSoon: () => showComingSoon(context),
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.productReviewsPath,
            builder: (context, state) => ProductReviewsPage(
              productId: state.pathParameters[AppRoutes.idParam] ?? '',
            ),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.writeReview,
        builder: (context, state) => WriteReviewPage(
          orderNumber: state.uri.queryParameters[AppRoutes.orderParam] ?? '',
          itemId: state.uri.queryParameters[AppRoutes.itemParam] ?? '',
          onDone: () => context.pop(),
        ),
      ),
      GoRoute(
        path: AppRoutes.checkout,
        builder: (context, state) => CheckoutPage(
          promoCode: state.uri.queryParameters[AppRoutes.promoParam],
          // Replace checkout: back from the result must not reopen it.
          onPlaced: (order) => context.pushReplacement(
            AppRoutes.payment(order.number),
            extra: order,
          ),
          onReadOffer: () => showComingSoon(context),
        ),
      ),
      GoRoute(
        path: AppRoutes.paymentPath,
        builder: (context, state) => switch (state.extra) {
          final PlacedOrder order => PaymentPage(
            order: order,
            onHome: () => context.go(AppRoutes.home),
            onOrder: () => context.go(AppRoutes.order(order.number)),
          ),
          // Opened from a link (SMS /pay/…): needs the orders API.
          _ => const _ComingSoonPage(),
        },
      ),
      GoRoute(
        path: AppRoutes.promotions,
        builder: (context, _) => PromotionsPage(
          onOpen: (slug) => context.push(AppRoutes.promo(slug)),
        ),
      ),
      GoRoute(
        path: AppRoutes.promoPath,
        builder: (context, state) {
          final slug = state.pathParameters[AppRoutes.slugParam] ?? '';
          // The promotions feature draws the top, the catalog the products.
          return PromoProductsPage(
            key: ValueKey(slug),
            promoSlug: slug,
            header: PromoHeader(slug: slug),
            onOpenProduct: (product) => _openProduct(context, product),
            onOpenCatalog: () => context.go(AppRoutes.catalog),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.notifications,
        builder: (context, _) =>
            NotificationsPage(onOpen: (link) => openAppLink(context, link)),
      ),
      GoRoute(
        path: AppRoutes.walletPay,
        builder: (context, state) => switch (state.extra) {
          final WalletPayment payment => WalletPaymentPage(
            payment: payment,
            onDone: () => context.pop(),
          ),
          // Nothing to check without the payment (a restored deep link).
          _ => const _ComingSoonPage(),
        },
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => LoginPage(
          // Back where the customer came from: the guarded route; without
          // one, the screen under login, or Profile.
          onDone: () {
            final from = state.uri.queryParameters[AppRoutes.fromParam];
            if (from != null) return context.go(from);
            if (context.canPop()) return context.pop();
            context.go(AppRoutes.profile);
          },
          onReadPolicy: () => showComingSoon(context),
          onGoogle: () => showComingSoon(context),
        ),
      ),
      if (kDebugMode)
        GoRoute(path: AppRoutes.kit, builder: (_, _) => const KitPage()),
    ],
  );
}

/// Website links and the login guard (TZ §4). A guest sent to login comes
/// back to the same route afterwards.
String? _guard(AuthState auth, Uri uri) {
  final path = uri.path;
  if (path.startsWith(AppRoutes.accountPrefix)) {
    return AppRoutes.profile + path.substring(AppRoutes.accountPrefix.length);
  }
  final location = uri.toString();
  if (auth is AuthGuest && AppRoutes.needsLogin(location)) {
    return AppRoutes.loginFrom(location);
  }
  return null;
}

/// Orders, parcels, money, viewed and price alerts inside the Profile tab.
final _profileRoutes = <RouteBase>[
  GoRoute(
    path: AppRoutes.myReviewsPath,
    builder: (context, _) => MyReviewsPage(
      onOpenProduct: (id) => context.push(AppRoutes.product(id)),
    ),
  ),
  GoRoute(
    path: AppRoutes.profileEditPath,
    builder: (context, _) => ProfileEditPage(onSaved: () => context.pop()),
  ),
  GoRoute(
    path: AppRoutes.settingsPath,
    builder: (context, _) => SettingsPage(
      onDeleteAccount: () => context.push(AppRoutes.deleteAccount),
      // Back to the Profile root first: once signed out, every account
      // route would redirect to login.
      onSignedOut: () => context.go(AppRoutes.profile),
      onGoogle: () => showComingSoon(context),
    ),
    routes: [
      GoRoute(
        path: AppRoutes.deleteAccountPath,
        builder: (context, _) => DeleteAccountPage(
          onPayDebt: () => context.push(AppRoutes.surcharges),
          onKeep: () => context.pop(),
          onDeleted: () => context.go(AppRoutes.profile),
        ),
      ),
    ],
  ),
  GoRoute(
    path: AppRoutes.balancePath,
    builder: (context, _) => BalancePage(
      onPayDebt: () => context.push(AppRoutes.surcharges),
      onOpenOrder: (n) => context.push(AppRoutes.order(n)),
      onOpenPayment: (payment) => _openWalletPayment(context, payment),
    ),
  ),
  GoRoute(
    path: AppRoutes.surchargesPath,
    builder: (context, state) {
      final query = state.uri.queryParameters;
      return SurchargesPage(
        initialTab: query[AppRoutes.tabParam] == AppRoutes.refundsTab
            ? SurchargesTab.refunds
            : SurchargesTab.due,
        payParcel: query[AppRoutes.parcelPayParam],
        onOpenOrder: (n) => context.push(AppRoutes.order(n)),
        onOpenParcel: (n) => context.push(AppRoutes.parcel(n)),
        onOpenPayment: (payment) => _openWalletPayment(context, payment),
      );
    },
  ),
  GoRoute(
    path: AppRoutes.viewedPath,
    builder: (context, _) => ViewedPage(
      onOpenProduct: (product) => _openProduct(context, product),
      onOpenCatalog: () => context.go(AppRoutes.catalog),
    ),
  ),
  GoRoute(
    path: AppRoutes.priceAlertsPath,
    builder: (context, _) => PriceAlertsPage(
      onOpenProduct: (product) => _openProduct(context, product),
      onOpenCatalog: () => context.go(AppRoutes.catalog),
    ),
  ),
  GoRoute(
    path: AppRoutes.ordersPath,
    builder: (context, _) => OrdersPage(
      onOpenOrder: (number) => context.push(AppRoutes.order(number)),
      onOpenCatalog: () => context.go(AppRoutes.catalog),
      onOpenCart: () => context.go(AppRoutes.cart),
    ),
    routes: [
      GoRoute(
        path: AppRoutes.orderPath,
        builder: (context, state) {
          final number = state.pathParameters[AppRoutes.orderParam] ?? '';
          return OrderPage(
            key: ValueKey(number),
            number: number,
            onOpenParcel: (n) => context.push(AppRoutes.parcel(n)),
            onOpenProduct: (id) => context.push(AppRoutes.product(id)),
            onOpenCart: () => context.go(AppRoutes.cart),
            onWriteReview: (itemId) =>
                context.push<void>(AppRoutes.writeReviewFor(number, itemId)),
            // No payment id yet: the payment page starts a new one.
            onPay: (order) => context.push(
              AppRoutes.payment(order.number),
              extra: PlacedOrder(
                number: order.number,
                payNow: order.money.due,
                payment: PaymentMethod.card,
              ),
            ),
          );
        },
      ),
    ],
  ),
  GoRoute(
    path: AppRoutes.parcelsPath,
    builder: (context, _) => ParcelsPage(
      onOpenParcel: (number) => context.push(AppRoutes.parcel(number)),
    ),
    routes: [
      GoRoute(
        path: AppRoutes.parcelPath,
        builder: (context, state) {
          final number = state.pathParameters[AppRoutes.parcelParam] ?? '';
          return ParcelPage(
            key: ValueKey(number),
            number: number,
            onOpenOrder: (n) => context.push(AppRoutes.order(n)),
            onPaySurcharge: () =>
                context.push(AppRoutes.surchargesWith(payParcel: number)),
          );
        },
      ),
    ],
  ),
];

Future<void> _openWalletPayment(BuildContext context, WalletPayment payment) =>
    context.push<void>(AppRoutes.walletPay, extra: payment);

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

/// Placeholder for links whose screen needs features not built yet.
class _ComingSoonPage extends StatelessWidget {
  const _ComingSoonPage();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: Center(
      child: EmptyState(icon: AppIcons.package, title: context.l10n.comingSoon),
    ),
  );
}
