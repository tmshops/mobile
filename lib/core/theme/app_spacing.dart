import 'package:flutter/widgets.dart';

/// 4-pt spacing scale (UI_DESIGN §4.3).
///
/// Kept as compile-time constants rather than a ThemeExtension so widgets can
/// stay `const`; spacing is not expected to change between themes.
abstract final class AppSpacing {
  /// Optical tweak for tiny pills only; layout uses x4 and up.
  static const double x2 = 2;
  static const double x4 = 4;
  static const double x8 = 8;
  static const double x12 = 12;
  static const double x16 = 16;
  static const double x20 = 20;
  static const double x24 = 24;
  static const double x32 = 32;
  static const double x40 = 40;
  static const double x48 = 48;

  /// Horizontal padding of every screen.
  static const double screen = x16;

  /// Vertical gap between Home sections.
  static const double section = x24;

  /// Padding inside cards.
  static const double card = x12;

  static const EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: screen,
  );
  static const EdgeInsets cardPadding = EdgeInsets.all(card);
}

/// Corner radii (UI_DESIGN §4.3).
abstract final class AppRadii {
  static const double chip = 999;
  static const double button = 14;
  static const double card = 16;
  static const double sheet = 24;
  static const double image = 12;
  static const double input = 12;

  /// Small pills such as badges and the «иллюстрация» marker.
  static const double badge = 6;

  static const BorderRadius chipBorder = BorderRadius.all(
    Radius.circular(chip),
  );
  static const BorderRadius buttonBorder = BorderRadius.all(
    Radius.circular(button),
  );
  static const BorderRadius cardBorder = BorderRadius.all(
    Radius.circular(card),
  );
  static const BorderRadius imageBorder = BorderRadius.all(
    Radius.circular(image),
  );
  static const BorderRadius inputBorder = BorderRadius.all(
    Radius.circular(input),
  );
  static const BorderRadius badgeBorder = BorderRadius.all(
    Radius.circular(badge),
  );
  static const BorderRadius sheetBorder = BorderRadius.vertical(
    top: Radius.circular(sheet),
  );
}

/// Fixed component sizes (UI_DESIGN §4.3, §4.4).
abstract final class AppSizes {
  /// Minimum touch target.
  static const double touchTarget = 48;
  static const double buttonLarge = 52;
  static const double buttonMedium = 44;
  static const double icon = 24;
  static const double iconDense = 20;
  static const double iconSmall = 16;
  static const double iconTiny = 12;
  static const double spinner = 20;
  static const double hairline = 1;
  static const double inputBorder = 1.5;
  static const double selectedBorder = 2;
  static const double dragHandleWidth = 36;
  static const double dragHandleHeight = 4;
  static const double timelineDot = 28;
  static const double progressBar = 6;
  static const double swatch = 56;
  static const double otpBox = 52;
  static const double badgeDot = 8;
}

/// Motion tokens (UI_DESIGN §4.5).
abstract final class AppMotion {
  static const Duration fast = Duration(milliseconds: 150);
  static const Duration base = Duration(milliseconds: 250);
  static const Duration slow = Duration(milliseconds: 350);

  /// Image fade-in after load.
  static const Duration imageFade = Duration(milliseconds: 200);
  static const Duration shimmer = Duration(milliseconds: 1400);
  static const Duration pulse = Duration(milliseconds: 1200);
  static const Duration bannerAutoplay = Duration(seconds: 4);

  static const Curve enter = Curves.easeOutCubic;
  static const Curve exit = Curves.easeInCubic;

  /// Whether the user asked the OS to reduce motion.
  static bool isReduced(BuildContext context) =>
      MediaQuery.maybeDisableAnimationsOf(context) ?? false;

  /// [duration], or zero when motion is reduced.
  static Duration of(BuildContext context, Duration duration) =>
      isReduced(context) ? Duration.zero : duration;
}

/// Opacity tokens for overlays and translucent surfaces.
abstract final class AppOpacity {
  /// Ink ripple drawn over a pressed button.
  static const double pressedOverlay = 0.12;

  /// Translucent dark circles and panels over video and photos.
  static const double overlayPanel = 0.7;

  /// Bottom bar over the video feed (UI_DESIGN §6).
  static const double navOverVideo = 0.85;

  /// Status-colour tint behind chips and icon circles.
  static const double tint = 0.12;

  /// Greyed-out unavailable content.
  static const double disabled = 0.4;
}
