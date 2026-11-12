import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/review.dart';

/// Big «4,7», stars, count and five distribution bars (UI_DESIGN §7.19).
class ReviewsSummaryHeader extends StatelessWidget {
  const ReviewsSummaryHeader({required this.summary, super.key});

  final ReviewsSummary summary;

  static const double _barHeight = 6;
  static const double _countWidth = 32;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final top = summary.distribution.values.fold<int>(
      0,
      (a, b) => a > b ? a : b,
    );
    return Padding(
      padding: AppSpacing.screenPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                RatingStars.format(summary.average),
                style: context.text.display.copyWith(
                  fontFeatures: AppTypography.tabularFigures,
                ),
              ),
              RatingStars(rating: summary.average, size: AppSizes.iconDense),
              const SizedBox(height: AppSpacing.x4),
              Text(
                l10n.reviewCount(summary.count),
                style: context.text.caption.copyWith(color: c.inkSecondary),
              ),
            ],
          ),
          const SizedBox(width: AppSpacing.x24),
          Expanded(
            child: Column(
              children: [
                for (var stars = 5; stars >= 1; stars--)
                  Semantics(
                    label: l10n.reviewsBarSpoken(
                      stars,
                      summary.distribution[stars] ?? 0,
                    ),
                    excludeSemantics: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSpacing.x2,
                      ),
                      child: Row(
                        children: [
                          Text('$stars', style: context.text.caption),
                          const SizedBox(width: AppSpacing.x4),
                          Icon(
                            AppIcons.star,
                            size: AppSizes.iconTiny,
                            color: c.accent,
                          ),
                          const SizedBox(width: AppSpacing.x8),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: AppRadii.badgeBorder,
                              child: LinearProgressIndicator(
                                value: top == 0
                                    ? 0
                                    : (summary.distribution[stars] ?? 0) / top,
                                minHeight: _barHeight,
                                backgroundColor: c.surface,
                                color: c.accent,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: _countWidth,
                            child: Text(
                              '${summary.distribution[stars] ?? 0}',
                              textAlign: TextAlign.end,
                              style: context.text.caption.copyWith(
                                color: c.inkSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String reviewFilterLabel(AppLocalizations l10n, ReviewFilter filter) =>
    switch (filter) {
      ReviewFilter.all => l10n.reviewsFilterAll,
      ReviewFilter.photos => l10n.reviewsFilterPhotos,
      ReviewFilter.translated => l10n.reviewsFilterTranslated,
      _ => l10n.reviewsFilterStars(filter.stars ?? 0),
    };

/// Chips: Все / С фото / 5★ … 1★ / Переведённые.
class ReviewFilterChips extends StatelessWidget {
  const ReviewFilterChips({
    required this.selected,
    required this.onSelect,
    super.key,
  });

  final ReviewFilter selected;
  final ValueChanged<ReviewFilter> onSelect;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.symmetric(
      horizontal: AppSpacing.x12,
      vertical: AppSpacing.x8,
    ),
    child: Row(
      children: [
        for (final filter in ReviewFilter.values)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x4),
            child: AppChip(
              label: reviewFilterLabel(context.l10n, filter),
              isSelected: filter == selected,
              onTap: () => onSelect(filter),
            ),
          ),
      ],
    ),
  );
}

/// One review (UI_DESIGN §7.19): initials, name, date, stars, variant,
/// text with «Ещё», photos, «Переведено с китайского», store reply.
class ReviewCard extends StatelessWidget {
  const ReviewCard({required this.review, required this.onPhoto, super.key});

  final ProductReview review;

  /// Opens the review's photos at the tapped one.
  final void Function(List<String> urls, int index) onPhoto;

  static const double _avatar = 36;
  static const double _photo = 72;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final r = review;
    final sku = r.skuLabel;
    final reply = r.storeReply;
    final initial = r.author.trim().isEmpty
        ? '?'
        : r.author.trim()[0].toUpperCase();
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x12,
        AppSpacing.screen,
        AppSpacing.x12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ExcludeSemantics(
                child: Container(
                  width: _avatar,
                  height: _avatar,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: c.primarySoft,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    initial,
                    style: context.text.bodyStrong.copyWith(color: c.primary),
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(r.author, style: context.text.bodyStrong),
                    Text(
                      AppDates.dayMonth(l10n, r.date),
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              RatingStars(rating: r.rating.toDouble()),
            ],
          ),
          if (sku != null) ...[
            const SizedBox(height: AppSpacing.x8),
            Text(
              l10n.reviewsVariant(sku),
              style: context.text.caption.copyWith(color: c.inkSecondary),
            ),
          ],
          const SizedBox(height: AppSpacing.x8),
          ExpandableText(r.text, maxLines: 5),
          if (r.photoUrls.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.x8),
            Wrap(
              spacing: AppSpacing.x8,
              runSpacing: AppSpacing.x8,
              children: [
                for (final (i, url) in r.photoUrls.indexed)
                  Semantics(
                    button: true,
                    label: l10n.reviewsPhoto(i + 1, r.photoUrls.length),
                    child: InkWell(
                      onTap: () => onPhoto(r.photoUrls, i),
                      borderRadius: AppRadii.imageBorder,
                      child: ClipRRect(
                        borderRadius: AppRadii.imageBorder,
                        child: SizedBox.square(
                          dimension: _photo,
                          child: AppNetworkImage(url: url),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
          if (r.isTranslated) ...[
            const SizedBox(height: AppSpacing.x8),
            Row(
              children: [
                Icon(
                  AppIcons.translate,
                  size: AppSizes.iconSmall,
                  color: c.inkTertiary,
                ),
                const SizedBox(width: AppSpacing.x4),
                Flexible(
                  child: Text(
                    l10n.reviewsTranslated,
                    style: context.text.caption.copyWith(color: c.inkTertiary),
                  ),
                ),
              ],
            ),
          ],
          if (reply != null) ...[
            const SizedBox(height: AppSpacing.x8),
            StoreReply(text: reply),
          ],
        ],
      ),
    );
  }
}

/// The store's answer as an indented grey block.
class StoreReply extends StatelessWidget {
  const StoreReply({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: AppSpacing.x16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: c.surface,
          borderRadius: AppRadii.cardBorder,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.x12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.reviewsStoreReply,
                style: context.text.caption.copyWith(
                  color: c.inkSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppSpacing.x4),
              Text(text, style: context.text.body),
            ],
          ),
        ),
      ),
    );
  }
}

/// Five big stars: tap or drag across, a light haptic on each change,
/// «Ужасно … Отлично» under them.
class StarPicker extends StatelessWidget {
  const StarPicker({required this.rating, required this.onChanged, super.key});

  /// 0 = nothing picked yet.
  final int rating;
  final ValueChanged<int> onChanged;

  static const double _star = 44;
  static const _count = 5;

  void _pick(double dx, double width) {
    final stars = (dx / (width / _count)).ceil().clamp(1, _count);
    if (stars == rating) return;
    HapticFeedback.selectionClick();
    onChanged(stars);
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final label = switch (rating) {
      1 => l10n.reviewsRating1,
      2 => l10n.reviewsRating2,
      3 => l10n.reviewsRating3,
      4 => l10n.reviewsRating4,
      5 => l10n.reviewsRating5,
      _ => l10n.reviewsRatingPick,
    };
    const width = _star * _count;
    return Column(
      children: [
        Semantics(
          label: l10n.reviewsRatingSpoken,
          // Always a value: an adjustable node needs one with its actions.
          value: rating == 0 ? label : l10n.ratingSpoken('$rating'),
          increasedValue: rating < _count
              ? l10n.ratingSpoken('${rating + 1}')
              : null,
          decreasedValue: rating > 1
              ? l10n.ratingSpoken('${rating - 1}')
              : null,
          onIncrease: rating < _count ? () => onChanged(rating + 1) : null,
          onDecrease: rating > 1 ? () => onChanged(rating - 1) : null,
          excludeSemantics: true,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapDown: (d) => _pick(d.localPosition.dx, width),
            onHorizontalDragUpdate: (d) => _pick(d.localPosition.dx, width),
            child: SizedBox(
              width: width,
              height: _star,
              child: Row(
                children: [
                  for (var i = 1; i <= _count; i++)
                    Icon(
                      i <= rating ? AppIcons.star : AppIcons.starOutline,
                      size: _star,
                      color: i <= rating ? c.accent : c.inkTertiary,
                    ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.x8),
        Text(
          label,
          style: context.text.bodyStrong.copyWith(
            color: rating == 0 ? c.inkSecondary : c.ink,
          ),
        ),
      ],
    );
  }
}
