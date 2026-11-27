import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import '../../domain/entities/delivery_address.dart';

/// A drawn street map centred on [center], with the pin in the middle.
///
/// Stands in for flutter_map + OSM tiles (TZ §7.5) until those packages
/// are approved: it pans the same way, so the address flow can be built
/// and tried now, and only this widget changes later.
class StreetMap extends StatelessWidget {
  const StreetMap({
    required this.center,
    this.onMoved,
    this.pinSize = _pin,
    super.key,
  });

  final GeoPoint center;

  /// Called while dragging; `null` for a static thumbnail.
  final ValueChanged<GeoPoint>? onMoved;
  final double pinSize;

  static const double _pin = 44;

  /// Pixels per degree: a block of streets is about a thumb wide.
  static const double scale = 60000;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final move = onMoved;
    final map = CustomPaint(
      painter: _StreetPainter(center: center, colors: c),
      child: Center(
        child: Padding(
          // The tip of the pin, not its middle, marks the point.
          padding: EdgeInsets.only(bottom: pinSize),
          child: Icon(AppIcons.mapPin, size: pinSize, color: c.primary),
        ),
      ),
    );
    if (move == null) return ClipRect(child: map);
    return ClipRect(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onPanUpdate: (d) => move(
          GeoPoint(
            lat: center.lat + d.delta.dy / scale,
            lng: center.lng - d.delta.dx / scale,
          ),
        ),
        child: map,
      ),
    );
  }
}

class _StreetPainter extends CustomPainter {
  _StreetPainter({required this.center, required this.colors});

  final GeoPoint center;
  final AppColors colors;

  static const double _majorStep = 0.004;
  static const double _minorStep = 0.001;
  static const double _majorWidth = 10;
  static const double _minorWidth = 4;
  static const double _parkEvery = 3;
  static const double _parkInset = 6;

  @override
  void paint(Canvas canvas, Size size) {
    const scale = StreetMap.scale;
    canvas.drawRect(Offset.zero & size, Paint()..color = colors.surface);
    final halfLat = size.height / 2 / scale;
    final halfLng = size.width / 2 / scale;
    double x(double lng) => size.width / 2 + (lng - center.lng) * scale;
    double y(double lat) => size.height / 2 - (lat - center.lat) * scale;

    // Every third major block is a park.
    final park = Paint()
      ..color = colors.success.withValues(alpha: AppOpacity.tint);
    final firstLat = ((center.lat - halfLat) / _majorStep).floor();
    final firstLng = ((center.lng - halfLng) / _majorStep).floor();
    for (var i = firstLat; i * _majorStep < center.lat + halfLat; i++) {
      for (var j = firstLng; j * _majorStep < center.lng + halfLng; j++) {
        if ((i + 2 * j) % _parkEvery != 0) continue;
        canvas.drawRect(
          Rect.fromLTRB(
            x(j * _majorStep) + _parkInset,
            y((i + 1) * _majorStep) + _parkInset,
            x((j + 1) * _majorStep) - _parkInset,
            y(i * _majorStep) - _parkInset,
          ),
          park,
        );
      }
    }

    void grid(double step, Paint paint) {
      for (
        var v = ((center.lat - halfLat) / step).floor() * step;
        v < center.lat + halfLat;
        v += step
      ) {
        canvas.drawLine(Offset(0, y(v)), Offset(size.width, y(v)), paint);
      }
      for (
        var v = ((center.lng - halfLng) / step).floor() * step;
        v < center.lng + halfLng;
        v += step
      ) {
        canvas.drawLine(Offset(x(v), 0), Offset(x(v), size.height), paint);
      }
    }

    grid(
      _minorStep,
      Paint()
        ..color = colors.background
        ..strokeWidth = _minorWidth,
    );
    grid(
      _majorStep,
      Paint()
        ..color = colors.divider
        ..strokeWidth = _majorWidth + 2,
    );
    grid(
      _majorStep,
      Paint()
        ..color = colors.background
        ..strokeWidth = _majorWidth,
    );
  }

  @override
  bool shouldRepaint(_StreetPainter old) =>
      old.center != center || old.colors != colors;
}
