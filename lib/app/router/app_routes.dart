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

  static const idParam = 'id';

  /// Full-screen over the menu (TZ §4).
  static const productPath = '/product/:$idParam';

  static String product(String id) => '/product/${Uri.encodeComponent(id)}';

  /// Dev-only component catalogue; registered in debug builds only.
  static const kit = '/kit';
}
