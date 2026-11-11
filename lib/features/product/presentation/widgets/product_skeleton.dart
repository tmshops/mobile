import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Content placeholder while details load. With a [preview] (the tapped
/// tile) the real price and title show at once; the rest shimmers.
class ProductSkeleton extends StatelessWidget {
  const ProductSkeleton({this.preview, super.key});

  final ProductSummary? preview;

  static const double _line = 14;
  static const double _block = 120;
  static const double _price = 30;
  static const double _priceWidth = 140;
  static const _lineFactors = [1.0, 0.8, 0.6];

  @override
  Widget build(BuildContext context) {
    final p = preview;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x20,
        AppSpacing.screen,
        AppSpacing.x32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (p != null) ...[
            PriceTag(
              price: p.price,
              oldPrice: p.oldPrice,
              size: PriceTagSize.l,
            ),
            const SizedBox(height: AppSpacing.x12),
            Text(p.title, style: context.text.h2, maxLines: 3),
            const SizedBox(height: AppSpacing.x16),
          ],
          Semantics(
            label: context.l10n.loading,
            child: Shimmer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (p == null) ...[
                    const SkeletonBox(width: _priceWidth, height: _price),
                    const SizedBox(height: AppSpacing.x16),
                  ],
                  for (final factor in _lineFactors) ...[
                    FractionallySizedBox(
                      widthFactor: factor,
                      child: const SkeletonBox(height: _line),
                    ),
                    const SizedBox(height: AppSpacing.x8),
                  ],
                  const SizedBox(height: AppSpacing.x16),
                  const SkeletonBox(
                    width: double.infinity,
                    height: _block,
                    borderRadius: AppRadii.cardBorder,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
