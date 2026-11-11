import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import 'kit_section.dart';

/// Bottom navigation bar: light and over-video variants, with the cart
/// badge and the unread dot. Tap «+1» to see the badge bump.
class KitNavigationSection extends StatefulWidget {
  const KitNavigationSection({super.key});

  @override
  State<KitNavigationSection> createState() => _KitNavigationSectionState();
}

class _KitNavigationSectionState extends State<KitNavigationSection> {
  int _index = 0;
  int _cartCount = 3;

  List<AppNavItem> _items(AppLocalizations l10n) => [
    AppNavItem(
      icon: AppIcons.navHome,
      activeIcon: AppIcons.navHomeActive,
      label: l10n.tabHome,
    ),
    AppNavItem(
      icon: AppIcons.navCatalog,
      activeIcon: AppIcons.navCatalogActive,
      label: l10n.tabCatalog,
    ),
    AppNavItem(
      icon: AppIcons.cart,
      activeIcon: AppIcons.cartFilled,
      label: l10n.tabCart,
      badgeCount: _cartCount,
    ),
    AppNavItem(
      icon: AppIcons.heart,
      activeIcon: AppIcons.heartFilled,
      label: l10n.tabFavourites,
    ),
    AppNavItem(
      icon: AppIcons.navProfile,
      activeIcon: AppIcons.navProfileActive,
      label: l10n.tabProfile,
      hasDot: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final items = _items(context.l10n);
    void onTap(int i) => setState(() => _index = i);
    return KitSection(
      title: 'AppNavBar · light / over video',
      children: [
        // MediaQuery.removePadding: the demo bars are not at the screen
        // bottom, so they must not add the system inset.
        MediaQuery.removePadding(
          context: context,
          removeBottom: true,
          child: Column(
            children: [
              AppNavBar(items: items, currentIndex: _index, onTap: onTap),
              const SizedBox(height: AppSpacing.x12),
              ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: Stack(
                  children: [
                    const Positioned.fill(
                      child: AppNetworkImage(
                        url: 'https://picsum.photos/seed/video/800/300',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: AppSpacing.x40),
                      child: AppNavBar(
                        items: items,
                        currentIndex: _index,
                        onTap: onTap,
                        isDark: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: SecondaryButton(
            label: '+1',
            isExpanded: false,
            size: AppButtonSize.medium,
            onPressed: () => setState(() => _cartCount++),
          ),
        ),
      ],
    );
  }
}
