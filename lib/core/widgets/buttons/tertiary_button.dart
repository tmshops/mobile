import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'button_content.dart';

enum TertiaryTone { brand, neutral, danger }

/// Text-only button: «Позже», «Размерная сетка», a quiet «Отменить заказ».
class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
    required this.label,
    required this.onPressed,
    this.icon,
    this.tone = TertiaryTone.brand,
    this.isLoading = false,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final TertiaryTone tone;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final color = switch (tone) {
      TertiaryTone.brand => c.primaryPressed,
      TertiaryTone.neutral => c.ink,
      TertiaryTone.danger => c.danger,
    };

    return IgnorePointer(
      ignoring: isLoading,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(
            Size(AppSizes.touchTarget, AppSizes.buttonMedium),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: AppSpacing.x12),
          ),
          shape: const WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: AppRadii.buttonBorder),
          ),
          textStyle: WidgetStatePropertyAll(context.text.bodyStrong),
          foregroundColor: WidgetStateProperty.resolveWith(
            (states) =>
                states.contains(WidgetState.disabled) ? c.inkTertiary : color,
          ),
          overlayColor: WidgetStatePropertyAll(
            color.withValues(alpha: AppOpacity.pressedOverlay),
          ),
        ),
        child: ButtonContent(label: label, icon: icon, isLoading: isLoading),
      ),
    );
  }
}
