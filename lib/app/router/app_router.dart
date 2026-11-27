import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/auth/auth_cubit.dart';
import '../../core/cart/cart_item.dart';
import '../../core/l10n/l10n.dart';
import '../../core/navigation/stream_listenable.dart';
import '../../core/navigation/tab_reselect_scope.dart';
import '../../core/product/domain/product_summary.dart';
import '../../core/theme/theme.dart';
import '../../core/utils/external_links.dart';
import '../../core/widgets/widgets.dart';
import '../../features/addresses/domain/entities/delivery_address.dart';
import '../../features/addresses/presentation/pages/address_pages.dart';
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
import '../../features/info/domain/entities/info.dart';
import '../../features/info/presentation/pages/info_pages.dart';
import '../../features/kit/presentation/pages/kit_page.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/orders/presentation/pages/order_page.dart';
import '../../features/orders/domain/entities/orders_feed.dart';
import '../../features/orders/presentation/pages/orders_feed_page.dart';
import '../../features/orders/presentation/pages/orders_page.dart';
import '../../features/orders/presentation/widgets/orders_feed_view.dart';
import '../../features/orders/presentation/widgets/orders_overview_section.dart';
import '../../features/orders/presentation/pages/parcel_page.dart';
import '../../features/orders/presentation/pages/parcels_page.dart';
import '../../features/product/presentation/pages/product_page.dart';
import '../../features/profile/presentation/pages/profile_edit_page.dart';
import '../../features/promotions/presentation/pages/promotions_page.dart';
import '../../features/quick_order/presentation/widgets/quick_order_sheet.dart';
import '../../features/promotions/presentation/widgets/promo_header.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/reviews/presentation/pages/reviews_pages.dart';
import '../../features/photo_search/domain/entities/photo_search.dart';
import '../../features/photo_search/presentation/pages/photo_camera_page.dart';
import '../../features/photo_search/presentation/pages/photo_crop_page.dart';
import '../../features/photo_search/presentation/pages/photo_results_page.dart';
import '../../features/link_import/presentation/pages/link_import_page.dart';
import '../../features/search/presentation/pages/search_page.dart';
import '../../features/search/presentation/widgets/search_results_parts.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/config/presentation/bloc/app_config_cubit.dart';
import '../../features/support/domain/entities/chat.dart';
import '../../features/support/presentation/pages/find_request_page.dart';
import '../../features/support/presentation/pages/support_chat_page.dart';
import '../../features/support/presentation/widgets/chat_sheets.dart';
import '../../features/video_feed/presentation/pages/video_feed_page.dart';
import '../../features/wallet/presentation/bloc/wallet_payment_cubit.dart';
import '../../features/wholesale/presentation/pages/wholesale_pages.dart';
import '../../features/wallet/presentation/pages/balance_page.dart';
import '../../features/wallet/presentation/pages/surcharges_page.dart';
import '../../features/wallet/presentation/pages/wallet_payment_page.dart';
import '../../features/wallet/presentation/widgets/surcharges_view.dart';
import '../shell/app_shell.dart';
import '../shell/app_tab.dart';
import 'app_routes.dart';
import 'home_navigation.dart';
import 'not_found_page.dart';

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
    // Unknown links (TZ §4): «Не найдено» with a way home.
    errorBuilder: (context, _) =>
        NotFoundPage(onHome: () => context.go(AppRoutes.home)),
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
              onQuickOrder: (lines) => _quickOrder(context, lines),
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
              onOpenInfo: () => context.push(AppRoutes.info),
              onOpenSupport: () => context.push(AppRoutes.support),
              onOpenAddresses: () => context.push(AppRoutes.addresses),
              onOpenWholesale: () => context.push(switch (auth.state) {
                AuthSignedIn(:final profile) when profile.isWholesale =>
                  AppRoutes.wholesaleDocs,
                _ => AppRoutes.wholesale,
              }),
              onOpenProduct: (product) => _openProduct(context, product),
              ordersSection: OrdersOverviewSection(
                onOpenAll: () => context.push<void>(AppRoutes.orders),
                onOpenFilter: (filter) =>
                    context.push<void>(AppRoutes.ordersFeed(filter.name)),
                onOpenTracking: (update) =>
                    context.push<void>(switch (update.kind) {
                      FeedKind.order => AppRoutes.order(update.number),
                      FeedKind.parcel => AppRoutes.parcel(update.number),
                    }),
              ),
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
            onHome: () => context.go(AppRoutes.home),
            onOpenSeller: (sellerId, name) =>
                context.push(AppRoutes.sellerProducts(sellerId, name)),
            onQuickOrder: (line) => _quickOrder(context, [line]),
            onFindSimilar: (id, image) =>
                context.push(AppRoutes.photoResults(image, productId: id)),
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
          onReadOffer: () => _openInfo(context, InfoTopic.offer),
          onAddAddress: () => context.push<String>(AppRoutes.addressEditor),
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
          return ScopedProductsPage(
            key: ValueKey(slug),
            promoSlug: slug,
            header: PromoHeader(slug: slug),
            onOpenProduct: (product) => _openProduct(context, product),
            onOpenCatalog: () => context.go(AppRoutes.catalog),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.info,
        builder: (context, _) =>
            InfoMenuPage(onOpen: (topic) => _openInfo(context, topic)),
        routes: [
          GoRoute(
            path: AppRoutes.infoPagePath,
            builder: (context, state) {
              final slug = state.pathParameters[AppRoutes.topicParam] ?? '';
              final topic = InfoTopic.fromSlug(slug);
              if (topic == null) {
                return NotFoundPage(onHome: () => context.go(AppRoutes.home));
              }
              return InfoTopicPage(
                key: ValueKey(topic),
                topic: topic,
                onOpenTopic: (t) => _openInfo(context, t),
                onTapLink: (link) => _openInfoLink(context, link),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.sellerPath,
        builder: (context, state) {
          final id = state.pathParameters[AppRoutes.idParam] ?? '';
          final name = state.uri.queryParameters[AppRoutes.nameParam] ?? '';
          return ScopedProductsPage(
            key: ValueKey(id),
            sellerId: id,
            header: SliverAppBar(pinned: true, title: Text(name)),
            onOpenProduct: (product) => _openProduct(context, product),
            onOpenCatalog: () => context.go(AppRoutes.catalog),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.collectionPath,
        builder: (context, state) {
          final id = state.pathParameters[AppRoutes.idParam] ?? '';
          final name = state.uri.queryParameters[AppRoutes.nameParam] ?? '';
          return ScopedProductsPage(
            key: ValueKey(id),
            collectionId: id,
            header: SliverAppBar(pinned: true, title: Text(name)),
            onOpenProduct: (product) => _openProduct(context, product),
            onOpenCatalog: () => context.go(AppRoutes.catalog),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.linkImport,
        builder: (context, state) {
          final link = state.uri.queryParameters[AppRoutes.linkParam] ?? '';
          if (link.isEmpty) return _notFound(context);
          return LinkImportPage(
            link: link,
            onCancel: () => context.pop(),
            // The product takes the waiting screen's place: back leads to
            // where the link was pasted.
            onDone: (id) => context.pushReplacement(AppRoutes.product(id)),
            onSupport: () => context.push(AppRoutes.support),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.search,
        builder: (context, state) => SearchPage(
          initialText: state.uri.queryParameters[AppRoutes.queryParam] ?? '',
          onSearch: (query) => context.push(AppRoutes.searchResults(query)),
          onOpenLink: (link) => context.push(AppRoutes.linkImportOf(link)),
          onPhotoSearch: () => context.push(AppRoutes.photoSearch),
        ),
        routes: [
          GoRoute(
            path: AppRoutes.searchResultsPath,
            builder: (context, state) {
              final query =
                  state.uri.queryParameters[AppRoutes.queryParam] ?? '';
              if (query.trim().isEmpty) return _notFound(context);
              // The search feature draws the top, the catalog the products.
              return ScopedProductsPage(
                key: ValueKey(query),
                searchText: query,
                header: SearchResultsHeader(
                  query: query,
                  // Back to the search screen that still holds the text;
                  // opened from a link, a new one with it.
                  onEdit: () => context.canPop()
                      ? context.pop()
                      : context.pushReplacement(AppRoutes.searchWith(query)),
                  onPhotoSearch: () => context.push(AppRoutes.photoSearch),
                ),
                empty: SearchEmptyState(
                  query: query,
                  onPhotoSearch: () => context.push(AppRoutes.photoSearch),
                  onFindForMe: () =>
                      context.push(AppRoutes.findRequestFor(query: query)),
                ),
                onOpenProduct: (product) => _openProduct(context, product),
                onOpenCatalog: () => context.go(AppRoutes.catalog),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.photoSearch,
        builder: (context, _) => PhotoCameraPage(
          onClose: () => context.pop(),
          onPhoto: (image) => context.push(AppRoutes.photoCrop(image)),
        ),
        routes: [
          GoRoute(
            path: AppRoutes.photoCropPath,
            builder: (context, state) {
              final image = state.uri.queryParameters[AppRoutes.imageParam];
              if (image == null) return _notFound(context);
              return PhotoCropPage(
                imageUrl: image,
                // Replaces the crop screen: back from results is the camera.
                onSearch: (crop) => context.pushReplacement(
                  AppRoutes.photoResults(image, crop: _encodeCrop(crop)),
                ),
              );
            },
          ),
          GoRoute(
            path: AppRoutes.photoResultsPath,
            builder: (context, state) {
              final query = _photoQuery(state.uri.queryParameters);
              if (query == null) return _notFound(context);
              return PhotoResultsPage(
                query: query,
                onOpenProduct: (product) => _openProduct(context, product),
                // From the camera, back is the camera; from a product, the
                // camera takes the place of the results.
                onAnotherPhoto: query.needsUpload
                    ? () => context.pop()
                    : () => context.pushReplacement(AppRoutes.photoSearch),
                onFindForMe: () => context.push(
                  AppRoutes.findRequestFor(image: query.imageUrl),
                ),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.notifications,
        builder: (context, _) =>
            NotificationsPage(onOpen: (link) => openAppLink(context, link)),
      ),
      GoRoute(
        path: AppRoutes.videoFeed,
        builder: (context, state) => VideoFeedPage(
          startId: state.uri.queryParameters[AppRoutes.storyParam],
          onOpenProduct: (product) =>
              context.push<void>(AppRoutes.product(product.id), extra: product),
          onOpenCart: () => context.go(AppRoutes.cart),
        ),
      ),
      GoRoute(
        path: AppRoutes.addressEditor,
        builder: (context, state) => AddressEditorPage(
          address: switch (state.extra) {
            final DeliveryAddress a => a,
            _ => null,
          },
          // The id lets checkout pick the address it was opened for.
          onSaved: (address) => context.pop(address.id),
        ),
      ),
      GoRoute(
        path: AppRoutes.support,
        builder: (context, _) {
          final contacts = context.read<AppConfigCubit>().state.config?.support;
          return SupportChatPage(
            contacts: SupportChannels(
              phone: contacts?.phone,
              telegram: contacts?.telegram,
              whatsapp: contacts?.whatsapp,
            ),
            onOpenProduct: (product) => _openProduct(context, product),
            onOpenOrder: (number) => context.push(AppRoutes.order(number)),
            onFindForMe: () => context.push<ChatMessage>(
              AppRoutes.findRequestFor(isInChat: true),
            ),
          );
        },
        routes: [
          GoRoute(
            path: AppRoutes.findRequestPath,
            builder: (context, state) {
              final params = state.uri.queryParameters;
              final isInChat = params.containsKey(AppRoutes.inChatParam);
              return FindRequestPage(
                description: params[AppRoutes.queryParam] ?? '',
                photo: params[AppRoutes.imageParam],
                // From the chat: back to it with the card. From a search:
                // the chat takes the form's place, back leads to results.
                onSent: (card) => isInChat
                    ? context.pop(card)
                    : context.pushReplacement(AppRoutes.support),
              );
            },
          ),
        ],
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
          onReadPolicy: () => _openInfo(context, InfoTopic.privacy),
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
  // Wholesale sections are for the wholesale group only; the rest get
  // the application (TZ §4).
  if (auth case AuthSignedIn(
    :final profile,
  ) when !profile.isWholesale && path.startsWith(AppRoutes.wholesaleDocs)) {
    return AppRoutes.wholesale;
  }
  return null;
}

/// Orders, parcels, money, viewed and price alerts inside the Profile tab.
final _profileRoutes = <RouteBase>[
  GoRoute(
    path: AppRoutes.ordersFeedPath,
    builder: (context, state) {
      final name = state.pathParameters[AppRoutes.ordersFilterParam];
      final filter = OrdersFilter.values.asNameMap()[name];
      return OrdersFeedPage(
        // Key by filter so a link to another filter opens a fresh page.
        key: ValueKey(filter),
        filter: filter ?? OrdersFilter.values.first,
        navigator: OrdersFeedNavigator(
          openOrder: (number) => context.push<void>(AppRoutes.order(number)),
          openParcel: (number) => context.push<void>(AppRoutes.parcel(number)),
          // No payment id yet: the payment page starts a new one.
          pay: (number, amount) => context.push<void>(
            AppRoutes.payment(number),
            extra: PlacedOrder(
              number: number,
              payNow: amount,
              payment: PaymentMethod.card,
            ),
          ),
          writeReview: (number, itemId) =>
              context.push<void>(AppRoutes.writeReviewFor(number, itemId)),
        ),
      );
    },
  ),
  GoRoute(
    path: AppRoutes.addressesPath,
    builder: (context, _) => AddressesPage(
      onOpenEditor: (address) =>
          context.push<String>(AppRoutes.addressEditor, extra: address),
    ),
  ),
  GoRoute(
    path: AppRoutes.wholesalePath,
    builder: (context, _) =>
        BecomeWholesalePage(onOpenCatalog: () => context.go(AppRoutes.catalog)),
    routes: [
      GoRoute(
        path: AppRoutes.wholesaleDocsPath,
        builder: (_, _) => const WholesaleDocumentsPage(),
      ),
    ],
  ),
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

void _openInfo(BuildContext context, InfoTopic topic) =>
    context.push(AppRoutes.infoPage(topic.slug));

/// A link inside an information page: another screen of the app, or a
/// website / phone / email outside it.
void _openInfoLink(BuildContext context, String link) {
  final uri = Uri.tryParse(link);
  if (uri != null && uri.hasScheme) {
    ExternalLinks.url(context, link);
  } else {
    openAppLink(context, link);
  }
}

/// «Быстрый заказ» sheet; «К заказу» opens the placed order. Completes with
/// `true` once the order is placed.
Future<bool> _quickOrder(BuildContext context, List<CartItem> lines) async {
  final result = await showQuickOrderSheet(context, lines: lines);
  if (result == null) return false;
  if (result.wantsOrder && context.mounted) {
    unawaited(context.push(AppRoutes.order(result.orderNumber)));
  }
  return true;
}

Widget _notFound(BuildContext context) =>
    NotFoundPage(onHome: () => context.go(AppRoutes.home));

/// `left,top,width,height`, three decimals: enough for a frame, short in
/// the URL.
String _encodeCrop(PhotoCrop crop) => [
  crop.left,
  crop.top,
  crop.width,
  crop.height,
].map((v) => v.toStringAsFixed(3)).join(',');

PhotoQuery? _photoQuery(Map<String, String> params) {
  final image = params[AppRoutes.imageParam];
  if (image == null || image.isEmpty) return null;
  final parts = params[AppRoutes.cropParam]?.split(',').map(double.tryParse);
  final crop = switch (parts?.toList()) {
    [final double l, final double t, final double w, final double h] =>
      PhotoCrop(left: l, top: t, width: w, height: h),
    _ => null,
  };
  return PhotoQuery(
    imageUrl: image,
    productId: params[AppRoutes.productParam],
    crop: crop,
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
