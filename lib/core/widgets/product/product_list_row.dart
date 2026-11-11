import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../utils/money_format.dart';
import '../media/app_network_image.dart';
import '../price/price_tag.dart';
import '../price/product_badge.dart';

/// Product as a full-width row (list view of a product list): image left,
/// title, price and sold count right.
class ProductListRow extends StatelessWidget {
  const ProductListRow({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onTap,
    this.oldPrice,
    this.badges = const [],
    this.soldCount,
    this.isIllustration = false,
    super.key,
  });

  final String imageUrl;
  final String title;
  final int price;
  final int? oldPrice;
  final List<ProductBadge> badges;
  final int? soldCount;
  final bool isIllustration;
  final VoidCallback onTap;

  static const double _image = 104;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final sold = soldCount;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.imageBorder,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox.square(
              dimension: _image,
              child: ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    AppNetworkImage(url: imageUrl, semanticLabel: title),
                    if (isIllustration)
                      const Positioned(
                        left: AppSpacing.x4,
                        bottom: AppSpacing.x4,
                        child: IllustrationMarker(),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (badges.isNotEmpty) ...[
                    Wrap(
                      spacing: AppSpacing.x4,
                      runSpacing: AppSpacing.x4,
                      children: badges,
                    ),
                    const SizedBox(height: AppSpacing.x4),
                  ],
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.text.body,
                  ),
                  const SizedBox(height: AppSpacing.x4),
                  PriceTag(
                    price: price,
                    oldPrice: oldPrice,
                    showDiscountBadge: false,
                  ),
                  if (sold != null) ...[
                    const SizedBox(height: AppSpacing.x2),
                    Text(
                      context.l10n.productSold(
                        MoneyFormat.compact(context.l10n, sold),
                      ),
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
