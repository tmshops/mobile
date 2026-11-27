import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/favourites/favourites_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/video_clip.dart';
import 'video_feed_view.dart';

/// One clip: poster, rail, product card and progress (UI_DESIGN §7.3).
///
/// Until a video player is approved (TZ §5.4: video_player, wakelock_plus)
/// «playing» is the poster slowly zooming and the progress bar running
/// for the clip's length; tap toggles sound, holding pauses.
class ClipPage extends StatefulWidget {
  const ClipPage({
    required this.clip,
    required this.isActive,
    required this.isMuted,
    required this.onToggleSound,
    required this.onLike,
    required this.onOpenProduct,
    required this.onAddToCart,
    super.key,
  });

  final VideoClip clip;

  /// On screen, with nothing covering it: plays.
  final bool isActive;
  final bool isMuted;
  final VoidCallback onToggleSound;
  final VoidCallback onLike;
  final VoidCallback onOpenProduct;
  final VoidCallback onAddToCart;

  @override
  State<ClipPage> createState() => _ClipPageState();
}

class _ClipPageState extends State<ClipPage>
    with SingleTickerProviderStateMixin {
  late final _progress = AnimationController(
    vsync: this,
    duration: widget.clip.duration,
  );
  var _isHeld = false;

  static const double _zoom = 0.08;

  @override
  void initState() {
    super.initState();
    _sync();
  }

  @override
  void didUpdateWidget(ClipPage old) {
    super.didUpdateWidget(old);
    // Swiped back to: starts over, like a real feed.
    if (!old.isActive && widget.isActive) _progress.value = 0;
    _sync();
  }

  void _sync() {
    final shouldPlay = widget.isActive && !_isHeld;
    if (shouldPlay && !_progress.isAnimating) {
      _progress.repeat();
    } else if (!shouldPlay && _progress.isAnimating) {
      _progress.stop();
    }
  }

  void _hold({required bool isHeld}) {
    setState(() => _isHeld = isHeld);
    _sync();
  }

  @override
  void dispose() {
    _progress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final clip = widget.clip;
    final isReduced = AppMotion.isReduced(context);
    return Stack(
      fit: StackFit.expand,
      children: [
        GestureDetector(
          onTap: widget.onToggleSound,
          onLongPressStart: (_) => _hold(isHeld: true),
          onLongPressEnd: (_) => _hold(isHeld: false),
          child: AnimatedBuilder(
            animation: _progress,
            builder: (context, child) => Transform.scale(
              scale: isReduced ? 1 : 1 + _zoom * _progress.value,
              child: child,
            ),
            child: AppNetworkImage(
              url: clip.posterUrl,
              semanticLabel: clip.product.title,
            ),
          ),
        ),
        if (_isHeld)
          Center(
            child: Icon(
              AppIcons.pause,
              size: AppSizes.touchTarget * 2,
              color: c.onGraphite,
              semanticLabel: l10n.videoPaused,
            ),
          ),
        SafeArea(
          child: Stack(
            children: [
              const CloseFeedButton(),
              PositionedDirectional(
                top: AppSpacing.x8,
                end: AppSpacing.x8,
                child: IconCircleButton(
                  icon: widget.isMuted ? AppIcons.soundOff : AppIcons.sound,
                  semanticLabel: widget.isMuted
                      ? l10n.videoSoundOn
                      : l10n.videoSoundOff,
                  onPressed: widget.onToggleSound,
                ),
              ),
              PositionedDirectional(
                end: AppSpacing.x8,
                bottom: _ProductCard.height + AppSpacing.x24,
                child: _Rail(clip: clip, onLike: widget.onLike),
              ),
              PositionedDirectional(
                start: AppSpacing.x12,
                end: AppSpacing.x12,
                bottom: AppSpacing.x12,
                child: _ProductCard(
                  product: clip.product,
                  onOpen: widget.onOpenProduct,
                  onAddToCart: widget.onAddToCart,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: AnimatedBuilder(
            animation: _progress,
            builder: (context, _) => LinearProgressIndicator(
              value: _progress.value,
              minHeight: AppSizes.selectedBorder,
              color: c.primary,
              backgroundColor: c.onGraphite.withValues(
                alpha: AppOpacity.disabled,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Like with count, favourite, share.
class _Rail extends StatelessWidget {
  const _Rail({required this.clip, required this.onLike});

  final VideoClip clip;
  final VoidCallback onLike;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final product = clip.product;
    final isFavourite = context.select<FavouritesCubit, bool>(
      (cubit) => cubit.state.contains(product.id),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconCircleButton(
          icon: AppIcons.heart,
          activeIcon: AppIcons.heartFilled,
          activeColor: c.danger,
          isActive: clip.isLiked,
          semanticLabel: l10n.videoLike,
          count: MoneyFormat.compact(l10n, clip.likeCount),
          onPressed: onLike,
        ),
        const SizedBox(height: AppSpacing.x16),
        IconCircleButton(
          icon: AppIcons.starOutline,
          activeIcon: AppIcons.star,
          isActive: isFavourite,
          semanticLabel: l10n.videoFavourite,
          onPressed: () => context.read<FavouritesCubit>().toggle(product),
        ),
        const SizedBox(height: AppSpacing.x16),
        IconCircleButton(
          icon: AppIcons.share,
          semanticLabel: l10n.actionShare,
          onPressed: () => SharePlus.instance.share(
            ShareParams(uri: Uri.parse(clip.shareUrl), title: product.title),
          ),
        ),
      ],
    );
  }
}

/// Glassy card: thumbnail, title, price, «Подробнее», «В корзину».
class _ProductCard extends StatelessWidget {
  const _ProductCard({
    required this.product,
    required this.onOpen,
    required this.onAddToCart,
  });

  final ProductSummary product;
  final VoidCallback onOpen;
  final VoidCallback onAddToCart;

  static const double height = 132;
  static const double _thumb = 56;
  static const double _blur = 16;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return ClipRRect(
      borderRadius: AppRadii.cardBorder,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: _blur, sigmaY: _blur),
        child: ColoredBox(
          color: c.graphite.withValues(alpha: AppOpacity.overlayPanel),
          child: Padding(
            padding: AppSpacing.cardPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: onOpen,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: AppRadii.imageBorder,
                        child: SizedBox.square(
                          dimension: _thumb,
                          child: AppNetworkImage(url: product.imageUrl),
                        ),
                      ),
                      const SizedBox(width: AppSpacing.x12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.text.body.copyWith(
                                color: c.onGraphite,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.x4),
                            PriceTag(
                              price: product.price,
                              oldPrice: product.oldPrice,
                              size: PriceTagSize.s,
                              isOnDark: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.x12),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: c.onGraphite,
                          side: BorderSide(color: c.onGraphite),
                          minimumSize: const Size.fromHeight(
                            AppSizes.buttonMedium,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: AppRadii.buttonBorder,
                          ),
                        ),
                        onPressed: onOpen,
                        child: Text(l10n.videoMore),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.x8),
                    Expanded(
                      child: PrimaryButton(
                        label: l10n.actionAddToCart,
                        size: AppButtonSize.medium,
                        onPressed: onAddToCart,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
