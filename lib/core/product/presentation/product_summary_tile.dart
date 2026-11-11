import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import '../domain/product_summary.dart';

/// Kit product widgets for a [ProductSummary]: [ProductSummaryTile] for
/// grids and carousels, [ProductSummaryRow] for list view.
///
/// No heart yet: favourites arrive with their own feature, and a heart that
/// forgets its state would mislead.
class ProductSummaryTile extends StatelessWidget {
  const ProductSummaryTile({
    required this.product,
    required this.onTap,
    this.isCompact = false,
    super.key,
  });

  final ProductSummary product;
  final VoidCallback onTap;
  final bool isCompact;

  @override
  Widget build(BuildContext context) {
    return ProductTile(
      imageUrl: product.imageUrl,
      title: product.title,
      price: product.price,
      oldPrice: product.oldPrice,
      soldCount: product.soldCount,
      isIllustration: product.isIllustration,
      isCompact: isCompact,
      onTap: onTap,
      badges: _badges(product),
    );
  }
}

class ProductSummaryRow extends StatelessWidget {
  const ProductSummaryRow({
    required this.product,
    required this.onTap,
    super.key,
  });

  final ProductSummary product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ProductListRow(
      imageUrl: product.imageUrl,
      title: product.title,
      price: product.price,
      oldPrice: product.oldPrice,
      soldCount: product.soldCount,
      isIllustration: product.isIllustration,
      onTap: onTap,
      badges: _badges(product),
    );
  }
}

List<ProductBadge> _badges(ProductSummary product) {
  final discount = PriceTag(
    price: product.price,
    oldPrice: product.oldPrice,
  ).discountPercent;
  return [
    if (product.marks.contains(ProductMark.hit)) const ProductBadge.hit(),
    if (discount != null) ProductBadge.discount(discount),
    if (product.marks.contains(ProductMark.newArrival))
      const ProductBadge.newArrival(),
  ];
}
