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

  /// Personal data of the signed-in customer: profile, orders and parcels
  /// as JSON. Cleared on sign-out (TZ §7.2). `LazyBox<String>`.
  static const account = 'account';

  /// Favourite products as one JSON list, newest first. The guest's are
  /// the source of truth until sign-in, then merged to the server
  /// (TZ §5.16). Cleared on sign-out. `Box<String>`.
  static const favourites = 'favourites';

  /// Recently viewed products as one JSON list, newest first. Device
  /// only. `Box<String>`.
  static const viewed = 'viewed';

  /// Last app config (min version, maintenance, contacts) as JSON, so a
  /// launch without network still knows them (TZ §8.2). `LazyBox<String>`.
  static const configCache = 'config_cache';

  /// Information pages per language and page, as JSON, for reading
  /// offline. `LazyBox<String>`.
  static const infoCache = 'info_cache';
}

/// Keys inside [HiveBoxes.settings].
abstract final class SettingsKeys {
  static const languageCode = 'language_code';
  static const regionId = 'region_id';

  /// Last checkout recipient and courier address (JSON) until login.
  static const checkoutRecipient = 'checkout_recipient';
  static const checkoutAddress = 'checkout_address';
}

/// Adapter type ids. None yet: cached API responses are stored as JSON
/// strings, so they need no adapters. Add ids here, never renumber.
abstract final class HiveTypeIds {}
