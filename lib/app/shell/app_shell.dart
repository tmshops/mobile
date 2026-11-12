import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/cart/cart_cubit.dart';
import '../../core/l10n/l10n.dart';
import '../../core/notifications/notifications_counter.dart';
import '../../core/navigation/tab_reselect_scope.dart';
import '../../core/widgets/widgets.dart';
import 'app_tab.dart';

/// Scaffold around the five tab stacks with the bottom navigation bar.
///
/// - Tapping the active tab pops it to its root and scrolls to the top.
/// - System back on another tab's root goes to Home; on Home it exits.
class AppShell extends StatelessWidget {
  const AppShell({
    required this.navigationShell,
    required this.reselectSignals,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final List<TabReselectSignal> reselectSignals;

  void _onTap(int index) {
    final isReselect = index == navigationShell.currentIndex;
    if (isReselect) reselectSignals[index].reselect();
    navigationShell.goBranch(index, initialLocation: isReselect);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final current = navigationShell.currentIndex;
    final isHome = current == AppTab.home.index;
    return PopScope(
      canPop: isHome,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) navigationShell.goBranch(AppTab.home.index);
      },
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: BlocSelector<CartCubit, CartState, int>(
          selector: (cart) => cart.positions,
          builder: (context, cartCount) => AppNavBar(
            currentIndex: current,
            onTap: _onTap,
            items: [
              for (final tab in AppTab.values)
                AppNavItem(
                  icon: tab.icon,
                  activeIcon: tab.activeIcon,
                  label: tab.label(l10n),
                  badgeCount: tab == AppTab.cart ? cartCount : 0,
                  hasDot:
                      tab == AppTab.profile &&
                      context.select<NotificationsCounterCubit, bool>(
                        (unread) => unread.state > 0,
                      ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Keeps every tab's navigator alive (state and scroll are preserved) and
/// pauses animations in hidden tabs.
class BranchStack extends StatelessWidget {
  const BranchStack({
    required this.currentIndex,
    required this.reselectSignals,
    required this.children,
    super.key,
  });

  final int currentIndex;
  final List<TabReselectSignal> reselectSignals;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentIndex,
      children: [
        for (var i = 0; i < children.length; i++)
          TickerMode(
            enabled: i == currentIndex,
            child: TabReselectScope(
              signal: reselectSignals[i],
              child: children[i],
            ),
          ),
      ],
    );
  }
}
