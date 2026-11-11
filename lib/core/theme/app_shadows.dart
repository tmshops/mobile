import 'package:flutter/material.dart';

/// Shadow tokens (UI_DESIGN §4.3). The UI is mostly flat; [floating] is the
/// only shadow, used for sticky bars, FABs and toasts.
@immutable
class AppShadows extends ThemeExtension<AppShadows> {
  const AppShadows({required this.floating});

  static const light = AppShadows(
    floating: [
      BoxShadow(
        color: Color(0x0F000000),
        offset: Offset(0, -2),
        blurRadius: 12,
      ),
    ],
  );

  final List<BoxShadow> floating;

  @override
  AppShadows copyWith({List<BoxShadow>? floating}) =>
      AppShadows(floating: floating ?? this.floating);

  @override
  AppShadows lerp(AppShadows? other, double t) {
    if (other == null) return this;
    return AppShadows(
      floating: BoxShadow.lerpList(floating, other.floating, t) ?? floating,
    );
  }
}
