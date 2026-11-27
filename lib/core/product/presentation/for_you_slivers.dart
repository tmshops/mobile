import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../widgets/widgets.dart';
import '../domain/product_summary.dart';
import 'for_you_bloc.dart';
import 'product_summary_tile.dart';

/// Recommendations: [title] header, 2-column grid and a bottom loader /
/// retry row. Expects [ForYouBloc]; the screen asks for more pages on
/// scroll.
///
/// Rows of two tiles rather than a fixed-extent grid, so tiles grow with
/// Turkmen titles and large text instead of clipping.
class ForYouSlivers extends StatelessWidget {
  const ForYouSlivers({
    required this.title,
    required this.onOpenProduct,
    super.key,
  });

  final String title;

  /// The tapped tile, passed on as the product page preview.
  final ValueChanged<ProductSummary> onOpenProduct;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouBloc, ForYouState>(
      builder: (context, state) {
        final items = state.items;
        final rows = (items.length + 1) ~/ 2;
        return SliverMainAxisGroup(
          slivers: [
            if (items.isNotEmpty || state.status == ForYouStatus.loadingFirst)
              SliverPadding(
                padding: const EdgeInsets.only(
                  top: AppSpacing.section,
                  bottom: AppSpacing.x12,
                ),
                sliver: SliverToBoxAdapter(child: SectionHeader(title: title)),
              ),
            SliverPadding(
              padding: AppSpacing.screenPadding,
              sliver: SliverList.separated(
                itemCount: rows,
                separatorBuilder: (_, _) =>
                    const SizedBox(height: AppSpacing.x16),
                itemBuilder: (context, row) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var col = 0; col < 2; col++) ...[
                      if (col == 1) const SizedBox(width: AppSpacing.x12),
                      Expanded(
                        child: switch (row * 2 + col) {
                          final i when i < items.length => ProductSummaryTile(
                            product: items[i],
                            onTap: () => onOpenProduct(items[i]),
                          ),
                          _ => const SizedBox.shrink(),
                        },
                      ),
                    ],
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: _Footer(state: state)),
          ],
        );
      },
    );
  }
}

/// Asks [ForYouBloc] for the next page when the vertical scroll in [child]
/// comes within [loadMoreExtent] of its end.
class ForYouPager extends StatelessWidget {
  const ForYouPager({
    required this.child,
    this.loadMoreExtent = 800,
    this.canLoadMore,
    super.key,
  });

  final Widget child;
  final double loadMoreExtent;

  /// Checked on every scroll, e.g. so the home screen waits for its own
  /// content before paging the grid under it. `null`: always allowed.
  final ValueGetter<bool>? canLoadMore;

  bool _onScroll(BuildContext context, ScrollNotification n) {
    final forYou = context.read<ForYouBloc>();
    if ((canLoadMore?.call() ?? true) &&
        n.metrics.axis == Axis.vertical &&
        n.metrics.extentAfter < loadMoreExtent &&
        forYou.state.status == ForYouStatus.idle &&
        forYou.state.hasMore) {
      forYou.add(const ForYouEvent.nextPageRequested());
    }
    return false;
  }

  @override
  Widget build(BuildContext context) =>
      NotificationListener<ScrollNotification>(
        onNotification: (n) => _onScroll(context, n),
        child: child,
      );
}

class _Footer extends StatelessWidget {
  const _Footer({required this.state});

  final ForYouState state;

  @override
  Widget build(BuildContext context) {
    final Widget? child = switch (state.status) {
      ForYouStatus.loadingFirst => const Padding(
        padding: AppSpacing.screenPadding,
        child: Row(
          children: [
            Expanded(child: SkeletonTile()),
            SizedBox(width: AppSpacing.x12),
            Expanded(child: SkeletonTile()),
          ],
        ),
      ),
      ForYouStatus.loadingMore => const Center(
        child: SizedBox.square(
          dimension: AppSizes.icon,
          child: CircularProgressIndicator(
            strokeWidth: AppSizes.selectedBorder,
          ),
        ),
      ),
      ForYouStatus.failure => Column(
        children: [
          Text(
            context.l10n.homeForYouError,
            textAlign: TextAlign.center,
            style: context.text.caption.copyWith(
              color: context.colors.inkSecondary,
            ),
          ),
          TertiaryButton(
            label: context.l10n.actionRetry,
            icon: AppIcons.retry,
            onPressed: () => context.read<ForYouBloc>().add(
              const ForYouEvent.nextPageRequested(),
            ),
          ),
        ],
      ),
      ForYouStatus.initial || ForYouStatus.idle => null,
    };
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSpacing.x16,
        bottom: AppSpacing.x32,
      ),
      child: child,
    );
  }
}
