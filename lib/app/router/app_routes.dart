/// Route paths. Tab roots first, then routes inside tabs, then full-screen
/// routes over the menu.
abstract final class AppRoutes {
  static const home = '/home';
  static const catalog = '/catalog';
  static const cart = '/cart';
  static const favourites = '/favourites';
  static const profile = '/profile';

  static const slugParam = 'slug';

  /// Relative to [catalog]: `/catalog/category/:slug`.
  static const categoryProductsPath = 'category/:$slugParam';

  static String categoryProducts(String slug) =>
      '$catalog/category/${Uri.encodeComponent(slug)}';

  // ── Inside the Profile tab, so the menu stays visible ──

  /// Relative to [profile].
  static const ordersPath = 'orders';
  static const orders = '$profile/$ordersPath';

  static const orderParam = 'order';

  /// Relative to [orders].
  static const orderPath = ':$orderParam';

  static String order(String number) =>
      '$orders/${Uri.encodeComponent(number)}';

  static const ordersFilterParam = 'filter';

  /// Profile «Мои заказы» filter: [ordersFilterParam] is an `OrdersFilter`
  /// name. Relative to [profile].
  static const ordersFeedPath = 'my-orders/:$ordersFilterParam';
  static const ordersFeedPrefix = '$profile/my-orders';

  static String ordersFeed(String filter) =>
      '$ordersFeedPrefix/${Uri.encodeComponent(filter)}';

  static const parcelsPath = 'parcels';
  static const parcels = '$profile/$parcelsPath';

  static const parcelParam = 'parcel';
  static const parcelPath = ':$parcelParam';

  static String parcel(String number) =>
      '$parcels/${Uri.encodeComponent(number)}';

  static const balancePath = 'balance';
  static const balance = '$profile/$balancePath';

  static const surchargesPath = 'surcharges';
  static const surcharges = '$profile/$surchargesPath';

  static const tabParam = 'tab';
  static const refundsTab = 'refunds';
  static const parcelPayParam = 'pay_parcel';

  /// «Доплаты и возвраты»: on the refunds tab, or opening the payment of
  /// [payParcel]'s surcharge at once.
  static String surchargesWith({bool isRefunds = false, String? payParcel}) =>
      Uri(
        path: surcharges,
        queryParameters: {
          if (isRefunds) tabParam: refundsTab,
          parcelPayParam: ?payParcel,
        },
      ).toString();

  static const profileEditPath = 'edit';
  static const profileEdit = '$profile/$profileEditPath';

  static const settingsPath = 'settings';
  static const settings = '$profile/$settingsPath';

  /// Relative to [settings].
  static const deleteAccountPath = 'delete-account';
  static const deleteAccount = '$settings/$deleteAccountPath';

  static const myReviewsPath = 'reviews';
  static const myReviews = '$profile/$myReviewsPath';

  static const viewedPath = 'viewed';
  static const viewed = '$profile/$viewedPath';

  static const priceAlertsPath = 'price-alerts';
  static const priceAlerts = '$profile/$priceAlertsPath';

  static const addressesPath = 'addresses';
  static const addresses = '$profile/$addressesPath';

  /// «Стать оптовиком» and, relative to it, the wholesale documents.
  static const wholesalePath = 'wholesale';
  static const wholesale = '$profile/$wholesalePath';
  static const wholesaleDocsPath = 'documents';
  static const wholesaleDocs = '$wholesale/$wholesaleDocsPath';

  /// Website links (TZ §4) mapped onto the routes above.
  static const accountPrefix = '/account';

  // ── Full-screen over the menu (TZ §4) ──

  static const idParam = 'id';

  static const productPath = '/product/:$idParam';

  static String product(String id) => '/product/${Uri.encodeComponent(id)}';

  /// Relative to [productPath].
  static const productReviewsPath = 'reviews';

  static String productReviews(String id) => '${product(id)}/reviews';

  static const itemParam = 'item';

  /// «Написать отзыв» for a received order item.
  static const writeReview = '/review';

  static String writeReviewFor(String orderNumber, String itemId) => Uri(
    path: writeReview,
    queryParameters: {orderParam: orderNumber, itemParam: itemId},
  ).toString();

  static const promoParam = 'promo';

  static const checkout = '/checkout';

  /// Promo goes in the query so it survives the login redirect.
  static String checkoutWith(String? promoCode) => promoCode == null
      ? checkout
      : Uri(
          path: checkout,
          queryParameters: {promoParam: promoCode},
        ).toString();

  /// Payment check and result of an order (TZ §4: /pay/{orderId}).
  static const paymentPath = '/pay/:$orderParam';

  static String payment(String orderNumber) =>
      '/pay/${Uri.encodeComponent(orderNumber)}';

  /// Promotions list and one promotion (TZ §4: /promo/{id}).
  static const promotions = '/promo';
  static const promoPath = '/promo/:$slugParam';

  static String promo(String slug) => '/promo/${Uri.encodeComponent(slug)}';

  /// «Информация» and one of its pages (TZ §5.19). Over the menu, so the
  /// offer and policy open from login and checkout too.
  static const info = '/info';

  static const topicParam = 'topic';

  /// Relative to [info].
  static const infoPagePath = ':$topicParam';

  static String infoPage(String slug) => '$info/${Uri.encodeComponent(slug)}';

  /// «Все товары продавца»; [nameParam] is the title until the list says
  /// more.
  static const sellerPath = '/seller/:$idParam';
  static const nameParam = 'name';

  static String sellerProducts(String id, String name) => Uri(
    path: '/seller/${Uri.encodeComponent(id)}',
    queryParameters: {nameParam: name},
  ).toString();

  /// «Все» of a Home collection; [nameParam] is the title.
  static const collectionPath = '/collection/:$idParam';

  static String collectionProducts(String id, String title) => Uri(
    path: '/collection/${Uri.encodeComponent(id)}',
    queryParameters: {if (title.isNotEmpty) nameParam: title},
  ).toString();

  /// «Товар по ссылке» (TZ §5.9) for the marketplace link in [linkParam].
  static const linkImport = '/import';
  static const linkParam = 'url';

  static String linkImportOf(String link) =>
      Uri(path: linkImport, queryParameters: {linkParam: link}).toString();

  /// Search screen (TZ §5.7); [queryParam] prefills the field.
  static const search = '/search';
  static const queryParam = 'q';

  /// Relative to [search].
  static const searchResultsPath = 'results';

  static String searchWith(String query) =>
      Uri(path: search, queryParameters: {queryParam: query}).toString();

  static String searchResults(String query) => Uri(
    path: '$search/$searchResultsPath',
    queryParameters: {queryParam: query},
  ).toString();

  /// Photo search (TZ §5.8): camera, then the crop screen, then results.
  static const photoSearch = '/photo-search';

  /// Relative to [photoSearch].
  static const photoCropPath = 'crop';
  static const photoResultsPath = 'results';

  static const imageParam = 'image';
  static const productParam = 'product';
  static const cropParam = 'crop';

  static String photoCrop(String imageUrl) => Uri(
    path: '$photoSearch/$photoCropPath',
    queryParameters: {imageParam: imageUrl},
  ).toString();

  /// Results for [imageUrl]; [productId] for «Найти похожие», [crop] as
  /// `left,top,width,height` in 0…1.
  static String photoResults(
    String imageUrl, {
    String? productId,
    String? crop,
  }) => Uri(
    path: '$photoSearch/$photoResultsPath',
    queryParameters: {
      imageParam: imageUrl,
      productParam: ?productId,
      cropParam: ?crop,
    },
  ).toString();

  /// Video feed (TZ §5.4), from the story in [storyParam].
  static const videoFeed = '/video';
  static const storyParam = 'story';

  static String videoFeedFrom(String storyId) =>
      Uri(path: videoFeed, queryParameters: {storyParam: storyId}).toString();

  /// Support chat (TZ §5.17).
  static const support = '/support';

  /// «Найдите мне товар»; relative to [support].
  static const findRequestPath = 'find';
  static const findRequest = '$support/$findRequestPath';
  static const inChatParam = 'in_chat';

  /// Prefilled with [query] or [image]; [isInChat] when opened from the
  /// chat, so sending goes back to it instead of opening a new one.
  static String findRequestFor({
    String? query,
    String? image,
    bool isInChat = false,
  }) => Uri(
    path: findRequest,
    queryParameters: {
      queryParam: ?query,
      imageParam: ?image,
      if (isInChat) inChatParam: '1',
    },
  ).toString();

  /// Address on the map (TZ §4: over the menu); the address to change
  /// comes as `extra`, none for a new one.
  static const addressEditor = '/address';

  /// Notification centre (UI_DESIGN §7.21).
  static const notifications = '/notifications';

  /// Card payment of a top-up or surcharge; the payment comes as `extra`.
  static const walletPay = '/wallet/pay';

  static const fromParam = 'from';

  static const login = '/login';

  /// Login that returns to [from] when done.
  static String loginFrom(String from) =>
      Uri(path: login, queryParameters: {fromParam: from}).toString();

  /// Need a signed-in customer (TZ §4 guards).
  static bool needsLogin(String location) =>
      location == checkout ||
      location.startsWith('$checkout?') ||
      location.startsWith(orders) ||
      location.startsWith(ordersFeedPrefix) ||
      location.startsWith(parcels) ||
      location.startsWith(priceAlerts) ||
      location.startsWith(balance) ||
      location.startsWith(settings) ||
      location.startsWith(profileEdit) ||
      location.startsWith(surcharges) ||
      location.startsWith(walletPay) ||
      location == notifications ||
      location.startsWith(myReviews) ||
      location.startsWith(wholesale) ||
      location.startsWith(addresses) ||
      location == addressEditor ||
      location == support ||
      location.startsWith('$support/') ||
      location.startsWith('$support?') ||
      location.startsWith('$writeReview?') ||
      location.startsWith('/pay/');

  /// Dev-only component catalogue; registered in debug builds only.
  static const kit = '/kit';
}
