import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';
import '../bloc/product_bloc.dart';
import 'product_content.dart';
import 'product_gallery.dart';
import 'product_sheets.dart';
import 'product_skeleton.dart';

/// Product page layout and actions (UI_DESIGN §7.5). Expects
/// [ProductBloc], [CartCubit], [RegionCubit] and [LocaleCubit] above it.
class ProductView extends StatefulWidget {
  const ProductView({
    required this.onOpenProduct,
    required this.onOpenCart,
    required this.onComingSoon,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCart;

  /// For actions whose screens do not exist yet (checkout, reviews, …).
  final VoidCallback onComingSoon;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final _imageKey = GlobalKey();
  final _cartKey = GlobalKey();

  ProductBloc get _bloc => context.read<ProductBloc>();

  Future<void> _onAction(SkuSheetPurpose purpose) async {
    final state = _bloc.state;
    final details = state.details;
    final selection = state.selection;
    if (details == null || selection == null) return;
    final isReady = selection.sku != null && (state.stock ?? 0) > 0;
    if (!isReady) {
      final chart = details.sizeChart;
      final confirmed = await showSkuSheet(
        context,
        purpose: purpose,
        onSizeChart: chart == null ? null : () => showSizeChart(context, chart),
      );
      if (!confirmed || !mounted) return;
    }
    // Checkout is not built yet; «Купить сейчас» says so.
    if (purpose == SkuSheetPurpose.buyNow) {
      widget.onComingSoon();
      return;
    }
    await _addToCart(details);
  }

  Future<void> _addToCart(ProductDetails details) async {
    final state = _bloc.state;
    final selection = state.selection;
    final sku = selection?.sku;
    if (selection == null || sku == null) return;
    final image =
        selection.chosenImage ?? details.media.firstOrNull?.imageUrl ?? '';
    final comment = state.comment.trim();
    unawaited(HapticFeedback.lightImpact());
    unawaited(
      context.read<CartCubit>().add(
        CartItem(
          productId: details.id,
          skuId: sku.id,
          skuLabel: selection.label,
          title: details.title,
          imageUrl: image,
          price: sku.price,
          quantity: state.quantity,
          comment: comment.isEmpty ? null : comment,
          sellerName: details.seller?.name,
        ),
      ),
    );
    await flyToTarget(context, from: _imageKey, to: _cartKey, imageUrl: image);
    if (!mounted) return;
    final l10n = context.l10n;
    showAppToast(
      context,
      message: l10n.productAdded,
      icon: AppIcons.checkCircle,
      actionLabel: l10n.actionGoTo,
      onAction: widget.onOpenCart,
    );
  }

  Future<void> _share(String url, String title) =>
      SharePlus.instance.share(ShareParams(uri: Uri.parse(url), title: title));

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RegionCubit, RegionState>(
          listenWhen: (a, b) => a.selectedId != b.selectedId,
          listener: (_, region) =>
              _bloc.add(ProductEvent.regionChanged(region.selectedId)),
        ),
        BlocListener<LocaleCubit, Locale>(
          listener: (context, locale) => _bloc.add(
            ProductEvent.started(
              languageCode: locale.languageCode,
              id: _bloc.state.details?.id ?? _bloc.state.preview?.id ?? '',
              regionId: context.read<RegionCubit>().state.selectedId,
            ),
          ),
        ),
      ],
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) => Scaffold(
          body: Stack(
            children: [
              _Body(
                state: state,
                imageKey: _imageKey,
                onOpenProduct: widget.onOpenProduct,
                onComingSoon: widget.onComingSoon,
              ),
              _TopButtons(
                cartKey: _cartKey,
                onOpenCart: widget.onOpenCart,
                onShare: switch (state.details) {
                  ProductDetails(:final shareUrl?, :final title) =>
                    () => _share(shareUrl, title),
                  _ => null,
                },
              ),
            ],
          ),
          bottomNavigationBar: _ActionBar(
            state: state,
            onAddToCart: () => _onAction(SkuSheetPurpose.addToCart),
            onBuyNow: () => _onAction(SkuSheetPurpose.buyNow),
            onQuickOrder: widget.onComingSoon,
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.state,
    required this.imageKey,
    required this.onOpenProduct,
    required this.onComingSoon,
  });

  final ProductState state;
  final GlobalKey imageKey;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onComingSoon;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final failure = state.failure;
    if (state.status == ProductStatus.notFound) {
      return Center(
        child: EmptyState(
          icon: AppIcons.package,
          title: l10n.productNotFoundTitle,
          message: l10n.productNotFoundText,
        ),
      );
    }
    if (state.details == null && failure != null) {
      return Center(
        child: SingleChildScrollView(
          child: FailureView(
            failure: failure,
            onRetry: () =>
                context.read<ProductBloc>().add(const ProductEvent.retried()),
          ),
        ),
      );
    }
    final details = state.details;
    final selection = state.selection;
    // A picked colour moves its photo to the front of the gallery.
    final chosen = selection?.chosenImage;
    final media = details == null
        ? [
            if (state.preview case final p?)
              GalleryMedia(kind: MediaKind.image, imageUrl: p.imageUrl),
          ]
        : [
            if (chosen != null)
              GalleryMedia(kind: MediaKind.image, imageUrl: chosen),
            ...details.media,
          ];
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: media.isEmpty
              ? const AspectRatio(
                  aspectRatio: 1,
                  child: Shimmer(
                    child: SkeletonBox(borderRadius: BorderRadius.zero),
                  ),
                )
              : ProductGallery(
                  media: media,
                  title: details?.title ?? state.preview?.title ?? '',
                  imageKey: imageKey,
                ),
        ),
        SliverToBoxAdapter(
          // The content sheet overlaps the gallery by its corner radius.
          child: Transform.translate(
            offset: const Offset(0, -AppRadii.sheet),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.colors.background,
                borderRadius: AppRadii.sheetBorder,
              ),
              child: details == null
                  ? ProductSkeleton(preview: state.preview)
                  : ProductContent(
                      state: state,
                      onOpenProduct: onOpenProduct,
                      onComingSoon: onComingSoon,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Floating white circles over the photo: back, share, cart with badge.
class _TopButtons extends StatelessWidget {
  const _TopButtons({
    required this.cartKey,
    required this.onOpenCart,
    required this.onShare,
  });

  final GlobalKey cartKey;
  final VoidCallback onOpenCart;

  /// `null` hides share (no link yet).
  final VoidCallback? onShare;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final share = onShare;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.x8),
        child: Row(
          children: [
            IconCircleButton(
              icon: AppIcons.back,
              style: IconCircleStyle.light,
              semanticLabel: l10n.actionBack,
              onPressed: () => Navigator.of(context).maybePop(),
            ),
            const Spacer(),
            if (share != null) ...[
              IconCircleButton(
                icon: AppIcons.share,
                style: IconCircleStyle.light,
                semanticLabel: l10n.actionShare,
                onPressed: share,
              ),
              const SizedBox(width: AppSpacing.x8),
            ],
            BlocSelector<CartCubit, CartState, int>(
              selector: (cart) => cart.positions,
              builder: (context, count) => Stack(
                clipBehavior: Clip.none,
                children: [
                  IconCircleButton(
                    key: cartKey,
                    icon: AppIcons.cart,
                    style: IconCircleStyle.light,
                    semanticLabel: count > 0
                        ? l10n.navTabSemantics(
                            l10n.tabCart,
                            l10n.navCartCount(count),
                          )
                        : l10n.tabCart,
                    onPressed: onOpenCart,
                  ),
                  if (count > 0)
                    Positioned(
                      top: -AppSpacing.x2,
                      right: -AppSpacing.x2,
                      child: CountBadge(count: count),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar({
    required this.state,
    required this.onAddToCart,
    required this.onBuyNow,
    required this.onQuickOrder,
  });

  final ProductState state;
  final VoidCallback onAddToCart;
  final VoidCallback onBuyNow;
  final VoidCallback onQuickOrder;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final details = state.details;
    if (state.status == ProductStatus.notFound ||
        (details == null && state.failure != null)) {
      return const SizedBox.shrink();
    }
    if (details != null && !details.isAvailable) {
      return StickyActionBar(
        primary: PrimaryButton(label: l10n.productOutOfStock, onPressed: null),
      );
    }
    final isReady = details != null;
    return StickyActionBar(
      above: TertiaryButton(
        label: l10n.productQuickOrder,
        onPressed: isReady ? onQuickOrder : null,
      ),
      secondary: SecondaryButton(
        label: l10n.actionAddToCart,
        onPressed: isReady ? onAddToCart : null,
      ),
      primary: PrimaryButton(
        label: l10n.actionBuyNow,
        onPressed: isReady ? onBuyNow : null,
      ),
    );
  }
}
