import 'package:flutter/material.dart';

/// Semantic colour tokens (UI_DESIGN §4.1).
///
/// Brand hex values live only in [AppColors.light]. Widgets read them via
/// `context.colors`, never as literals, so a dark palette can be added later
/// by providing a second instance.
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primary,
    required this.primaryPressed,
    required this.primarySoft,
    required this.onPrimary,
    required this.accent,
    required this.ink,
    required this.inkSecondary,
    required this.inkTertiary,
    required this.graphite,
    required this.onGraphite,
    required this.background,
    required this.surface,
    required this.divider,
    required this.success,
    required this.warning,
    required this.danger,
    required this.info,
    required this.scrim,
  });

  static const light = AppColors(
    primary: Color(0xFFF7941D),
    primaryPressed: Color(0xFFF26522),
    primarySoft: Color(0xFFFFF3E3),
    onPrimary: Color(0xFFFFFFFF),
    accent: Color(0xFFFDB913),
    ink: Color(0xFF222222),
    inkSecondary: Color(0xFF6B6B6B),
    inkTertiary: Color(0xFFA0A0A0),
    graphite: Color(0xFF1E1E1E),
    onGraphite: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    surface: Color(0xFFF5F5F5),
    divider: Color(0xFFEDEDED),
    success: Color(0xFF22A06B),
    warning: Color(0xFFF5A524),
    danger: Color(0xFFE5484D),
    info: Color(0xFF3B82F6),
    scrim: Color(0x66000000),
  );

  /// Buy / Add to cart / Next, active tab, prices.
  final Color primary;

  /// Pressed state of [primary], discount badges.
  final Color primaryPressed;

  /// Tinted backgrounds: selected chip, info banners, active step halo.
  final Color primarySoft;

  /// Content on [primary]. Only bold text ≥ 15 sp (WCAG AA).
  final Color onPrimary;

  /// "Хит" badge, rating stars, bonuses.
  final Color accent;

  final Color ink;
  final Color inkSecondary;

  /// Placeholders, disabled text, old price.
  final Color inkTertiary;

  /// Dark surfaces: video overlay panels, toasts, offline bar.
  final Color graphite;
  final Color onGraphite;

  final Color background;

  /// Grouped sections, input fills, tile image background.
  final Color surface;
  final Color divider;

  final Color success;
  final Color warning;
  final Color danger;
  final Color info;

  /// Modal barrier behind sheets and dialogs.
  final Color scrim;

  @override
  AppColors copyWith({
    Color? primary,
    Color? primaryPressed,
    Color? primarySoft,
    Color? onPrimary,
    Color? accent,
    Color? ink,
    Color? inkSecondary,
    Color? inkTertiary,
    Color? graphite,
    Color? onGraphite,
    Color? background,
    Color? surface,
    Color? divider,
    Color? success,
    Color? warning,
    Color? danger,
    Color? info,
    Color? scrim,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      primaryPressed: primaryPressed ?? this.primaryPressed,
      primarySoft: primarySoft ?? this.primarySoft,
      onPrimary: onPrimary ?? this.onPrimary,
      accent: accent ?? this.accent,
      ink: ink ?? this.ink,
      inkSecondary: inkSecondary ?? this.inkSecondary,
      inkTertiary: inkTertiary ?? this.inkTertiary,
      graphite: graphite ?? this.graphite,
      onGraphite: onGraphite ?? this.onGraphite,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      divider: divider ?? this.divider,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      info: info ?? this.info,
      scrim: scrim ?? this.scrim,
    );
  }

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other == null) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return AppColors(
      primary: l(primary, other.primary),
      primaryPressed: l(primaryPressed, other.primaryPressed),
      primarySoft: l(primarySoft, other.primarySoft),
      onPrimary: l(onPrimary, other.onPrimary),
      accent: l(accent, other.accent),
      ink: l(ink, other.ink),
      inkSecondary: l(inkSecondary, other.inkSecondary),
      inkTertiary: l(inkTertiary, other.inkTertiary),
      graphite: l(graphite, other.graphite),
      onGraphite: l(onGraphite, other.onGraphite),
      background: l(background, other.background),
      surface: l(surface, other.surface),
      divider: l(divider, other.divider),
      success: l(success, other.success),
      warning: l(warning, other.warning),
      danger: l(danger, other.danger),
      info: l(info, other.info),
      scrim: l(scrim, other.scrim),
    );
  }
}
