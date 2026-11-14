import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/photo_camera_cubit.dart';

/// Camera screen of photo search (UI_DESIGN §7.6): viewfinder with a tip,
/// a large shutter, the gallery and the switch-camera button.
///
/// There is no camera plugin yet, so the viewfinder "sees" the device
/// photos from [PhotoCameraCubit] and the switch button points it at the
/// next one. The shutter hands that photo to [onPhoto].
class PhotoCameraView extends StatefulWidget {
  const PhotoCameraView({
    required this.onClose,
    required this.onPhoto,
    super.key,
  });

  final VoidCallback onClose;
  final ValueChanged<String> onPhoto;

  @override
  State<PhotoCameraView> createState() => _PhotoCameraViewState();
}

class _PhotoCameraViewState extends State<PhotoCameraView>
    with SingleTickerProviderStateMixin {
  late final _flash = AnimationController(
    vsync: this,
    duration: AppMotion.fast,
  );
  int _scene = 0;

  @override
  void dispose() {
    _flash.dispose();
    super.dispose();
  }

  Future<void> _shoot(String photo) async {
    unawaited(HapticFeedback.mediumImpact());
    if (!AppMotion.isReduced(context)) {
      await _flash.forward(from: 0);
      await _flash.reverse();
    }
    if (mounted) widget.onPhoto(photo);
  }

  Future<void> _openGallery(List<String> photos) async {
    final picked = await showAppBottomSheet<String>(
      context: context,
      builder: (_) => _GallerySheet(photos: photos),
    );
    if (picked != null && mounted) widget.onPhoto(picked);
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final photos = context.watch<PhotoCameraCubit>().state;
    final scene = photos.isEmpty ? null : photos[_scene % photos.length];
    return Scaffold(
      backgroundColor: c.graphite,
      appBar: AppBar(
        backgroundColor: c.graphite,
        foregroundColor: c.onGraphite,
        leading: IconButton(
          icon: const Icon(AppIcons.close),
          tooltip: l10n.actionClose,
          onPressed: widget.onClose,
        ),
        title: Text(l10n.searchByPhoto),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.screen,
                ),
                child: _Viewfinder(scene: scene, flash: _flash),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.x32,
                vertical: AppSpacing.x24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _GalleryButton(
                    latest: photos.firstOrNull,
                    onPressed: photos.isEmpty
                        ? null
                        : () => _openGallery(photos),
                  ),
                  _ShutterButton(
                    onPressed: scene == null ? null : () => _shoot(scene),
                  ),
                  IconButton(
                    iconSize: AppSizes.icon,
                    color: c.onGraphite,
                    tooltip: l10n.photoCameraSwitch,
                    icon: const Icon(AppIcons.retry),
                    onPressed: photos.length < 2
                        ? null
                        : () => setState(() => _scene++),
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

/// What the camera sees, with focus corners, the tip and the shutter flash.
class _Viewfinder extends StatelessWidget {
  const _Viewfinder({required this.scene, required this.flash});

  final String? scene;
  final Animation<double> flash;

  static const double _guideInset = 0.12;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final url = scene;
    return ClipRRect(
      borderRadius: AppRadii.cardBorder,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ColoredBox(color: c.ink),
          AnimatedSwitcher(
            duration: AppMotion.of(context, AppMotion.slow),
            child: url == null
                ? Icon(
                    AppIcons.camera,
                    key: const ValueKey('no-scene'),
                    size: AppSizes.touchTarget,
                    color: c.inkTertiary,
                  )
                : AppNetworkImage(key: ValueKey(url), url: url),
          ),
          const FractionallySizedBox(
            widthFactor: 1 - 2 * _guideInset,
            heightFactor: 1 - 2 * _guideInset,
            child: _FocusCorners(),
          ),
          Positioned(
            top: AppSpacing.x16,
            left: AppSpacing.x16,
            right: AppSpacing.x16,
            child: Center(child: _Tip(text: context.l10n.photoCameraTip)),
          ),
          IgnorePointer(
            child: FadeTransition(
              opacity: flash,
              child: ColoredBox(color: c.onGraphite),
            ),
          ),
        ],
      ),
    );
  }
}

class _Tip extends StatelessWidget {
  const _Tip({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.scrim,
        borderRadius: AppRadii.chipBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x12,
          vertical: AppSpacing.x8,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: context.text.caption.copyWith(color: c.onGraphite),
        ),
      ),
    );
  }
}

class _FocusCorners extends StatelessWidget {
  const _FocusCorners();

  @override
  Widget build(BuildContext context) => IgnorePointer(
    child: CustomPaint(painter: _CornersPainter(context.colors.onGraphite)),
  );
}

class _CornersPainter extends CustomPainter {
  const _CornersPainter(this.color);

  final Color color;

  static const double _length = 28;
  static const double _width = 3;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = _width
      ..strokeCap = StrokeCap.round;
    final r = Offset.zero & size;
    for (final (point, sx, sy) in [
      (r.topLeft, 1.0, 1.0),
      (r.topRight, -1.0, 1.0),
      (r.bottomLeft, 1.0, -1.0),
      (r.bottomRight, -1.0, -1.0),
    ]) {
      canvas
        ..drawLine(point, point.translate(sx * _length, 0), paint)
        ..drawLine(point, point.translate(0, sy * _length), paint);
    }
  }

  @override
  bool shouldRepaint(_CornersPainter old) => old.color != color;
}

class _ShutterButton extends StatelessWidget {
  const _ShutterButton({required this.onPressed});

  final VoidCallback? onPressed;

  static const double _outer = 76;
  static const double _inner = 60;
  static const double _ring = 4;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      button: true,
      label: context.l10n.photoCameraShutter,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: _outer,
          height: _outer,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: c.onGraphite, width: _ring),
          ),
          child: Container(
            width: _inner,
            height: _inner,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: onPressed == null ? c.inkTertiary : c.onGraphite,
            ),
          ),
        ),
      ),
    );
  }
}

/// Thumbnail of the newest photo, as camera apps show the gallery.
class _GalleryButton extends StatelessWidget {
  const _GalleryButton({required this.latest, required this.onPressed});

  final String? latest;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final url = latest;
    return Semantics(
      button: true,
      label: context.l10n.photoCameraGallery,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: AppSizes.touchTarget,
          height: AppSizes.touchTarget,
          decoration: BoxDecoration(
            borderRadius: AppRadii.imageBorder,
            border: Border.all(
              color: c.onGraphite,
              width: AppSizes.selectedBorder,
            ),
          ),
          child: ClipRRect(
            borderRadius: AppRadii.imageBorder,
            child: url == null
                ? Icon(AppIcons.image, color: c.onGraphite)
                : AppNetworkImage(url: url),
          ),
        ),
      ),
    );
  }
}

/// The photos on the device; pops the chosen one.
class _GallerySheet extends StatelessWidget {
  const _GallerySheet({required this.photos});

  final List<String> photos;

  static const int _columns = 3;

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: context.l10n.photoGalleryTitle,
      child: GridView.count(
        crossAxisCount: _columns,
        mainAxisSpacing: AppSpacing.x8,
        crossAxisSpacing: AppSpacing.x8,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (final photo in photos)
            InkWell(
              borderRadius: AppRadii.imageBorder,
              onTap: () => Navigator.of(context).pop(photo),
              child: ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: AppNetworkImage(url: photo),
              ),
            ),
        ],
      ),
    );
  }
}
