import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// «Войдите, чтобы видеть заказы» with an illustration and «Войти».
class GuestSignInCard extends StatelessWidget {
  const GuestSignInCard({required this.onLogin, super.key});

  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x8,
        AppSpacing.screen,
        AppSpacing.section,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: c.primarySoft,
          borderRadius: AppRadii.cardBorder,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.x20),
          child: Column(
            children: [
              const SpotIllustration(icon: AppIcons.order),
              const SizedBox(height: AppSpacing.x16),
              Text(
                l10n.profileGuestTitle,
                textAlign: TextAlign.center,
                style: context.text.h2,
              ),
              const SizedBox(height: AppSpacing.x8),
              Text(
                l10n.profileGuestText,
                textAlign: TextAlign.center,
                style: context.text.body.copyWith(color: c.inkSecondary),
              ),
              const SizedBox(height: AppSpacing.x20),
              PrimaryButton(label: l10n.profileSignIn, onPressed: onLogin),
            ],
          ),
        ),
      ),
    );
  }
}

/// A guest sees language, region, support and information (TZ §5.14).
/// The chat needs a sign-in, so «Поддержка» leads through the login and
/// back to the chat.
class GuestMenu extends StatelessWidget {
  const GuestMenu({
    required this.onOpenInfo,
    required this.onOpenSupport,
    super.key,
  });

  final VoidCallback onOpenInfo;
  final VoidCallback onOpenSupport;

  @override
  Widget build(BuildContext context) => MenuGroup(
    children: [
      const LanguageMenuRow(),
      const RegionMenuRow(),
      MenuRow(
        icon: AppIcons.support,
        title: context.l10n.profileSupport,
        onTap: onOpenSupport,
      ),
      MenuRow(
        icon: AppIcons.info,
        title: context.l10n.profileInfo,
        onTap: onOpenInfo,
      ),
    ],
  );
}
