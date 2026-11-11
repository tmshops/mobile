import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'status_tone.dart';

/// Tinted pill with a coloured icon and an ink label: «Оплачен», «В пути».
class StatusChip extends StatelessWidget {
  const StatusChip({
    required this.label,
    required this.tone,
    required this.icon,
    super.key,
  });

  final String label;
  final StatusTone tone;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: tone.tint(c),
        borderRadius: AppRadii.chipBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x12,
          vertical: AppSpacing.x4,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: AppSizes.iconSmall, color: tone.color(c)),
            const SizedBox(width: AppSpacing.x4),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.text.caption.copyWith(
                  color: c.ink,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
