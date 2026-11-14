import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Full-width pill along the bottom of a tile photo.
class TileStrip extends StatelessWidget {
  const TileStrip({
    required this.label,
    required this.background,
    required this.foreground,
    this.icon,
    super.key,
  });

  final String label;
  final Color background;
  final Color foreground;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final glyph = icon;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: AppRadii.badgeBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x8,
          vertical: AppSpacing.x4,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (glyph != null) ...[
              Icon(glyph, size: AppSizes.iconSmall, color: foreground),
              const SizedBox(width: AppSpacing.x4),
            ],
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.text.micro.copyWith(color: foreground),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
