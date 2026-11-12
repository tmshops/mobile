import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';

/// Edge-to-edge 1:1 gallery: swipe, «3/12» counter, video slides with a
/// play button, tap → full-screen zoom (TZ §5.6.1).
class ProductGallery extends StatefulWidget {
  const ProductGallery({
    required this.media,
    required this.title,
    required this.imageKey,
    super.key,
  });

  final List<GalleryMedia> media;

  /// Read by screen readers for every photo.
  final String title;

  /// Marks the visible photo, as the start of the add-to-cart flight.
  final GlobalKey imageKey;

  @override
  State<ProductGallery> createState() => _ProductGalleryState();
}

class _ProductGalleryState extends State<ProductGallery> {
  final _controller = PageController();
  int _page = 0;

  @override
  void didUpdateWidget(ProductGallery oldWidget) {
    super.didUpdateWidget(oldWidget);
    // A new colour puts its photo first: show it.
    if (oldWidget.media.firstOrNull != widget.media.firstOrNull &&
        _controller.hasClients) {
      _controller.jumpToPage(0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _open(int index) => showPhotoViewer(context, [
    for (final m in widget.media) m.imageUrl,
  ], initialIndex: index);

  @override
  Widget build(BuildContext context) {
    final media = widget.media;
    final current = media.isEmpty
        ? null
        : media[_page.clamp(0, media.length - 1)];
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        fit: StackFit.expand,
        children: [
          RepaintBoundary(
            child: PageView.builder(
              controller: _controller,
              itemCount: media.length,
              onPageChanged: (i) => setState(() => _page = i),
              itemBuilder: (context, i) => GestureDetector(
                onTap: () => _open(i),
                child: _Slide(
                  key: i == _page ? widget.imageKey : null,
                  media: media[i],
                  title: widget.title,
                ),
              ),
            ),
          ),
          if (media.length > 1)
            Positioned(
              right: AppSpacing.x12,
              // Above the 24-dp rounded edge of the content sheet.
              bottom: AppRadii.sheet + AppSpacing.x8,
              child: SmallPill(
                label: context.l10n.galleryCounter(_page + 1, media.length),
                background: context.colors.graphite.withValues(
                  alpha: AppOpacity.overlayPanel,
                ),
                foreground: context.colors.onGraphite,
              ),
            ),
          if (current?.isIllustration ?? false)
            const Positioned(
              left: AppSpacing.x12,
              bottom: AppRadii.sheet + AppSpacing.x8,
              child: IllustrationMarker(),
            ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide({required this.media, required this.title, super.key});

  final GalleryMedia media;
  final String title;

  @override
  Widget build(BuildContext context) {
    final image = AppNetworkImage(url: media.imageUrl, semanticLabel: title);
    if (media.kind == MediaKind.image) return image;
    return Stack(
      fit: StackFit.expand,
      children: [
        image,
        Center(
          child: Semantics(
            label: context.l10n.productVideo,
            child: const _PlayBadge(),
          ),
        ),
      ],
    );
  }
}

class _PlayBadge extends StatelessWidget {
  const _PlayBadge();

  static const double _size = 64;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: c.graphite.withValues(alpha: AppOpacity.overlayPanel),
        shape: BoxShape.circle,
      ),
      child: Icon(AppIcons.play, color: c.onGraphite, size: AppSizes.icon),
    );
  }
}
