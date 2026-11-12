import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/review.dart';
import '../bloc/reviews_cubits.dart';
import 'review_parts.dart';

/// «Мои отзывы» (UI_DESIGN §7.19): status chips, the reason of a rejected
/// one and the store's reply. Expects [MyReviewsCubit].
class MyReviewsView extends StatelessWidget {
  const MyReviewsView({required this.onOpenProduct, super.key});

  final ValueChanged<String> onOpenProduct;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<MyReviewsCubit>();
    String language() => context.read<LocaleCubit>().state.languageCode;
    return Scaffold(
      backgroundColor: context.colors.surface,
      appBar: AppBar(
        backgroundColor: context.colors.surface,
        title: Text(l10n.profileReviews),
      ),
      body: BlocBuilder<MyReviewsCubit, MyReviewsState>(
        builder: (context, state) => switch (state) {
          MyReviewsState(items: [], isLoading: true) => const SkeletonList(),
          MyReviewsState(items: [], :final failure?) => Center(
            child: SingleChildScrollView(
              child: FailureView(
                failure: failure,
                onRetry: () => cubit.load(language()),
              ),
            ),
          ),
          MyReviewsState(items: []) => Center(
            child: SingleChildScrollView(
              child: EmptyState(
                icon: AppIcons.starOutline,
                title: l10n.reviewsMineEmptyTitle,
                message: l10n.reviewsMineEmptyText,
              ),
            ),
          ),
          MyReviewsState(:final items) => RefreshIndicator(
            onRefresh: () => cubit.load(language()),
            child: ListView(
              padding: const EdgeInsets.only(
                top: AppSpacing.x8,
                bottom: AppSpacing.section,
              ),
              children: [
                for (final r in items)
                  MyReviewCard(
                    key: ValueKey(r.id),
                    review: r,
                    onOpen: () => onOpenProduct(r.productId),
                  ),
              ],
            ),
          ),
        },
      ),
    );
  }
}

class MyReviewCard extends StatelessWidget {
  const MyReviewCard({required this.review, required this.onOpen, super.key});

  final MyReview review;
  final VoidCallback onOpen;

  static const double _image = 56;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final r = review;
    final reason = r.rejectReason;
    final reply = r.storeReply;
    final (status, tone, icon) = switch (r.status) {
      MyReviewStatus.moderation => (
        l10n.reviewsStatusModeration,
        StatusTone.warning,
        AppIcons.clock,
      ),
      MyReviewStatus.published => (
        l10n.reviewsStatusPublished,
        StatusTone.success,
        AppIcons.checkCircle,
      ),
      MyReviewStatus.rejected => (
        l10n.reviewsStatusRejected,
        StatusTone.danger,
        AppIcons.close,
      ),
    };
    return ContentCard(
      onTap: onOpen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: SizedBox.square(
                  dimension: _image,
                  child: AppNetworkImage(
                    url: r.imageUrl,
                    semanticLabel: r.title,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      r.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.body,
                    ),
                    const SizedBox(height: AppSpacing.x2),
                    Row(
                      children: [
                        RatingStars(rating: r.rating.toDouble()),
                        const SizedBox(width: AppSpacing.x8),
                        Flexible(
                          child: Text(
                            AppDates.dayMonth(l10n, r.date),
                            style: context.text.caption.copyWith(
                              color: c.inkSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (r.text.isNotEmpty) ...[
            const SizedBox(height: AppSpacing.x8),
            Text(
              r.text,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: context.text.body,
            ),
          ],
          const SizedBox(height: AppSpacing.x8),
          StatusChip(label: status, tone: tone, icon: icon),
          if (reason != null) ...[
            const SizedBox(height: AppSpacing.x4),
            Text(
              l10n.reviewsRejectReason(reason),
              style: context.text.caption.copyWith(color: c.danger),
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
