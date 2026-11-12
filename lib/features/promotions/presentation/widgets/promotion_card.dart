import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/promotion.dart';

/// «Скидка», «Скидка дня», «2+1», «Бесплатная доставка».
class PromotionBadge extends StatelessWidget {
  const PromotionBadge({required this.type, super.key});

  final PromotionType type;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final (label, color) = switch (type) {
      PromotionType.discount => (l10n.promoTypeDiscount, c.danger),
      PromotionType.dayDeal => (l10n.promoTypeDayDeal, c.primary),
      PromotionType.bundle => (l10n.promoTypeBundle, c.accent),
      PromotionType.freeDelivery => (l10n.promoTypeFreeDelivery, c.success),
      PromotionType.other => (l10n.promoTypeOther, c.graphite),
    };
    return SmallPill(label: label, background: color, foreground: c.onPrimary);
  }
}

/// A live countdown in the last [_countdownFrom], before that the end date.
class PromotionEnds extends StatelessWidget {
  const PromotionEnds({
    required this.endsAt,
    this.onEnded,
    this.now = DateTime.now,
    super.key,
  });

  final DateTime endsAt;
  final VoidCallback? onEnded;

  /// Clock override for tests.
  final DateTime Function() now;

  static const _countdownFrom = Duration(days: 3);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final left = endsAt.difference(now());
    if (left < _countdownFrom) {
      return Semantics(
        label: l10n.promoEndsSoon,
        child: CountdownTimer(
          endsAt: endsAt,
          tone: StatusTone.danger,
          onFinished: onEnded,
          now: now,
        ),
      );
    }
    return SmallPill(
      label: l10n.promoUntil(AppDates.dayMonth(l10n, endsAt)),
      background: context.colors.surface,
      foreground: context.colors.ink,
    );
  }
}

/// List card (UI_DESIGN §7.16): 2:1 banner with the type badge, title,
/// subtitle, end date or countdown.
class PromotionCard extends StatelessWidget {
  const PromotionCard({
    required this.promotion,
    required this.onTap,
    this.onEnded,
    this.now = DateTime.now,
    super.key,
  });

  final Promotion promotion;
  final VoidCallback onTap;
  final VoidCallback? onEnded;
  final DateTime Function() now;

  @override
  Widget build(BuildContext context) {
    final p = promotion;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.section,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.cardBorder,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: AppRadii.cardBorder,
                    child: AppNetworkImage(
                      url: p.imageUrl,
                      semanticLabel: p.title,
                    ),
                  ),
                  PositionedDirectional(
                    top: AppSpacing.x8,
                    start: AppSpacing.x8,
                    child: PromotionBadge(type: p.type),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.x8),
            Text(p.title, style: context.text.h3),
            const SizedBox(height: AppSpacing.x2),
            Text(
              p.subtitle,
              style: context.text.body.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
            const SizedBox(height: AppSpacing.x8),
            PromotionEnds(endsAt: p.endsAt, onEnded: onEnded, now: now),
          ],
        ),
      ),
    );
  }
}
