import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/product/presentation/variant_sheet.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/video_feed_cubit.dart';
import '../widgets/video_feed_view.dart';

/// Full-screen video feed (TZ §5.4), opened at [startId].
class VideoFeedPage extends StatelessWidget {
  const VideoFeedPage({
    required this.onOpenProduct,
    required this.onOpenCart,
    this.startId,
    super.key,
  });

  final String? startId;

  /// Completes when the customer comes back to the feed.
  final Future<void> Function(ProductSummary product) onOpenProduct;
  final VoidCallback onOpenCart;

  /// «В корзину» opens the variant sheet over the video (UI_DESIGN §7.3).
  Future<void> _addToCart(BuildContext context, ProductSummary product) async {
    final l10n = context.l10n;
    final cart = context.read<CartCubit>();
    final chosen = await showVariantSheet(
      context,
      productId: product.id,
      title: product.title,
      actionLabel: l10n.actionAddToCart,
    );
    if (chosen == null || !context.mounted) return;
    await cart.add(
      CartItem(
        productId: product.id,
        title: product.title,
        imageUrl: chosen.imageUrl ?? product.imageUrl,
        price: chosen.sku.price,
        quantity: 1,
        skuId: chosen.sku.id,
        skuLabel: chosen.label,
      ),
    );
    if (!context.mounted) return;
    showAppToast(
      context,
      message: l10n.productAdded,
      icon: AppIcons.checkCircle,
      actionLabel: l10n.actionGoTo,
      onAction: onOpenCart,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideoFeedCubit>()
        ..load(
          context.read<LocaleCubit>().state.languageCode,
          startId: startId,
        ),
      child: Builder(
        builder: (context) => VideoFeedView(
          startId: startId,
          onOpenProduct: onOpenProduct,
          onAddToCart: (product) => _addToCart(context, product),
        ),
      ),
    );
  }
}
