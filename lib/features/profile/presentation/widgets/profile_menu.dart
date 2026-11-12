import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';

/// One row of a menu group: icon, title, optional trailing, chevron.
class MenuRow extends StatelessWidget {
  const MenuRow({
    required this.icon,
    required this.title,
    required this.onTap,
    this.trailing,
    this.isDanger = false,
    super.key,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;
  final bool isDanger;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final color = isDanger ? c.danger : c.ink;
    return InkWell(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: AppSizes.touchTarget + AppSpacing.x4,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x16,
            vertical: AppSpacing.x8,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: AppSizes.icon,
                color: isDanger ? c.danger : c.inkSecondary,
              ),
              const SizedBox(width: AppSpacing.x16),
              Expanded(
                child: Text(
                  title,
                  style: context.text.body.copyWith(color: color),
                ),
              ),
              ?trailing,
              if (!isDanger && trailing == null)
                Icon(
                  AppIcons.chevronRight,
                  size: AppSizes.iconDense,
                  color: c.inkTertiary,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Rounded white group on the grey background (UI_DESIGN §7.11).
class MenuGroup extends StatelessWidget {
  const MenuGroup({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.x12,
      ),
      child: Material(
        color: c.surface,
        borderRadius: AppRadii.cardBorder,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            for (final (i, child) in children.indexed) ...[
              if (i > 0)
                Divider(
                  height: AppSizes.hairline,
                  indent: AppSpacing.x16 + AppSizes.icon + AppSpacing.x16,
                  color: c.divider,
                ),
              child,
            ],
          ],
        ),
      ),
    );
  }
}

/// Menu of a signed-in customer (TZ §5.14). Sections that are not built
/// yet say so with a toast.
class CustomerMenu extends StatelessWidget {
  const CustomerMenu({
    required this.isWholesale,
    required this.onOpenOrders,
    required this.onOpenParcels,
    required this.onComingSoon,
    super.key,
  });

  final bool isWholesale;
  final VoidCallback onOpenOrders;
  final VoidCallback onOpenParcels;
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
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.wallet,
              title: l10n.profileBalance,
              onTap: onComingSoon,
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
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.starOutline,
              title: l10n.profileReviews,
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.priceAlert,
              title: l10n.profilePriceAlerts,
              onTap: onComingSoon,
            ),
            MenuRow(
              icon: AppIcons.bell,
              title: l10n.profileNotifications,
              onTap: onComingSoon,
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
              onTap: onComingSoon,
            ),
          ],
        ),
        // Until Settings exists (UI_DESIGN §7.24), sign-out lives here.
        MenuGroup(
          children: [
            MenuRow(
              icon: AppIcons.signOut,
              title: l10n.profileSignOut,
              isDanger: true,
              onTap: () => _confirmSignOut(context),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final l10n = context.l10n;
    final auth = context.read<AuthCubit>();
    final isConfirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.profileSignOutTitle),
        content: Text(l10n.profileSignOutText),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.profileSignOutKeep),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.profileSignOut),
          ),
        ],
      ),
    );
    if (isConfirmed ?? false) await auth.signOut();
  }
}
