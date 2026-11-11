import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'button_content.dart';

/// Orange outlined button for the second action next to a primary one.
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.label,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isExpanded = true,
    this.size = AppButtonSize.large,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final bool isExpanded;
  final AppButtonSize size;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    // The label uses the darker orange: plain `primary` on white is too low
    // contrast for 16 sp text.
    final style = baseButtonStyle(context, size: size, isExpanded: isExpanded)
        .copyWith(
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.pressed)
                ? c.primarySoft
                : c.background,
          ),
          foregroundColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.disabled)
                ? c.inkTertiary
                : c.primaryPressed,
          ),
          side: WidgetStateProperty.resolveWith(
            (states) => BorderSide(
              color: states.contains(WidgetState.disabled)
                  ? c.divider
                  : c.primary,
              width: AppSizes.inputBorder,
            ),
          ),
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        );

    return IgnorePointer(
      ignoring: isLoading,
      child: OutlinedButton(
        onPressed: onPressed,
        style: style,
        child: ButtonContent(label: label, icon: icon, isLoading: isLoading),
      ),
    );
  }
}
