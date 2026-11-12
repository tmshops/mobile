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
    required this.onComingSoon,
    super.key,
  });

  final VoidCallback onLogin;
  final VoidCallback onOpenOrders;
  final VoidCallback onOpenParcels;
  final VoidCallback onOpenViewed;
  final VoidCallback onOpenPriceAlerts;

  /// Sections not built yet (balance, addresses, settings, …).
  final VoidCallback onComingSoon;

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
                GuestMenu(onComingSoon: widget.onComingSoon),
              ],
            ),
            AuthSignedIn(:final profile) => SliverList.list(
              children: [
                ProfileHeader(
                  profile: profile,
                  onPayDebt: widget.onComingSoon,
                  onOpenBalance: widget.onComingSoon,
                ),
                CustomerMenu(
                  isWholesale: profile.isWholesale,
                  onOpenOrders: widget.onOpenOrders,
                  onOpenParcels: widget.onOpenParcels,
                  onOpenViewed: widget.onOpenViewed,
                  onOpenPriceAlerts: widget.onOpenPriceAlerts,
                  onComingSoon: widget.onComingSoon,
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
