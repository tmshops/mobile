import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/reviews_cubits.dart';
import 'review_parts.dart';

/// «Отзывы» of a product (UI_DESIGN §7.19): summary, filter chips and the
/// reviews page by page. Expects [ProductReviewsCubit].
class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});

  static const double _loadMoreExtent = 600;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<ProductReviewsCubit>();
    String language() => context.read<LocaleCubit>().state.languageCode;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.productReviews)),
      body: BlocBuilder<ProductReviewsCubit, ProductReviewsState>(
        builder: (context, state) {
          final summary = state.summary;
          final failure = state.failure;
          if (state.isNotFound) {
            return Center(
              child: EmptyState(
                icon: AppIcons.package,
                title: l10n.productNotFoundTitle,
                message: l10n.productNotFoundText,
              ),
            );
          }
          if (summary == null) {
            if (failure != null) {
              return Center(
                child: SingleChildScrollView(
                  child: FailureView(
                    failure: failure,
                    onRetry: () => cubit.retry(language()),
                  ),
                ),
              );
            }
            return const SkeletonList();
          }
          return NotificationListener<ScrollNotification>(
            onNotification: (n) {
              if (n.metrics.extentAfter < _loadMoreExtent &&
                  state.hasMore &&
                  state.moreFailure == null) {
                cubit.loadMore(language());
              }
              return false;
            },
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ReviewsSummaryHeader(summary: summary),
                ),
                PinnedHeaderSliver(
                  child: ColoredBox(
                    color: context.colors.background,
                    child: ReviewFilterChips(
                      selected: state.filter,
                      onSelect: (f) => cubit.setFilter(language(), f),
                    ),
                  ),
                ),
                ..._list(context, state, cubit, language),
              ],
            ),
          );
        },
      ),
    );
  }

  List<Widget> _list(
    BuildContext context,
    ProductReviewsState state,
    ProductReviewsCubit cubit,
    String Function() language,
  ) {
    final l10n = context.l10n;
    final failure = state.failure;
    if (state.isLoading) {
      return const [SliverToBoxAdapter(child: SkeletonList(itemCount: 3))];
    }
    if (failure != null) {
      return [
        SliverToBoxAdapter(
          child: FailureView(
            failure: failure,
            onRetry: () => cubit.retry(language()),
          ),
        ),
      ];
    }
    if (state.items.isEmpty) {
      return [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.x24),
            child: Text(
              l10n.reviewsNoneForFilter,
              textAlign: TextAlign.center,
              style: context.text.body.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
          ),
        ),
      ];
    }
    return [
      SliverList.separated(
        itemCount: state.items.length,
        separatorBuilder: (_, _) => Divider(
          height: AppSizes.hairline,
          indent: AppSpacing.screen,
          endIndent: AppSpacing.screen,
          color: context.colors.divider,
        ),
        itemBuilder: (context, i) => ReviewCard(
          key: ValueKey(state.items[i].id),
          review: state.items[i],
          onPhoto: (urls, index) =>
              showPhotoViewer(context, urls, initialIndex: index),
        ),
      ),
      SliverToBoxAdapter(
        child: switch (state) {
          ProductReviewsState(isLoadingMore: true) => const Padding(
            padding: EdgeInsets.all(AppSpacing.x16),
            child: Center(child: CircularProgressIndicator()),
          ),
          ProductReviewsState(moreFailure: _?) => Padding(
            padding: AppSpacing.screenPadding,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.walletLoadMoreFailed,
                    style: context.text.caption,
                  ),
                ),
                TertiaryButton(
                  label: l10n.actionRetry,
                  onPressed: () => cubit.loadMore(language()),
                ),
              ],
            ),
          ),
          _ => const SizedBox(height: AppSpacing.section),
        },
      ),
    ];
  }
}
