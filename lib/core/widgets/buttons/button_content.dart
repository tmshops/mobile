import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Visual height of a button. Medium buttons still get a 48-dp hit area from
/// the padded Material tap target.
enum AppButtonSize {
  large(AppSizes.buttonLarge),
  medium(AppSizes.buttonMedium);

  const AppButtonSize(this.height);

  final double height;
}

/// Label (+ optional leading icon) that swaps to a spinner while loading.
///
/// The label stays in the tree, invisible, so the button keeps its width and
/// does not jump when loading starts.
class ButtonContent extends StatelessWidget {
  const ButtonContent({
    required this.label,
    required this.isLoading,
    this.icon,
    super.key,
  });

  final String label;
  final bool isLoading;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final spinnerColor = IconTheme.of(context).color;
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: isLoading ? 0 : 1,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: AppSizes.iconDense),
                const SizedBox(width: AppSpacing.x8),
              ],
              // Turkmen labels are long: wrap to a second line instead of
              // cutting the verb off.
              Flexible(
                child: Text(label, maxLines: 2, textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
        if (isLoading)
          SizedBox.square(
            dimension: AppSizes.spinner,
            child: CircularProgressIndicator(
              strokeWidth: AppSizes.selectedBorder,
              color: spinnerColor,
            ),
          ),
      ],
    );
  }
}

/// Shared [ButtonStyle] geometry for filled and outlined buttons.
ButtonStyle baseButtonStyle(
  BuildContext context, {
  required AppButtonSize size,
  required bool isExpanded,
}) {
  return ButtonStyle(
    minimumSize: WidgetStatePropertyAll(
      Size(isExpanded ? double.infinity : 0, size.height),
    ),
    padding: const WidgetStatePropertyAll(
      EdgeInsets.symmetric(horizontal: AppSpacing.x20, vertical: AppSpacing.x8),
    ),
    shape: const WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: AppRadii.buttonBorder),
    ),
    textStyle: WidgetStatePropertyAll(context.text.button),
    elevation: const WidgetStatePropertyAll(0),
    animationDuration: AppMotion.fast,
  );
}
