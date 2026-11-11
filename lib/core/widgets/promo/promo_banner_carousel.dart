import 'dart:async';

import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../media/app_network_image.dart';

@immutable
class PromoBannerItem {
  const PromoBannerItem({
    required this.imageUrl,
    required this.semanticLabel,
    this.onTap,
  });

  final String imageUrl;
  final String semanticLabel;
  final VoidCallback? onTap;
}

/// Full-width, radius-16 promo banners that auto-advance, with page dots.
///
/// Auto-play pauses while the user drags and jumps without animation when
/// the OS asks for reduced motion.
class PromoBannerCarousel extends StatefulWidget {
  const PromoBannerCarousel({
    required this.items,
    this.aspectRatio = 2,
    super.key,
  });

  final List<PromoBannerItem> items;

  /// 2:1 by default; 16/9 also fits the brief.
  final double aspectRatio;

  @override
  State<PromoBannerCarousel> createState() => _PromoBannerCarouselState();
}

class _PromoBannerCarouselState extends State<PromoBannerCarousel> {
  final _controller = PageController();
  Timer? _timer;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _startAutoplay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startAutoplay() {
    _timer?.cancel();
    if (widget.items.length < 2) return;
    _timer = Timer.periodic(AppMotion.bannerAutoplay, (_) => _next());
  }

  void _next() {
    if (!_controller.hasClients) return;
    final next = (_page + 1) % widget.items.length;
    if (AppMotion.isReduced(context)) {
      _controller.jumpToPage(next);
    } else {
      _controller.animateToPage(
        next,
        duration: AppMotion.slow,
        curve: AppMotion.enter,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: AppSpacing.screenPadding,
          child: AspectRatio(
            aspectRatio: widget.aspectRatio,
            child: ClipRRect(
              borderRadius: AppRadii.cardBorder,
              child: RepaintBoundary(
                child: NotificationListener<ScrollStartNotification>(
                  onNotification: (n) {
                    // A user drag restarts the timer so it does not flip the
                    // page right after they let go.
                    if (n.dragDetails != null) _startAutoplay();
                    return false;
                  },
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: widget.items.length,
                    onPageChanged: (i) => setState(() => _page = i),
                    itemBuilder: (context, i) => _BannerPage(widget.items[i]),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (widget.items.length > 1) ...[
          const SizedBox(height: AppSpacing.x8),
          PageDots(count: widget.items.length, current: _page),
        ],
      ],
    );
  }
}

class _BannerPage extends StatelessWidget {
  const _BannerPage(this.item);

  final PromoBannerItem item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AppNetworkImage(url: item.imageUrl, semanticLabel: item.semanticLabel),
        Material(
          type: MaterialType.transparency,
          child: InkWell(onTap: item.onTap),
        ),
      ],
    );
  }
}

/// Small page indicator; the current dot stretches into a pill.
class PageDots extends StatelessWidget {
  const PageDots({required this.count, required this.current, super.key});

  final int count;
  final int current;

  static const double _activeWidth = 16;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return ExcludeSemantics(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < count; i++)
            AnimatedContainer(
              duration: AppMotion.of(context, AppMotion.base),
              curve: AppMotion.enter,
              margin: const EdgeInsets.symmetric(horizontal: AppSpacing.x2),
              width: i == current ? _activeWidth : AppSizes.badgeDot,
              height: AppSizes.badgeDot,
              decoration: BoxDecoration(
                color: i == current ? c.primary : c.divider,
                borderRadius: AppRadii.chipBorder,
              ),
            ),
        ],
      ),
    );
  }
}
