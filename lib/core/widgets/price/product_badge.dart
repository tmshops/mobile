import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

enum ProductBadgeKind { hit, discount, newArrival }

/// Small pill on a product image or next to a price: Хит / −25% / Новинка.
class ProductBadge extends StatelessWidget {
  const ProductBadge.hit({super.key})
    : kind = ProductBadgeKind.hit,
      percent = 0;

  const ProductBadge.newArrival({super.key})
    : kind = ProductBadgeKind.newArrival,
      percent = 0;

  const ProductBadge.discount(this.percent, {super.key})
    : kind = ProductBadgeKind.discount;

  final ProductBadgeKind kind;

  /// Only used by [ProductBadgeKind.discount].
  final int percent;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final (label, background, foreground) = switch (kind) {
      ProductBadgeKind.hit => (l10n.badgeHit, c.accent, c.ink),
      ProductBadgeKind.discount => (
        l10n.discountPercent(percent),
        c.primaryPressed,
        c.onPrimary,
      ),
      ProductBadgeKind.newArrival => (l10n.badgeNew, c.graphite, c.onGraphite),
    };
    return SmallPill(
      label: label,
      background: background,
      foreground: foreground,
    );
  }
}

/// «иллюстрация» marker on AI-generated replacement photos (UI_DESIGN §4.4).
class IllustrationMarker extends StatelessWidget {
  const IllustrationMarker({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return SmallPill(
      label: context.l10n.badgeIllustration,
      background: c.graphite.withValues(alpha: AppOpacity.overlayPanel),
      foreground: c.onGraphite,
    );
  }
}

/// Base pill shared by badges and markers.
class SmallPill extends StatelessWidget {
  const SmallPill({
    required this.label,
    required this.background,
    required this.foreground,
    super.key,
  });

  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: AppRadii.badgeBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x8,
          vertical: AppSpacing.x2,
        ),
        child: Text(
          label,
          maxLines: 1,
          style: context.text.micro.copyWith(
            color: foreground,
            fontFeatures: AppTypography.tabularFigures,
          ),
        ),
      ),
    );
  }
}
