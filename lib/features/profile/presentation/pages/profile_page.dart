import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/profile_guest.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_menu.dart';

/// Profile tab root (TZ §5.14, UI_DESIGN §7.11): the customer's header and
/// menu, or a sign-in card for a guest.
class ProfilePage extends StatefulWidget {
  const ProfilePage({
    required this.onLogin,
    required this.onOpenOrders,
    required this.onOpenParcels,
    required this.onOpenViewed,
    required this.onOpenPriceAlerts,
    required this.onOpenBalance,
    required this.onOpenSurcharges,
    required this.onOpenSettings,
    required this.onEditProfile,
    required this.onOpenNotifications,
    required this.onOpenMyReviews,
    required this.onOpenInfo,
    required this.onOpenSupport,
    required this.onOpenAddresses,
    required this.onOpenWholesale,
    super.key,
  });

  final VoidCallback onLogin;
  final VoidCallback onOpenOrders;
  final VoidCallback onOpenParcels;
  final VoidCallback onOpenViewed;
  final VoidCallback onOpenPriceAlerts;
  final VoidCallback onOpenBalance;
  final VoidCallback onOpenSurcharges;
  final VoidCallback onOpenSettings;
  final VoidCallback onEditProfile;
  final VoidCallback onOpenNotifications;
  final VoidCallback onOpenMyReviews;
  final VoidCallback onOpenInfo;

  /// Sections not built yet (balance, addresses, settings, …).
  final VoidCallback onOpenSupport;
  final VoidCallback onOpenAddresses;

  /// «Стать оптовиком» for a retail customer, the documents for a
  /// wholesale one.
  final VoidCallback onOpenWholesale;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    // Balance and debt change often: refresh when the tab is first built.
    context.read<AuthCubit>().refresh(
      context.read<LocaleCubit>().state.languageCode,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) => RootTabPage(
        title: l10n.tabProfile,
        slivers: [
          switch (state) {
            AuthUnknown() => const SliverToBoxAdapter(
              child: Padding(
                padding: AppSpacing.screenPadding,
                child: SkeletonList(itemCount: 3),
              ),
            ),
            AuthGuest() => SliverList.list(
              children: [
                GuestSignInCard(onLogin: widget.onLogin),
                GuestMenu(onOpenInfo: widget.onOpenInfo),
              ],
            ),
            AuthSignedIn(:final profile) => SliverList.list(
              children: [
                ProfileHeader(
                  profile: profile,
                  onPayDebt: widget.onOpenSurcharges,
                  onOpenBalance: widget.onOpenBalance,
                  onEdit: widget.onEditProfile,
                ),
                CustomerMenu(
                  isWholesale: profile.isWholesale,
                  onOpenOrders: widget.onOpenOrders,
                  onOpenParcels: widget.onOpenParcels,
                  onOpenViewed: widget.onOpenViewed,
                  onOpenPriceAlerts: widget.onOpenPriceAlerts,
                  onOpenBalance: widget.onOpenBalance,
                  onOpenSurcharges: widget.onOpenSurcharges,
                  onOpenSettings: widget.onOpenSettings,
                  onOpenNotifications: widget.onOpenNotifications,
                  onOpenMyReviews: widget.onOpenMyReviews,
                  onOpenInfo: widget.onOpenInfo,
                  onOpenSupport: widget.onOpenSupport,
                  onOpenAddresses: widget.onOpenAddresses,
                  onOpenWholesale: widget.onOpenWholesale,
                ),
              ],
            ),
          },
          const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.x24)),
        ],
      ),
    );
  }
}
