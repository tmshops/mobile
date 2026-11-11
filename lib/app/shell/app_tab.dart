import 'package:flutter/widgets.dart';

import '../../core/l10n/l10n.dart';
import '../../core/theme/theme.dart';

/// Bottom-nav tabs, in branch order.
enum AppTab {
  home(AppIcons.navHome, AppIcons.navHomeActive),
  catalog(AppIcons.navCatalog, AppIcons.navCatalogActive),
  cart(AppIcons.cart, AppIcons.cartFilled),
  favourites(AppIcons.heart, AppIcons.heartFilled),
  profile(AppIcons.navProfile, AppIcons.navProfileActive);

  const AppTab(this.icon, this.activeIcon);

  final IconData icon;
  final IconData activeIcon;

  String label(AppLocalizations l10n) => switch (this) {
    AppTab.home => l10n.tabHome,
    AppTab.catalog => l10n.tabCatalog,
    AppTab.cart => l10n.tabCart,
    AppTab.favourites => l10n.tabFavourites,
    AppTab.profile => l10n.tabProfile,
  };
}
