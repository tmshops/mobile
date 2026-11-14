import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/favourites/favourites_cubit.dart';
import '../../../../core/price_alerts/price_alerts_cubit.dart';
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
/// [ProductBloc] and the global cubits (cart, favourites, price alerts,
/// session, region, locale) above it.
class ProductView extends StatefulWidget {
  const ProductView({
    required this.onOpenProduct,
    required this.onOpenCart,
    required this.onLogin,
    required this.onAllReviews,
    required this.onComingSoon,
    required this.onQuickOrder,
    this.onHome,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCart;

  /// A guest tapped something that needs an account (the price bell).
  final VoidCallback onLogin;

  /// «Все отзывы».
  final VoidCallback onAllReviews;

  /// For actions whose screens do not exist yet (checkout, reviews, …).
  final VoidCallback onComingSoon;

  /// «Купить сейчас»: the chosen variant goes to a quick order (TZ §5.11).
  final ValueChanged<CartItem> onQuickOrder;

  /// «На главную» on «Товар не найден».
  final VoidCallback? onHome;

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
    final line = _line(details);
    if (line == null) return;
    if (purpose == SkuSheetPurpose.buyNow) {
      widget.onQuickOrder(line);
      return;
    }
    await _addToCart(line);
  }

  /// The chosen variant, quantity and note as one line; `null` until a
  /// variant is chosen.
  CartItem? _line(ProductDetails details) {
    final state = _bloc.state;
    final selection = state.selection;
    final sku = selection?.sku;
    if (selection == null || sku == null) return null;
    final comment = state.comment.trim();
    return CartItem(
      productId: details.id,
      skuId: sku.id,
      skuLabel: selection.label,
      title: details.title,
      imageUrl:
          selection.chosenImage ?? details.media.firstOrNull?.imageUrl ?? '',
      price: sku.price,
      quantity: state.quantity,
      comment: comment.isEmpty ? null : comment,
      sellerName: details.seller?.name,
    );
  }

  Future<void> _addToCart(CartItem line) async {
    unawaited(HapticFeedback.lightImpact());
    unawaited(context.read<CartCubit>().add(line));
    await flyToTarget(
      context,
      from: _imageKey,
      to: _cartKey,
      imageUrl: line.imageUrl,
    );
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

  /// Subscriptions live on the account: a guest is asked to sign in.
  Future<void> _togglePriceAlert() async {
    final details = _bloc.state.details;
    if (details == null) return;
    if (context.read<AuthCubit>().state is! AuthSignedIn) {
      widget.onLogin();
      return;
    }
    final result = await context.read<PriceAlertsCubit>().toggle(
      context.read<LocaleCubit>().state.languageCode,
      details.summary,
    );
    if (!mounted) return;
    final l10n = context.l10n;
    result.match(
      (failure) => showAppToast(
        context,
        message: actionFailureText(l10n, failure),
        icon: AppIcons.warning,
      ),
      (isOn) => showAppToast(
        context,
        message: switch (isOn) {
          true => l10n.priceAlertOn,
          false => l10n.priceAlertOff,
          null => l10n.productNotFoundTitle,
        },
        icon: isOn == true ? AppIcons.bellFilled : null,
      ),
    );
  }

  void _toggleFavourite() {
    final state = _bloc.state;
    final product = state.details?.summary ?? state.preview;
    if (product == null) return;
    unawaited(HapticFeedback.lightImpact());
    unawaited(context.read<FavouritesCubit>().toggle(product));
  }

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
                onPriceAlert: _togglePriceAlert,
                onAllReviews: widget.onAllReviews,
                onHome: widget.onHome,
              ),
              _TopButtons(
                cartKey: _cartKey,
                onOpenCart: widget.onOpenCart,
                productId: state.details?.id ?? state.preview?.id,
                onFavourite: _toggleFavourite,
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
    required this.onPriceAlert,
    required this.onAllReviews,
    required this.onHome,
  });

  final ProductState state;
  final GlobalKey imageKey;
  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onComingSoon;
  final VoidCallback onPriceAlert;
  final VoidCallback onAllReviews;
  final VoidCallback? onHome;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final failure = state.failure;
    if (state.status == ProductStatus.notFound) {
      return ServiceView(
        icon: AppIcons.package,
        title: l10n.productNotFoundTitle,
        message: l10n.productNotFoundText,
        actionLabel: l10n.serviceHomeAction,
        onAction: onHome,
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
        // Gallery and content sheet share one sliver on purpose: a viewport
        // paints earlier slivers on top of later ones, which would hide the
        // part of the sheet that overlaps the gallery (and the gap above the
        // price with it). In a Column the later child paints on top.
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (media.isEmpty)
                const AspectRatio(
                  aspectRatio: 1,
                  child: Shimmer(
                    child: SkeletonBox(borderRadius: BorderRadius.zero),
                  ),
                )
              else
                ProductGallery(
                  media: media,
                  title: details?.title ?? state.preview?.title ?? '',
                  imageKey: imageKey,
                ),
              // The content sheet overlaps the gallery by its corner radius.
              Transform.translate(
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
                          onPriceAlert: onPriceAlert,
                          onAllReviews: onAllReviews,
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Floating white circles over the photo: back, share, favourite, cart
/// with badge.
class _TopButtons extends StatelessWidget {
  const _TopButtons({
    required this.cartKey,
    required this.onOpenCart,
    required this.onShare,
    required this.productId,
    required this.onFavourite,
  });

  final GlobalKey cartKey;
  final VoidCallback onOpenCart;

  /// `null` hides share (no link yet).
  final VoidCallback? onShare;

  /// `null` hides the heart (nothing to save yet).
  final String? productId;
  final VoidCallback onFavourite;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final share = onShare;
    final id = productId;
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
            if (id != null) ...[
              BlocSelector<FavouritesCubit, FavouritesState, bool>(
                selector: (favourites) => favourites.contains(id),
                builder: (context, isFavourite) => IconCircleButton(
                  icon: AppIcons.heart,
                  activeIcon: AppIcons.heartFilled,
                  isActive: isFavourite,
                  activeColor: context.colors.danger,
                  style: IconCircleStyle.light,
                  semanticLabel: isFavourite
                      ? l10n.favouriteRemove
                      : l10n.favouriteAdd,
                  onPressed: onFavourite,
                ),
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
  });

  final ProductState state;
  final VoidCallback onAddToCart;

  /// «Купить сейчас» is the quick order (TZ §5.11).
  final VoidCallback onBuyNow;

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
