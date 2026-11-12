import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/notifications/notifications_counter.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Menu of a signed-in customer (TZ §5.14). Sections that are not built
/// yet say so with a toast.
class CustomerMenu extends StatelessWidget {
  const CustomerMenu({
    required this.isWholesale,
    required this.onOpenOrders,
    required this.onOpenParcels,
    required this.onOpenViewed,
    required this.onOpenPriceAlerts,
    required this.onOpenBalance,
    required this.onOpenSurcharges,
    required this.onOpenSettings,
    required this.onOpenNotifications,
    required this.onOpenMyReviews,
    required this.onComingSoon,
    super.key,
  });

  final bool isWholesale;
  final VoidCallback onOpenOrders;
  final VoidCallback onOpenParcels;
  final VoidCallback onOpenViewed;
  final VoidCallback onOpenPriceAlerts;
  final VoidCallback onOpenBalance;
  final VoidCallback onOpenSurcharges;
  final VoidCallback onOpenSettings;
  final VoidCallback onOpenNotifications;
  final VoidCallback onOpenMyReviews;
  final VoidCallback onComingSoon;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        MenuGroup(
          children: [
            MenuRow(
              icon: AppIcons.order,
              title: l10n.profileOrders,
              onTap: onOpenOrders,
            ),
            MenuRow(
              icon: AppIcons.package,
              title: l10n.profileParcels,
              onTap: onOpenParcels,
            ),
            MenuRow(
              icon: AppIcons.refund,
              title: l10n.profileSurcharges,
              onTap: onOpenSurcharges,
            ),
            MenuRow(
              icon: AppIcons.wallet,
              title: l10n.profileBalance,
              onTap: onOpenBalance,
            ),
          ],
        ),
        MenuGroup(
          children: [
            MenuRow(
              icon: AppIcons.address,
              title: l10n.profileAddresses,
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.viewed,
              title: l10n.profileViewed,
              onTap: onOpenViewed,
            ),
            MenuRow(
              icon: AppIcons.starOutline,
              title: l10n.profileReviews,
              onTap: onOpenMyReviews,
            ),
            MenuRow(
              icon: AppIcons.priceAlert,
              title: l10n.profilePriceAlerts,
              onTap: onOpenPriceAlerts,
            ),
            MenuRow(
              icon: AppIcons.bell,
              title: l10n.profileNotifications,
              onTap: onOpenNotifications,
              trailing: switch (context.select<NotificationsCounterCubit, int>(
                (c) => c.state,
              )) {
                0 => null,
                final count => CountBadge(count: count),
              },
            ),
          ],
        ),
        MenuGroup(
          children: [
            MenuRow(
              icon: AppIcons.support,
              title: l10n.profileSupport,
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.wholesale,
              title: isWholesale
                  ? l10n.profileWholesaleDocs
                  : l10n.profileBecomeWholesale,
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.info,
              title: l10n.profileInfo,
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.settings,
              title: l10n.profileSettings,
              onTap: onOpenSettings,
            ),
          ],
        ),
      ],
    );
  }
}
