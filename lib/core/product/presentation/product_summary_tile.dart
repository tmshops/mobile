import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../favourites/favourites_cubit.dart';
import '../../widgets/widgets.dart';
import '../domain/product_summary.dart';

/// Kit product widgets for a [ProductSummary]: [ProductSummaryTile] for
/// grids and carousels, [ProductSummaryRow] for list view.
///
/// The heart follows [FavouritesCubit], so it is the same on every screen.
class ProductSummaryTile extends StatelessWidget {
  const ProductSummaryTile({
    required this.product,
    required this.onTap,
    this.isCompact = false,
    this.imageFooter,
    super.key,
  });

  final ProductSummary product;
  final VoidCallback onTap;
  final bool isCompact;

  /// Strip along the bottom of the photo, e.g. «Сходство 94 %».
  final Widget? imageFooter;

  @override
  Widget build(BuildContext context) {
    final isFavourite = context.select<FavouritesCubit, bool>(
      (cubit) => cubit.state.contains(product.id),
    );
    return ProductTile(
      imageUrl: product.imageUrl,
      title: product.title,
      price: product.price,
      oldPrice: product.oldPrice,
      soldCount: product.soldCount,
      isIllustration: product.isIllustration,
      isCompact: isCompact,
      imageFooter: imageFooter,
      onTap: onTap,
      badges: productBadges(product),
      isFavourite: isFavourite,
      onFavouriteToggle: () => context.read<FavouritesCubit>().toggle(product),
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
      badges: productBadges(product),
    );
  }
}

/// Top-left badges of a tile: Хит / −X% / Новинка.
List<ProductBadge> productBadges(ProductSummary product) {
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
