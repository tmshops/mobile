import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_shadows.dart';
import 'app_spacing.dart';
import 'app_typography.dart';

/// Builds the app [ThemeData] from the design tokens.
///
/// Material component themes are configured here so that stock widgets
/// (dialogs, switches, text selection, progress indicators) already match the
/// brand when a screen uses them directly.
abstract final class AppTheme {
  static ThemeData light() => _build(AppColors.light, AppShadows.light);

  static ThemeData _build(AppColors c, AppShadows shadows) {
    final t = AppTypography.create(ink: c.ink);
    final scheme = ColorScheme.light(
      primary: c.primary,
      onPrimary: c.onPrimary,
      primaryContainer: c.primarySoft,
      onPrimaryContainer: c.ink,
      secondary: c.accent,
      onSecondary: c.ink,
      error: c.danger,
      onError: c.onPrimary,
      surface: c.background,
      onSurface: c.ink,
      onSurfaceVariant: c.inkSecondary,
      surfaceContainerHighest: c.surface,
      outline: c.divider,
      outlineVariant: c.divider,
      inverseSurface: c.graphite,
      onInverseSurface: c.onGraphite,
      scrim: c.scrim,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      fontFamily: AppTypography.fontFamily,
      scaffoldBackgroundColor: c.background,
      canvasColor: c.background,
      dividerColor: c.divider,
      splashFactory: InkSparkle.splashFactory,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      extensions: [c, t, shadows],
      textTheme: TextTheme(
        displaySmall: t.display,
        headlineSmall: t.h1,
        titleLarge: t.h2,
        titleMedium: t.h3,
        bodyLarge: t.body,
        bodyMedium: t.body,
        bodySmall: t.caption.copyWith(color: c.inkSecondary),
        labelLarge: t.button,
        labelMedium: t.bodyStrong,
        labelSmall: t.micro,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: c.background,
        foregroundColor: c.ink,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: t.h3,
      ),
      dividerTheme: DividerThemeData(
        color: c.divider,
        thickness: AppSizes.hairline,
        space: AppSizes.hairline,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: c.primary,
        linearTrackColor: c.surface,
        circularTrackColor: Colors.transparent,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStatePropertyAll(c.background),
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? c.primary : c.divider,
        ),
        trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? c.primary : null,
        ),
        side: BorderSide(color: c.inkTertiary, width: AppSizes.selectedBorder),
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.badgeBorder),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? c.primary : c.inkTertiary,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: c.primary,
        selectionColor: c.primarySoft,
        selectionHandleColor: c.primary,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: c.background,
        surfaceTintColor: Colors.transparent,
        modalBarrierColor: c.scrim,
        shape: const RoundedRectangleBorder(borderRadius: AppRadii.sheetBorder),
        showDragHandle: false,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: c.graphite,
        contentTextStyle: t.body.copyWith(color: c.onGraphite),
        actionTextColor: c.primary,
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadii.buttonBorder,
        ),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: c.graphite,
          borderRadius: AppRadii.badgeBorder,
        ),
        textStyle: t.caption.copyWith(color: c.onGraphite),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x12,
          vertical: AppSpacing.x8,
        ),
        triggerMode: TooltipTriggerMode.tap,
        showDuration: const Duration(seconds: 4),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: c.surface,
        hintStyle: t.body.copyWith(color: c.inkTertiary),
        labelStyle: t.body.copyWith(color: c.inkSecondary),
        floatingLabelStyle: t.caption.copyWith(color: c.inkSecondary),
        errorStyle: t.caption.copyWith(color: c.danger),
        helperStyle: t.caption.copyWith(color: c.inkSecondary),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x16,
          vertical: AppSpacing.x16,
        ),
        border: _inputBorder(Colors.transparent),
        enabledBorder: _inputBorder(Colors.transparent),
        disabledBorder: _inputBorder(Colors.transparent),
        focusedBorder: _inputBorder(c.primary),
        errorBorder: _inputBorder(c.danger),
        focusedErrorBorder: _inputBorder(c.danger),
      ),
    );
  }

  static OutlineInputBorder _inputBorder(Color color) => OutlineInputBorder(
    borderRadius: AppRadii.inputBorder,
    borderSide: BorderSide(color: color, width: AppSizes.inputBorder),
  );
}
