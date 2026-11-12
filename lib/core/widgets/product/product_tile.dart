import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../utils/money_format.dart';
import '../media/app_network_image.dart';
import '../price/price_tag.dart';
import '../price/product_badge.dart';
import 'favourite_button.dart';

/// Product card for the 2-column grid and (compact) for carousels.
///
/// The whole tile is one tap target with a ripple; the heart has its own.
class ProductTile extends StatelessWidget {
  const ProductTile({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onTap,
    this.oldPrice,
    this.badges = const [],
    this.soldCount,
    this.isFavourite = false,
    this.onFavouriteToggle,
    this.isIllustration = false,
    this.isCompact = false,
    this.isDimmed = false,
    this.imageFooter,
    this.footer,
    super.key,
  });

  final String imageUrl;
  final String title;
  final int price;
  final int? oldPrice;

  /// Top-left badges: Хит / −X% / Новинка.
  final List<ProductBadge> badges;
  final int? soldCount;
  final bool isFavourite;

  /// `null` hides the heart.
  final VoidCallback? onFavouriteToggle;

  /// Photo is AI-generated: shows the «иллюстрация» marker.
  final bool isIllustration;

  /// Carousel variant: smaller text, no sold counter.
  final bool isCompact;

  /// Greys the photo and price: the product cannot be bought now.
  final bool isDimmed;

  /// Strip along the bottom of the photo, e.g. «Цена снизилась −15%».
  final Widget? imageFooter;

  /// Under the price, e.g. a «Похожие» link.
  final Widget? footer;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final sold = soldCount;
    return Material(
      color: c.background,
      borderRadius: AppRadii.imageBorder,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.imageBorder,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _TileImage(
              imageUrl: imageUrl,
              title: title,
              badges: badges,
              isFavourite: isFavourite,
              onFavouriteToggle: onFavouriteToggle,
              isIllustration: isIllustration,
              isDimmed: isDimmed,
              strip: imageFooter,
            ),
            const SizedBox(height: AppSpacing.x8),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: isCompact ? t.caption : t.body,
            ),
            const SizedBox(height: AppSpacing.x4),
            Opacity(
              opacity: isDimmed ? AppOpacity.disabled : 1,
              child: PriceTag(
                price: price,
                oldPrice: oldPrice,
                size: isCompact ? PriceTagSize.s : PriceTagSize.m,
                // The badge already sits on the image.
                showDiscountBadge: false,
              ),
            ),
            if (sold != null && !isCompact) ...[
              const SizedBox(height: AppSpacing.x4),
              Text(
                context.l10n.productSold(
                  MoneyFormat.compact(context.l10n, sold),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: t.caption.copyWith(color: c.inkSecondary),
              ),
            ],
            ?footer,
            const SizedBox(height: AppSpacing.x4),
          ],
        ),
      ),
    );
  }
}

class _TileImage extends StatelessWidget {
  const _TileImage({
    required this.imageUrl,
    required this.title,
    required this.badges,
    required this.isFavourite,
    required this.onFavouriteToggle,
    required this.isIllustration,
    required this.isDimmed,
    required this.strip,
  });

  final String imageUrl;
  final String title;
  final List<ProductBadge> badges;
  final bool isFavourite;
  final VoidCallback? onFavouriteToggle;
  final bool isIllustration;
  final bool isDimmed;
  final Widget? strip;

  @override
  Widget build(BuildContext context) {
    final onFavourite = onFavouriteToggle;
    final bottom = strip;
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: AppRadii.imageBorder,
            child: Opacity(
              opacity: isDimmed ? AppOpacity.disabled : 1,
              child: AppNetworkImage(url: imageUrl, semanticLabel: title),
            ),
          ),
          if (badges.isNotEmpty)
            Positioned(
              top: AppSpacing.x8,
              left: AppSpacing.x8,
              right: AppSizes.touchTarget,
              child: Wrap(
                spacing: AppSpacing.x4,
                runSpacing: AppSpacing.x4,
                children: badges,
              ),
            ),
          if (onFavourite != null)
            Positioned(
              top: 0,
              right: 0,
              child: FavouriteButton(
                isFavourite: isFavourite,
                onPressed: onFavourite,
              ),
            ),
          if (isIllustration && bottom == null)
            const Positioned(
              left: AppSpacing.x8,
              bottom: AppSpacing.x8,
              child: IllustrationMarker(),
            ),
          if (bottom != null)
            Positioned(
              left: AppSpacing.x8,
              right: AppSpacing.x8,
              bottom: AppSpacing.x8,
              child: bottom,
            ),
        ],
      ),
    );
  }
}
