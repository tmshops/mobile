import 'package:flutter/material.dart';

import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/presentation/product_summary_tile.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/category_products_bloc.dart';

/// The list part of the product page: skeleton, failure, empty, or the
/// products as a 2-column grid or rows, with a bottom loader.
class ProductResultsSlivers extends StatelessWidget {
  const ProductResultsSlivers({
    required this.state,
    required this.isListView,
    required this.onOpenProduct,
    required this.onRetry,
    required this.onLoadMore,
    required this.onClearFilters,
    super.key,
  });

  final CategoryProductsState state;
  final bool isListView;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onRetry;
  final VoidCallback onLoadMore;
  final VoidCallback onClearFilters;

  static const _skeletonRows = 2;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final items = state.items;
    final isFirstLoad =
        items.isEmpty && state.status == ProductsStatus.loadingFirst;
    if (isFirstLoad) {
      return SliverPadding(
        padding: const EdgeInsets.all(AppSpacing.screen),
        sliver: SliverList.separated(
          itemCount: _skeletonRows,
          separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.x16),
          itemBuilder: (_, _) => const Row(
            children: [
              Expanded(child: SkeletonTile()),
              SizedBox(width: AppSpacing.x12),
              Expanded(child: SkeletonTile()),
            ],
          ),
        ),
      );
    }
    if (items.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: switch (state.failure) {
            final failure? => FailureView(failure: failure, onRetry: onRetry),
            null when !state.query.filters.isEmpty => EmptyState(
              icon: AppIcons.filter,
              title: l10n.catalogEmptyFilteredTitle,
              message: l10n.catalogEmptyFilteredText,
              actionLabel: l10n.catalogClearFilters,
              onAction: onClearFilters,
            ),
            null => EmptyState(
              icon: AppIcons.package,
              title: l10n.catalogEmptyTitle,
              message: l10n.catalogEmptyText,
            ),
          },
        ),
      );
    }
    return SliverMainAxisGroup(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x8,
            AppSpacing.screen,
            0,
          ),
          sliver: isListView ? _rows() : _grid(),
        ),
        SliverToBoxAdapter(child: _footer(context)),
      ],
    );
  }

  Widget _grid() {
    final items = state.items;
    return SliverList.separated(
      itemCount: (items.length + 1) ~/ 2,
      separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.x16),
      // Rows of two, not a fixed-extent grid: tiles grow with long
      // Turkmen titles and large text instead of clipping.
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
    );
  }

  Widget _rows() {
    final items = state.items;
    return SliverList.separated(
      itemCount: items.length,
      separatorBuilder: (_, _) => const Divider(height: AppSpacing.x16),
      itemBuilder: (context, i) => ProductSummaryRow(
        product: items[i],
        onTap: () => onOpenProduct(items[i]),
      ),
    );
  }

  Widget _footer(BuildContext context) {
    final Widget? child = switch (state.status) {
      ProductsStatus.loadingMore => const Center(
        child: SizedBox.square(
          dimension: AppSizes.icon,
          child: CircularProgressIndicator(
            strokeWidth: AppSizes.selectedBorder,
          ),
        ),
      ),
      ProductsStatus.failure => Column(
        children: [
          Text(
            context.l10n.listLoadMoreError,
            textAlign: TextAlign.center,
            style: context.text.caption.copyWith(
              color: context.colors.inkSecondary,
            ),
          ),
          TertiaryButton(
            label: context.l10n.actionRetry,
            icon: AppIcons.retry,
            onPressed: onLoadMore,
          ),
        ],
      ),
      ProductsStatus.idle ||
      ProductsStatus.loadingFirst ||
      ProductsStatus.notFound => null,
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
