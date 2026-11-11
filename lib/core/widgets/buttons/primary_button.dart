import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'button_content.dart';

/// Orange filled button: the single "buy / next" action of a screen.
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.label,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isExpanded = true,
    this.size = AppButtonSize.large,
    super.key,
  });

  final String label;

  /// `null` disables the button.
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;

  /// Stretch to the available width. Wrap in `Expanded` inside a `Row`.
  final bool isExpanded;
  final AppButtonSize size;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final style = baseButtonStyle(context, size: size, isExpanded: isExpanded)
        .copyWith(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) return c.divider;
            if (states.contains(WidgetState.pressed)) return c.primaryPressed;
            return c.primary;
          }),
          foregroundColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.disabled)
                ? c.inkTertiary
                : c.onPrimary,
          ),
          overlayColor: WidgetStatePropertyAll(
            c.onPrimary.withValues(alpha: AppOpacity.pressedOverlay),
          ),
        );

    return IgnorePointer(
      ignoring: isLoading,
      child: FilledButton(
        onPressed: onPressed,
        style: style,
        child: ButtonContent(label: label, icon: icon, isLoading: isLoading),
      ),
    );
  }
}
