import 'package:flutter/material.dart';

/// Text style tokens (UI_DESIGN §4.2).
///
/// Styles default to `ink`; widgets override the colour from `context.colors`
/// when they sit on a coloured or dark surface. Price styles use tabular
/// figures so digits do not jump.
@immutable
class AppTypography extends ThemeExtension<AppTypography> {
  const AppTypography({
    required this.display,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.body,
    required this.bodyStrong,
    required this.caption,
    required this.micro,
    required this.price,
    required this.priceLarge,
    required this.button,
  });

  factory AppTypography.create({required Color ink}) {
    TextStyle style(double size, double lineHeight, FontWeight weight) {
      return TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        height: lineHeight / size,
        fontWeight: weight,
        color: ink,
        leadingDistribution: TextLeadingDistribution.even,
      );
    }

    const tabular = [FontFeature.tabularFigures()];

    return AppTypography(
      display: style(28, 34, FontWeight.w700),
      h1: style(22, 28, FontWeight.w700),
      h2: style(18, 24, FontWeight.w600),
      h3: style(16, 22, FontWeight.w600),
      body: style(15, 22, FontWeight.w400),
      bodyStrong: style(15, 22, FontWeight.w600),
      caption: style(13, 18, FontWeight.w400),
      micro: style(11, 14, FontWeight.w600),
      price: style(17, 22, FontWeight.w700).copyWith(fontFeatures: tabular),
      priceLarge: style(
        26,
        32,
        FontWeight.w800,
      ).copyWith(fontFeatures: tabular),
      // Bold ≥ 15 sp keeps white-on-orange labels WCAG AA compliant.
      button: style(16, 22, FontWeight.w700),
    );
  }

  /// Bundled in `assets/fonts/` (see pubspec). Falls back to the platform
  /// font until the files are added.
  static const fontFamily = 'Inter';

  /// Applied with `copyWith` to timers and counters that use non-price styles.
  static const tabularFigures = [FontFeature.tabularFigures()];

  final TextStyle display;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle body;
  final TextStyle bodyStrong;
  final TextStyle caption;
  final TextStyle micro;
  final TextStyle price;
  final TextStyle priceLarge;

  /// Button labels.
  final TextStyle button;

  @override
  AppTypography copyWith({
    TextStyle? display,
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? body,
    TextStyle? bodyStrong,
    TextStyle? caption,
    TextStyle? micro,
    TextStyle? price,
    TextStyle? priceLarge,
    TextStyle? button,
  }) {
    return AppTypography(
      display: display ?? this.display,
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      body: body ?? this.body,
      bodyStrong: bodyStrong ?? this.bodyStrong,
      caption: caption ?? this.caption,
      micro: micro ?? this.micro,
      price: price ?? this.price,
      priceLarge: priceLarge ?? this.priceLarge,
      button: button ?? this.button,
    );
  }

  @override
  AppTypography lerp(AppTypography? other, double t) {
    if (other == null) return this;
    TextStyle l(TextStyle a, TextStyle b) => TextStyle.lerp(a, b, t)!;
    return AppTypography(
      display: l(display, other.display),
      h1: l(h1, other.h1),
      h2: l(h2, other.h2),
      h3: l(h3, other.h3),
      body: l(body, other.body),
      bodyStrong: l(bodyStrong, other.bodyStrong),
      caption: l(caption, other.caption),
      micro: l(micro, other.micro),
      price: l(price, other.price),
      priceLarge: l(priceLarge, other.priceLarge),
      button: l(button, other.button),
    );
  }
}
