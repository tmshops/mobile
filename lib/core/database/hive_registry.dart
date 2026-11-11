/// Single registry of Hive box names (and, later, adapter type ids).
///
/// Never rename a box or reuse a type id: existing installs would lose or
/// misread their data.
abstract final class HiveBoxes {
  /// App settings: language, region, onboarding flags. `Box<String>`.
  static const settings = 'settings';

  /// Last server-driven Home response per language, as JSON. `Box<String>`.
  static const homeCache = 'home_cache';

  /// Last category tree per language, as JSON. `Box<String>`.
  static const catalogCache = 'catalog_cache';

  /// Guest cart lines as one JSON list. `Box<String>`.
  static const cart = 'cart';
}

/// Keys inside [HiveBoxes.settings].
abstract final class SettingsKeys {
  static const languageCode = 'language_code';
  static const regionId = 'region_id';
}

/// Adapter type ids. None yet: cached API responses are stored as JSON
/// strings, so they need no adapters. Add ids here, never renumber.
abstract final class HiveTypeIds {}
