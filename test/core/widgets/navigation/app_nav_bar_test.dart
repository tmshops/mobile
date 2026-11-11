import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  List<AppNavItem> items({int cartCount = 0, bool hasDot = false}) => [
    const AppNavItem(
      icon: AppIcons.navHome,
      activeIcon: AppIcons.navHomeActive,
      label: 'Главная',
    ),
    AppNavItem(
      icon: AppIcons.cart,
      activeIcon: AppIcons.cartFilled,
      label: 'Корзина',
      badgeCount: cartCount,
    ),
    AppNavItem(
      icon: AppIcons.navProfile,
      activeIcon: AppIcons.navProfileActive,
      label: 'Профиль',
      hasDot: hasDot,
    ),
  ];

  Widget bar({
    int cartCount = 0,
    bool hasDot = false,
    ValueChanged<int>? onTap,
  }) => Align(
    alignment: Alignment.bottomCenter,
    child: AppNavBar(
      items: items(cartCount: cartCount, hasDot: hasDot),
      currentIndex: 0,
      onTap: onTap ?? (_) {},
    ),
  );

  testWidgets('reports the tapped index', (tester) async {
    int? tapped;
    await tester.pumpApp(bar(onTap: (i) => tapped = i));
    await tester.tap(find.text('Профиль'));
    expect(tapped, 2);
  });

  testWidgets('cart badge caps at 99+ and is read with the count', (
    tester,
  ) async {
    await tester.pumpApp(bar(cartCount: 3, hasDot: true));
    expect(find.text('3'), findsOneWidget);
    expect(find.bySemanticsLabel('Корзина, 3 товара'), findsOneWidget);
    expect(
      find.bySemanticsLabel('Профиль, есть непрочитанные уведомления'),
      findsOneWidget,
    );

    await tester.pumpApp(bar(cartCount: 150));
    expect(find.text('99+'), findsOneWidget);
  });

  testWidgets('Turkmen labels fit at 360 dp and 1.3× text', (tester) async {
    await tester.pumpApp(
      Align(
        alignment: Alignment.bottomCenter,
        child: Builder(
          builder: (context) {
            final l10n = context.l10n;
            return AppNavBar(
              currentIndex: 3,
              onTap: (_) {},
              items: [
                for (final label in [
                  l10n.tabHome,
                  l10n.tabCatalog,
                  l10n.tabCart,
                  l10n.tabFavourites,
                  l10n.tabProfile,
                ])
                  AppNavItem(
                    icon: AppIcons.heart,
                    activeIcon: AppIcons.heartFilled,
                    label: label,
                    badgeCount: label == l10n.tabCart ? 120 : 0,
                  ),
              ],
            );
          },
        ),
      ),
      locale: AppLocales.tk,
      textScale: 1.3,
    );
    expect(find.text('Halanlarym'), findsOneWidget);
    // A layout overflow would fail the test here.
  });
}
