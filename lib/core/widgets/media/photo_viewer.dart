import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../buttons/icon_circle_button.dart';
import '../price/product_badge.dart';

/// Full-screen photos with pinch-zoom, swipe and a counter: product
/// gallery (TZ §5.6.1), review photos. Videos are shown by their poster.
class PhotoViewer extends StatefulWidget {
  const PhotoViewer({
    required this.urls,
    required this.initialIndex,
    super.key,
  });

  final List<String> urls;
  final int initialIndex;

  @override
  State<PhotoViewer> createState() => _PhotoViewerState();
}

class _PhotoViewerState extends State<PhotoViewer> {
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
            itemCount: widget.urls.length,
            onPageChanged: (i) => setState(() => _index = i),
            backgroundDecoration: BoxDecoration(color: c.graphite),
            loadingBuilder: (_, _) =>
                Center(child: CircularProgressIndicator(color: c.onGraphite)),
            builder: (context, i) => PhotoViewGalleryPageOptions(
              imageProvider: CachedNetworkImageProvider(widget.urls[i]),
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
                    label: l10n.galleryCounter(_index + 1, widget.urls.length),
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

/// Opens [urls] full-screen at [initialIndex].
Future<void> showPhotoViewer(
  BuildContext context,
  List<String> urls, {
  int initialIndex = 0,
}) => Navigator.of(context).push(
  MaterialPageRoute<void>(
    fullscreenDialog: true,
    builder: (_) => PhotoViewer(urls: urls, initialIndex: initialIndex),
  ),
);
