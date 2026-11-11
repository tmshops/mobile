/// Query parameter names of the agreed catalog API, as the fake server
/// reads them. Kept separate from the app's own copy on purpose: the fake
/// plays the server, and must break if the app sends something else.
abstract final class FakeApiParams {
  static const category = 'category';
  static const sort = 'sort';
  static const cursor = 'cursor';
  static const priceMin = 'price_min';
  static const priceMax = 'price_max';
  static const facetPrefix = 'f_';
  static const listSeparator = ',';
}
