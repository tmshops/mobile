import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';
import 'product_info_blocks.dart';

/// Average, photo strip and the first reviews, with «Все отзывы»
/// (TZ §5.6.8; the full list is its own screen).
class ReviewsPreview extends StatelessWidget {
  const ReviewsPreview({
    required this.reviews,
    required this.onAllReviews,
    super.key,
  });

  final ReviewsSummary reviews;
  final VoidCallback onAllReviews;

  static const double _photo = 72;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProductSectionTitle(l10n.productReviews),
        Wrap(
          spacing: AppSpacing.x8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(RatingStars.format(reviews.average), style: context.text.h2),
            RatingStars(rating: reviews.average),
            Text(
              l10n.reviewCount(reviews.count),
              style: context.text.caption.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
          ],
        ),
        if (reviews.photoUrls.isNotEmpty) ...[
          const SizedBox(height: AppSpacing.x12),
          SizedBox(
            height: _photo,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: reviews.photoUrls.length,
              separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.x8),
              itemBuilder: (_, i) => ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: SizedBox.square(
                  dimension: _photo,
                  child: AppNetworkImage(url: reviews.photoUrls[i]),
                ),
              ),
            ),
          ),
        ],
        for (final review in reviews.items) _ReviewCard(review: review),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TertiaryButton(
            label: l10n.productAllReviews,
            onPressed: onAllReviews,
          ),
        ),
      ],
    );
  }
}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({required this.review});

  final Review review;

  static const double _avatar = 36;
  static const double _photo = 56;

  /// «28.10.2026». Month names wait for proper Turkmen date formatting.
  static String _date(DateTime d) {
    String two(int v) => v.toString().padLeft(2, '0');
    return '${two(d.day)}.${two(d.month)}.${d.year}';
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final meta = context.text.caption.copyWith(color: c.inkSecondary);
    final sku = review.skuLabel;
    final initial = review.author.isEmpty ? '' : review.author.characters.first;
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.x16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Text(initial, style: context.text.bodyStrong),
              ),
              const SizedBox(width: AppSpacing.x8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(review.author, style: context.text.bodyStrong),
                    Text(_date(review.date), style: meta),
                  ],
                ),
              ),
              RatingStars(rating: review.rating.toDouble()),
            ],
          ),
          if (sku != null) ...[
            const SizedBox(height: AppSpacing.x4),
            Text(sku, style: meta),
          ],
          const SizedBox(height: AppSpacing.x4),
          ExpandableText(review.text, maxLines: 5),
          if (review.photoUrls.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.x8),
            Wrap(
              spacing: AppSpacing.x8,
              children: [
                for (final url in review.photoUrls)
                  ClipRRect(
                    borderRadius: AppRadii.imageBorder,
                    child: SizedBox.square(
                      dimension: _photo,
                      child: AppNetworkImage(url: url),
                    ),
                  ),
              ],
            ),
          ],
          if (review.isTranslated) ...[
            const SizedBox(height: AppSpacing.x4),
            Row(
              children: [
                Icon(
                  AppIcons.translate,
                  size: AppSizes.iconSmall,
                  color: c.info,
                ),
                const SizedBox(width: AppSpacing.x4),
                Flexible(
                  child: Text(context.l10n.productTranslated, style: meta),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
