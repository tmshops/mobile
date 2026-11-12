import 'package:flutter/material.dart';

import '../../../../core/auth/user_profile.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/utils/phone_format.dart';
import '../../../../core/widgets/widgets.dart';

/// Initials circle, name, phone, «Опт» badge; then Баланс / Долг / Бонусы.
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    required this.profile,
    required this.onPayDebt,
    required this.onOpenBalance,
    super.key,
  });

  final UserProfile profile;
  final VoidCallback onPayDebt;
  final VoidCallback onOpenBalance;

  static const double _avatar = 64;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final phone = PhoneFormat.national(profile.phone);
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x8,
        AppSpacing.screen,
        AppSpacing.section,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: _avatar,
                height: _avatar,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: c.primarySoft,
                  shape: BoxShape.circle,
                ),
                child: profile.initials.isEmpty
                    ? Icon(AppIcons.user, color: c.primary)
                    : Text(
                        profile.initials,
                        style: context.text.h2.copyWith(color: c.primary),
                      ),
              ),
              const SizedBox(width: AppSpacing.x16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile.hasName ? profile.fullName : phone,
                      style: context.text.h2,
                    ),
                    if (profile.hasName)
                      Text(
                        phone,
                        style: context.text.body.copyWith(
                          color: c.inkSecondary,
                        ),
                      ),
                    if (profile.isWholesale) ...[
                      const SizedBox(height: AppSpacing.x4),
                      StatusChip(
                        label: l10n.profileWholesaleBadge,
                        tone: StatusTone.info,
                        icon: AppIcons.wholesale,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.x16),
          Wrap(
            spacing: AppSpacing.x8,
            runSpacing: AppSpacing.x8,
            children: [
              _StatPill(
                label: l10n.profileBalance,
                value: MoneyFormat.tmt(l10n, profile.balance),
                icon: AppIcons.wallet,
                tone: StatusTone.success,
                onTap: onOpenBalance,
              ),
              if (profile.debt > 0)
                _StatPill(
                  label: l10n.profileDebt,
                  value: MoneyFormat.tmt(l10n, profile.debt),
                  icon: AppIcons.warning,
                  tone: StatusTone.warning,
                  onTap: onPayDebt,
                ),
              _StatPill(
                label: l10n.profileBonuses,
                value: MoneyFormat.group(profile.bonuses),
                icon: AppIcons.star,
                tone: StatusTone.brand,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatPill extends StatelessWidget {
  const _StatPill({
    required this.label,
    required this.value,
    required this.icon,
    required this.tone,
    this.onTap,
  });

  final String label;
  final String value;
  final IconData icon;
  final StatusTone tone;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Material(
      color: tone.tint(c),
      borderRadius: AppRadii.cardBorder,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.cardBorder,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x12,
            vertical: AppSpacing.x8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: AppSizes.iconDense, color: tone.color(c)),
              const SizedBox(width: AppSpacing.x8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: context.text.caption.copyWith(color: c.inkSecondary),
                  ),
                  Text(
                    value,
                    style: context.text.bodyStrong.copyWith(
                      fontFeatures: AppTypography.tabularFigures,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
