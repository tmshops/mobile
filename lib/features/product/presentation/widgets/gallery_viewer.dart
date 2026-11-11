import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';

/// Full-screen photos with pinch-zoom, swipe and a counter (TZ §5.6.1).
///
/// Videos show their poster: playback arrives with the video feed, which
/// brings the player.
class GalleryViewer extends StatefulWidget {
  const GalleryViewer({
    required this.media,
    required this.initialIndex,
    super.key,
  });

  final List<GalleryMedia> media;
  final int initialIndex;

  @override
  State<GalleryViewer> createState() => _GalleryViewerState();
}

class _GalleryViewerState extends State<GalleryViewer> {
  late int _index = widget.initialIndex;
  late final _controller = PageController(initialPage: widget.initialIndex);

  static const double _maxZoom = 4;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: c.graphite,
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            pageController: _controller,
            itemCount: widget.media.length,
            onPageChanged: (i) => setState(() => _index = i),
            backgroundDecoration: BoxDecoration(color: c.graphite),
            loadingBuilder: (_, _) =>
                Center(child: CircularProgressIndicator(color: c.onGraphite)),
            builder: (context, i) => PhotoViewGalleryPageOptions(
              imageProvider: CachedNetworkImageProvider(
                widget.media[i].imageUrl,
              ),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.contained * _maxZoom,
              errorBuilder: (_, _, _) =>
                  Center(child: Icon(AppIcons.image, color: c.inkTertiary)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.x8),
              child: Row(
                children: [
                  IconCircleButton(
                    icon: AppIcons.close,
                    semanticLabel: l10n.actionClose,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  const Spacer(),
                  SmallPill(
                    label: l10n.galleryCounter(_index + 1, widget.media.length),
                    background: c.graphite.withValues(
                      alpha: AppOpacity.overlayPanel,
                    ),
                    foreground: c.onGraphite,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
