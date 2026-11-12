import 'package:flutter/widgets.dart';
// Only the font files of phosphor_flutter are used. Its Dart classes extend
// IconData, which is a final class in this Flutter version and no longer
// compiles, so the code points are declared here directly.

/// The app's single icon set (UI_DESIGN §4.4): Phosphor Regular for the
/// default 2-px stroke look, Phosphor Fill for active states.
///
/// Features use these names, not Phosphor directly, so the set can be
/// swapped in one place.
abstract final class AppIcons {
  static const _package = 'phosphor_flutter';
  static const _regular = 'PhosphorRegular';
  static const _fill = 'PhosphorFill';
  static const _bold = 'PhosphorBold';

  static const IconData heart = IconData(
    0xe2a8,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData heartFilled = IconData(
    0xe2a8,
    fontFamily: _fill,
    fontPackage: _package,
  );
  static const IconData minus = IconData(
    0xe32a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData plus = IconData(
    0xe3d4,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData close = IconData(
    0xe4f6,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData check = IconData(
    0xe182,
    fontFamily: _bold,
    fontPackage: _package,
  );
  static const IconData checkCircle = IconData(
    0xe184,
    fontFamily: _fill,
    fontPackage: _package,
  );
  static const IconData info = IconData(
    0xe2ce,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData warning = IconData(
    0xe4e2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData error = IconData(
    0xe4f8,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData search = IconData(
    0xe30c,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData camera = IconData(
    0xe10e,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData image = IconData(
    0xe2ca,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData link = IconData(
    0xe2e2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData arrowRight = IconData(
    0xe06c,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData chevronRight = IconData(
    0xe13a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData chevronDown = IconData(
    0xe136,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData clock = IconData(
    0xe19a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData offline = IconData(
    0xe4f2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData retry = IconData(
    0xe036,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData ruler = IconData(
    0xe6b8,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData share = IconData(
    0xe408,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData sound = IconData(
    0xe44a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData cart = IconData(
    0xe41e,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData cartFilled = IconData(
    0xe41e,
    fontFamily: _fill,
    fontPackage: _package,
  );
  static const IconData package = IconData(
    0xe390,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData sad = IconData(
    0xe43e,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData sparkle = IconData(
    0xe6a2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData star = IconData(
    0xe46a,
    fontFamily: _fill,
    fontPackage: _package,
  );

  static const IconData bell = IconData(
    0xe0ce,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData play = IconData(
    0xe3d0,
    fontFamily: _fill,
    fontPackage: _package,
  );

  static const IconData sort = IconData(
    0xe098,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData filter = IconData(
    0xe266,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData viewList = IconData(
    0xe5a2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData viewGrid = IconData(
    0xe464,
    fontFamily: _regular,
    fontPackage: _package,
  );

  static const IconData back = IconData(
    0xe058,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData starOutline = IconData(
    0xe46a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData translate = IconData(
    0xe4a2,
    fontFamily: _regular,
    fontPackage: _package,
  );

  static const IconData delete = IconData(
    0xe4a6,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData promo = IconData(
    0xe478,
    fontFamily: _regular,
    fontPackage: _package,
  );

  // Bottom navigation: outline (inactive) / filled (active) pairs.
  static const IconData navHome = IconData(
    0xe2c2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData navHomeActive = IconData(
    0xe2c2,
    fontFamily: _fill,
    fontPackage: _package,
  );
  static const IconData navCatalog = IconData(
    0xe464,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData navCatalogActive = IconData(
    0xe464,
    fontFamily: _fill,
    fontPackage: _package,
  );
  static const IconData navProfile = IconData(
    0xe4c2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData navProfileActive = IconData(
    0xe4c2,
    fontFamily: _fill,
    fontPackage: _package,
  );

  // Delivery types.
  static const IconData deliveryAir = IconData(
    0xe002,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData deliveryExpress = IconData(
    0xe2de,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData deliveryTruck = IconData(
    0xe4b4,
    fontFamily: _regular,
    fontPackage: _package,
  );

  // Order and parcel statuses.
  static const IconData statusPaid = IconData(
    0xe1d2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData statusBought = IconData(
    0xe29c,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData statusWarehouse = IconData(
    0xecd4,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData statusDelivered = IconData(
    0xe184,
    fontFamily: _regular,
    fontPackage: _package,
  );

  // ── Account, orders, parcels ──
  static const IconData user = IconData(
    0xe4c2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData phone = IconData(
    0xe3b8,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData copy = IconData(
    0xe1ca,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData mapPin = IconData(
    0xe316,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData signOut = IconData(
    0xe42a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData wallet = IconData(
    0xe68a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData receipt = IconData(
    0xe3ec,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData support = IconData(
    0xe584,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData settings = IconData(
    0xe270,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData viewed = IconData(
    0xe220,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData priceAlert = IconData(
    0xe478,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData refund = IconData(
    0xe038,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData customs = IconData(
    0xe40c,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData arrived = IconData(
    0xe2c2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData handover = IconData(
    0xe470,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData google = IconData(
    0xe292,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData calendar = IconData(
    0xe108,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData lock = IconData(
    0xe2fa,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData coins = IconData(
    0xe588,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData qrCode = IconData(
    0xe3e6,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData scales = IconData(
    0xe750,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData problem = IconData(
    0xe4e2,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData cancelled = IconData(
    0xe4f8,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData wholesale = IconData(
    0xe0ee,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData question = IconData(
    0xe3e8,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData inTransit = IconData(
    0xe002,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData courier = IconData(
    0xe4b4,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData forming = IconData(
    0xe1da,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData timer = IconData(
    0xe492,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData order = IconData(
    0xe416,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData address = IconData(
    0xe31a,
    fontFamily: _regular,
    fontPackage: _package,
  );
  static const IconData chat = IconData(
    0xe16e,
    fontFamily: _regular,
    fontPackage: _package,
  );
}
