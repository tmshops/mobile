import 'package:flutter/material.dart';

import '../../theme/theme.dart';

enum IconCircleStyle {
  /// Translucent graphite circle, white icon: video feed rail.
  dark,

  /// White circle, ink icon: floating over product photos.
  light,
}

/// Round icon button with an optional counter under it (likes on video).
class IconCircleButton extends StatelessWidget {
  const IconCircleButton({
    required this.icon,
    required this.semanticLabel,
    required this.onPressed,
    this.activeIcon,
    this.isActive = false,
    this.activeColor,
    this.count,
    this.style = IconCircleStyle.dark,
    super.key,
  });

  final IconData icon;

  /// Shown instead of [icon] when [isActive], e.g. a filled heart.
  final IconData? activeIcon;
  final bool isActive;

  /// Icon colour while active; defaults to `primary`.
  final Color? activeColor;

  /// Required: icon-only buttons must be readable by screen readers.
  final String semanticLabel;
  final VoidCallback? onPressed;

  /// Already formatted counter text, e.g. «1,2 тыс.».
  final String? count;
  final IconCircleStyle style;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final (background, foreground) = switch (style) {
      IconCircleStyle.dark => (
        c.graphite.withValues(alpha: AppOpacity.overlayPanel),
        c.onGraphite,
      ),
      IconCircleStyle.light => (c.background, c.ink),
    };
    final iconColor = isActive ? (activeColor ?? c.primary) : foreground;

    final button = Semantics(
      button: true,
      selected: isActive,
      label: semanticLabel,
      excludeSemantics: true,
      child: SizedBox.square(
        dimension: AppSizes.touchTarget,
        child: Material(
          color: background,
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onPressed,
            child: Icon(
              isActive ? (activeIcon ?? icon) : icon,
              color: iconColor,
              size: AppSizes.icon,
            ),
          ),
        ),
      ),
    );

    final countText = count;
    if (countText == null) return button;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        button,
        const SizedBox(height: AppSpacing.x4),
        Text(
          countText,
          style: context.text.micro.copyWith(
            color: style == IconCircleStyle.dark ? c.onGraphite : c.ink,
            fontFeatures: AppTypography.tabularFigures,
          ),
        ),
      ],
    );
  }
}
