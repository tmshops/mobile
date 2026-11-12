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

  static const viewedPath = 'viewed';
  static const viewed = '$profile/$viewedPath';

  static const priceAlertsPath = 'price-alerts';
  static const priceAlerts = '$profile/$priceAlertsPath';

  /// Website links (TZ §4) mapped onto the routes above.
  static const accountPrefix = '/account';

  // ── Full-screen over the menu (TZ §4) ──

  static const idParam = 'id';

  static const productPath = '/product/:$idParam';

  static String product(String id) => '/product/${Uri.encodeComponent(id)}';

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
      location.startsWith(parcels) ||
      location.startsWith(priceAlerts) ||
      location.startsWith(balance) ||
      location.startsWith(settings) ||
      location.startsWith(profileEdit) ||
      location.startsWith(surcharges) ||
      location.startsWith(walletPay) ||
      location == notifications ||
      location.startsWith('/pay/');

  /// Dev-only component catalogue; registered in debug builds only.
  static const kit = '/kit';
}
