import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../media/app_network_image.dart';

/// Flies a small copy of [imageUrl] from [from] to [to] in an overlay:
/// the add-to-cart motion of UI_DESIGN §4.5. Completes when it lands.
/// Does nothing when motion is reduced or either widget is not on screen.
Future<void> flyToTarget(
  BuildContext context, {
  required GlobalKey from,
  required GlobalKey to,
  required String imageUrl,
}) async {
  if (AppMotion.isReduced(context)) return;
  final start = _rectOf(from);
  final end = _rectOf(to);
  final overlay = Overlay.maybeOf(context);
  if (start == null || end == null || overlay == null) return;

  late final OverlayEntry entry;
  final landed = Future<void>.delayed(_FlyingImage.duration);
  entry = OverlayEntry(
    builder: (_) => _FlyingImage(start: start, end: end, imageUrl: imageUrl),
  );
  overlay.insert(entry);
  await landed;
  entry.remove();
}

Rect? _rectOf(GlobalKey key) {
  final box = key.currentContext?.findRenderObject();
  if (box is! RenderBox || !box.hasSize || !box.attached) return null;
  return box.localToGlobal(Offset.zero) & box.size;
}

class _FlyingImage extends StatelessWidget {
  const _FlyingImage({
    required this.start,
    required this.end,
    required this.imageUrl,
  });

  final Rect start;
  final Rect end;
  final String imageUrl;

  static const duration = Duration(milliseconds: 600);
  static const double _startSize = 96;
  static const double _endSize = 20;
  static const double _arcHeight = 80;

  /// How much the image fades on the way (it never disappears).
  static const double _fade = 0.3;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: duration,
        curve: AppMotion.exit,
        builder: (context, t, child) {
          final size = _startSize + (_endSize - _startSize) * t;
          final center = Offset.lerp(start.center, end.center, t) ?? end.center;
          // A slight arc reads as "thrown into" the cart.
          final lift = -_arcHeight * t * (1 - t);
          return Stack(
            children: [
              Positioned(
                left: center.dx - size / 2,
                top: center.dy - size / 2 + lift,
                width: size,
                height: size,
                child: Opacity(opacity: 1 - t * _fade, child: child),
              ),
            ],
          );
        },
        child: ClipRRect(
          borderRadius: AppRadii.imageBorder,
          child: AppNetworkImage(url: imageUrl),
        ),
      ),
    );
  }
}
