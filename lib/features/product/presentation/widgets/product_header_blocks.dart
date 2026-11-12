import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';

export '../../../../core/product/presentation/sku_properties_view.dart';
import '../../../../core/product/domain/sku_selection.dart';

/// Large price, old price and −X%, promo timer, quantity price steps.
///
/// Until every variant is chosen, the lowest possible price is shown with
/// «Цена зависит от варианта» when variants differ.
class ProductPriceBlock extends StatelessWidget {
  const ProductPriceBlock({
    required this.details,
    required this.selection,
    super.key,
  });

  final ProductDetails details;
  final SkuSelection selection;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final sku = selection.sku;
    final range = selection.priceRange;
    final price = sku?.price ?? range?.$1 ?? details.price;
    final oldPrice = sku != null ? sku.oldPrice : details.oldPrice;
    final varies = sku == null && range != null && range.$1 != range.$2;
    final endsAt = details.promoEndsAt;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: AppSpacing.x8,
          runSpacing: AppSpacing.x8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            PriceTag(price: price, oldPrice: oldPrice, size: PriceTagSize.l),
            if (endsAt != null) CountdownTimer(endsAt: endsAt),
          ],
        ),
        if (varies)
          Text(
            l10n.productPriceDepends,
            style: context.text.caption.copyWith(
              color: context.colors.inkSecondary,
            ),
          ),
        if (details.priceTiers.isNotEmpty) ...[
          const SizedBox(height: AppSpacing.x8),
          Wrap(
            spacing: AppSpacing.x8,
            runSpacing: AppSpacing.x8,
            children: [
              for (final tier in details.priceTiers)
                SmallPill(
                  label: l10n.productTier(
                    tier.minQuantity,
                    MoneyFormat.tmt(l10n, tier.price),
                  ),
                  background: context.colors.primarySoft,
                  foreground: context.colors.ink,
                ),
            ],
          ),
        ],
      ],
    );
  }
}

/// Title (3 lines, expandable), rating, reviews and sold count, plus the
/// price-drop bell.
class ProductTitleBlock extends StatelessWidget {
  const ProductTitleBlock({
    required this.title,
    required this.onPriceAlert,
    this.isPriceAlertOn = false,
    this.rating,
    this.reviewCount = 0,
    this.soldCount,
    super.key,
  });

  final String title;
  final double? rating;
  final int reviewCount;
  final int? soldCount;
  final VoidCallback onPriceAlert;

  /// Filled orange bell while subscribed.
  final bool isPriceAlertOn;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final stars = rating;
    final sold = soldCount;
    final meta = context.text.caption.copyWith(color: c.inkSecondary);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandableText(title, maxLines: 3, style: context.text.h2),
        const SizedBox(height: AppSpacing.x4),
        Row(
          children: [
            Expanded(
              child: Wrap(
                spacing: AppSpacing.x8,
                runSpacing: AppSpacing.x4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  if (stars != null) ...[
                    RatingStars(rating: stars),
                    Text(
                      RatingStars.format(stars),
                      style: context.text.bodyStrong,
                    ),
                  ],
                  if (reviewCount > 0)
                    Text(l10n.reviewCount(reviewCount), style: meta),
                  if (sold != null)
                    Text(
                      l10n.productSold(MoneyFormat.compact(l10n, sold)),
                      style: meta,
                    ),
                ],
              ),
            ),
            IconButton(
              onPressed: onPriceAlert,
              tooltip: isPriceAlertOn
                  ? l10n.productPriceAlertOff
                  : l10n.productPriceAlert,
              isSelected: isPriceAlertOn,
              icon: Icon(AppIcons.bell, color: c.inkSecondary),
              selectedIcon: Icon(AppIcons.bellFilled, color: c.primary),
            ),
          ],
        ),
      ],
    );
  }
}
