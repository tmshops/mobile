import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../domain/entities/photo_search.dart';

enum CropCorner { topLeft, topRight, bottomLeft, bottomRight }

/// Moving and resizing the frame, in fractions of the photo. The frame
/// stays inside the photo and never gets smaller than [minSide].
extension PhotoCropEditX on PhotoCrop {
  static const double minSide = 0.2;

  PhotoCrop moved(double dx, double dy) => copyWith(
    left: (left + dx).clamp(0, 1 - width),
    top: (top + dy).clamp(0, 1 - height),
  );

  PhotoCrop resized(CropCorner corner, double dx, double dy) {
    final isLeft =
        corner == CropCorner.topLeft || corner == CropCorner.bottomLeft;
    final isTop = corner == CropCorner.topLeft || corner == CropCorner.topRight;
    final right = left + width;
    final bottom = top + height;
    final newLeft = isLeft ? (left + dx).clamp(0.0, right - minSide) : left;
    final newRight = isLeft ? right : (right + dx).clamp(left + minSide, 1.0);
    final newTop = isTop ? (top + dy).clamp(0.0, bottom - minSide) : top;
    final newBottom = isTop ? bottom : (bottom + dy).clamp(top + minSide, 1.0);
    return PhotoCrop(
      left: newLeft,
      top: newTop,
      width: newRight - newLeft,
      height: newBottom - newTop,
    );
  }
}

/// [photo] with the frame over it: drag inside to move the frame, drag a
/// corner to resize it. Outside the frame the photo is dimmed. Leaves a
/// margin around the photo so the corner handles can be grabbed.
class CropFrame extends StatelessWidget {
  const CropFrame({
    required this.photo,
    required this.crop,
    required this.onChanged,
    super.key,
  });

  final Widget photo;
  final PhotoCrop crop;
  final ValueChanged<PhotoCrop> onChanged;

  /// Touch area of a corner handle, centred on the corner.
  static const double _handle = AppSizes.touchTarget;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return LayoutBuilder(
      builder: (context, constraints) {
        const margin = _handle / 2;
        final area = Rect.fromLTWH(
          margin,
          margin,
          constraints.maxWidth - 2 * margin,
          constraints.maxHeight - 2 * margin,
        );
        final size = area.size;
        final rect = Rect.fromLTWH(
          area.left + crop.left * size.width,
          area.top + crop.top * size.height,
          crop.width * size.width,
          crop.height * size.height,
        );
        return Stack(
          children: [
            Positioned.fromRect(rect: area, child: photo),
            Positioned.fromRect(
              rect: area,
              child: IgnorePointer(
                child: CustomPaint(
                  painter: _FramePainter(
                    rect: rect.shift(-area.topLeft),
                    scrim: c.scrim,
                    line: c.onGraphite,
                  ),
                ),
              ),
            ),
            Positioned.fromRect(
              rect: rect,
              child: Semantics(
                label: context.l10n.photoCropHint,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onPanUpdate: (d) => onChanged(
                    crop.moved(
                      d.delta.dx / size.width,
                      d.delta.dy / size.height,
                    ),
                  ),
                ),
              ),
            ),
            for (final corner in CropCorner.values)
              Positioned(
                left: _cornerX(corner, rect) - _handle / 2,
                top: _cornerY(corner, rect) - _handle / 2,
                width: _handle,
                height: _handle,
                child: GestureDetector(
                  key: ValueKey(corner),
                  behavior: HitTestBehavior.opaque,
                  onPanUpdate: (d) => onChanged(
                    crop.resized(
                      corner,
                      d.delta.dx / size.width,
                      d.delta.dy / size.height,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  static double _cornerX(CropCorner corner, Rect r) =>
      corner == CropCorner.topLeft || corner == CropCorner.bottomLeft
      ? r.left
      : r.right;

  static double _cornerY(CropCorner corner, Rect r) =>
      corner == CropCorner.topLeft || corner == CropCorner.topRight
      ? r.top
      : r.bottom;
}

class _FramePainter extends CustomPainter {
  const _FramePainter({
    required this.rect,
    required this.scrim,
    required this.line,
  });

  final Rect rect;
  final Color scrim;
  final Color line;

  static const double _cornerLength = 20;
  static const double _cornerWidth = 4;

  @override
  void paint(Canvas canvas, Size size) {
    final outside = Path()
      ..fillType = PathFillType.evenOdd
      ..addRect(Offset.zero & size)
      ..addRect(rect);
    canvas
      ..drawPath(outside, Paint()..color = scrim)
      ..drawRect(
        rect,
        Paint()
          ..color = line
          ..style = PaintingStyle.stroke
          ..strokeWidth = AppSizes.hairline,
      );
    final corners = Paint()
      ..color = line
      ..style = PaintingStyle.stroke
      ..strokeWidth = _cornerWidth
      ..strokeCap = StrokeCap.round;
    for (final (point, sx, sy) in [
      (rect.topLeft, 1.0, 1.0),
      (rect.topRight, -1.0, 1.0),
      (rect.bottomLeft, 1.0, -1.0),
      (rect.bottomRight, -1.0, -1.0),
    ]) {
      canvas
        ..drawLine(point, point.translate(sx * _cornerLength, 0), corners)
        ..drawLine(point, point.translate(0, sy * _cornerLength), corners);
    }
  }

  @override
  bool shouldRepaint(_FramePainter old) =>
      old.rect != rect || old.scrim != scrim || old.line != line;
}
