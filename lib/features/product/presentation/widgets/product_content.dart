import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/price_alerts/price_alerts_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/product/presentation/product_summary_tile.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/region/region_picker_sheet.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/product_bloc.dart';
import 'delivery_block.dart';
import 'product_header_blocks.dart';
import 'product_info_blocks.dart';
import 'product_sheets.dart';
import 'reviews_preview.dart';

/// The white sheet under the gallery with every block of a loaded product.
class ProductContent extends StatelessWidget {
  const ProductContent({
    required this.state,
    required this.onOpenProduct,
    required this.onComingSoon,
    required this.onPriceAlert,
    required this.onAllReviews,
    required this.onFindSimilar,
    super.key,
  });

  final ProductState state;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onComingSoon;
  final VoidCallback onPriceAlert;
  final VoidCallback onAllReviews;

  /// «Найти похожие»: photo search by this product's photo.
  final VoidCallback onFindSimilar;

  @override
  Widget build(BuildContext context) {
    final details = state.details;
    final selection = state.selection;
    if (details == null || selection == null) return const SizedBox.shrink();
    final l10n = context.l10n;
    final bloc = context.read<ProductBloc>();
    final stock = state.stock;
    final chart = details.sizeChart;
    final seller = details.seller;
    final reviews = details.reviews;
    void sizeChart() {
      if (chart != null) showSizeChart(context, chart);
    }

    final similar = _Carousel(
      title: l10n.productSimilar,
      products: details.similar,
      onOpen: onOpenProduct,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x20,
            AppSpacing.screen,
            0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (!details.isAvailable) ...[
                const _UnavailableBanner(),
                const SizedBox(height: AppSpacing.x16),
              ],
              ProductPriceBlock(details: details, selection: selection),
              const SizedBox(height: AppSpacing.x12),
              ProductTitleBlock(
                title: details.title,
                rating: details.rating,
                reviewCount: details.reviewCount,
                soldCount: details.soldCount,
                onPriceAlert: onPriceAlert,
                isPriceAlertOn: context.select<PriceAlertsCubit, bool>(
                  (alerts) => alerts.state.isOn(details.id),
                ),
              ),
              if (details.isAvailable) ...[
                const SizedBox(height: AppSpacing.x16),
                SkuPropertiesView(
                  selection: selection,
                  onSizeChart: chart == null ? null : sizeChart,
                  onSelect: (propertyId, valueId) => bloc.add(
                    ProductEvent.valueSelected(
                      propertyId: propertyId,
                      valueId: valueId,
                    ),
                  ),
                ),
                if (stock != null) ...[
                  StockNote(stock: stock),
                  const SizedBox(height: AppSpacing.x12),
                ],
                QuantityRow(
                  quantity: state.quantity,
                  max: stock,
                  onChanged: (q) => bloc.add(ProductEvent.quantityChanged(q)),
                ),
                CommentField(
                  initial: state.comment,
                  onChanged: (t) => bloc.add(ProductEvent.commentChanged(t)),
                ),
                const SizedBox(height: AppSpacing.x8),
                BlocBuilder<RegionCubit, RegionState>(
                  builder: (context, region) => DeliveryBlock(
                    quotes: state.delivery,
                    status: state.deliveryStatus,
                    regionName: region.selectedName,
                    onRetry: () =>
                        bloc.add(const ProductEvent.deliveryRetried()),
                    onChangeRegion: () => _pickRegion(context, region),
                  ),
                ),
              ],
              const SizedBox(height: AppSpacing.x8),
              const HowItWorksBlock(),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TertiaryButton(
                  label: l10n.productFindSimilar,
                  icon: AppIcons.camera,
                  onPressed: onFindSimilar,
                ),
              ),
              if (details.descriptionHtml.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.x16),
                DescriptionBlock(html: details.descriptionHtml),
              ],
              if (details.specs.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.x24),
                SpecsTable(specs: details.specs),
              ],
              if (seller != null) ...[
                const SizedBox(height: AppSpacing.x24),
                SellerCard(seller: seller, onAllProducts: onComingSoon),
              ],
              if (reviews != null) ...[
                const SizedBox(height: AppSpacing.x24),
                ReviewsPreview(reviews: reviews, onAllReviews: onAllReviews),
              ],
            ],
          ),
        ),
        if (details.similar.isNotEmpty) similar,
        if (details.boughtTogether.isNotEmpty)
          _Carousel(
            title: l10n.productBoughtTogether,
            products: details.boughtTogether,
            onOpen: onOpenProduct,
          ),
        const SizedBox(height: AppSpacing.x32),
      ],
    );
  }

  static Future<void> _pickRegion(
    BuildContext context,
    RegionState region,
  ) async {
    final cubit = context.read<RegionCubit>();
    final id = await showRegionPicker(
      context,
      regions: region.regions,
      selectedId: region.selectedId,
    );
    if (id != null) await cubit.select(id);
  }
}

class _Carousel extends StatelessWidget {
  const _Carousel({
    required this.title,
    required this.products,
    required this.onOpen,
  });

  final String title;
  final List<ProductSummary> products;
  final ValueChanged<ProductSummary> onOpen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.section),
      child: ProductCarousel(
        title: title,
        itemCount: products.length,
        itemBuilder: (context, i) => ProductSummaryTile(
          product: products[i],
          isCompact: true,
          onTap: () => onOpen(products[i]),
        ),
      ),
    );
  }
}

class _UnavailableBanner extends StatelessWidget {
  const _UnavailableBanner();

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.danger.withValues(alpha: AppOpacity.tint),
        borderRadius: AppRadii.cardBorder,
      ),
      child: Padding(
        padding: AppSpacing.cardPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(AppIcons.error, color: c.danger),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.productOutOfStock, style: context.text.h3),
                  Text(l10n.productUnavailableText, style: context.text.body),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
