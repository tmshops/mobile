import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../utils/money_format.dart';
import 'product_badge.dart';

enum PriceTagSize { s, m, l }

/// Current price, struck-through old price and a `−25%` badge.
///
/// Wraps onto a second line on narrow tiles instead of overflowing, and is
/// read by screen readers as one phrase («216 манатов, было 260 манатов»).
class PriceTag extends StatelessWidget {
  const PriceTag({
    required this.price,
    this.oldPrice,
    this.size = PriceTagSize.m,
    this.showDiscountBadge = true,
    this.isOnDark = false,
    super.key,
  });

  final int price;
  final int? oldPrice;
  final PriceTagSize size;
  final bool showDiscountBadge;

  /// For the video overlay: old price turns light so it stays readable.
  final bool isOnDark;

  /// Discount in whole percent, or `null` when there is no valid old price.
  int? get discountPercent {
    final old = oldPrice;
    if (old == null || old <= price || old == 0) return null;
    return ((old - price) * 100 / old).round();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final l10n = context.l10n;
    final percent = discountPercent;
    final old = percent == null ? null : oldPrice;

    final priceStyle = switch (size) {
      PriceTagSize.s => t.bodyStrong.copyWith(
        fontWeight: FontWeight.w700,
        fontFeatures: AppTypography.tabularFigures,
      ),
      PriceTagSize.m => t.price,
      PriceTagSize.l => t.priceLarge,
    };
    final oldStyle = (size == PriceTagSize.l ? t.body : t.caption).copyWith(
      color: isOnDark ? c.onGraphite : c.inkTertiary,
      decoration: TextDecoration.lineThrough,
      decorationColor: isOnDark ? c.onGraphite : c.inkTertiary,
      fontFeatures: AppTypography.tabularFigures,
    );

    final spokenPrice = l10n.priceSpoken(price);
    final semantics = old == null
        ? spokenPrice
        : l10n.priceWithOldSpoken(spokenPrice, l10n.priceSpoken(old));

    return Semantics(
      label: semantics,
      excludeSemantics: true,
      child: Wrap(
        spacing: AppSpacing.x8,
        runSpacing: AppSpacing.x4,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            MoneyFormat.tmt(l10n, price),
            style: priceStyle.copyWith(color: c.primary),
          ),
          if (old != null) Text(MoneyFormat.tmt(l10n, old), style: oldStyle),
          if (percent != null && showDiscountBadge)
            ProductBadge.discount(percent),
        ],
      ),
    );
  }
}
