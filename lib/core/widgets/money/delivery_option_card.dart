import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../selection/radio_mark.dart';

/// Radio card for a delivery type (air / express / truck).
///
/// Pass [disabledReason] to show the option greyed out with an explanation
/// instead of hiding it.
class DeliveryOptionCard extends StatelessWidget {
  const DeliveryOptionCard({
    required this.icon,
    required this.title,
    required this.term,
    required this.priceLabel,
    required this.isSelected,
    required this.onTap,
    this.disabledReason,
    super.key,
  });

  final IconData icon;
  final String title;

  /// e.g. «1–2 недели».
  final String term;

  /// Formatted price or «уточнится после взвешивания».
  final String priceLabel;
  final bool isSelected;
  final VoidCallback onTap;
  final String? disabledReason;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final reason = disabledReason;
    final isEnabled = reason == null;

    return Semantics(
      inMutuallyExclusiveGroup: true,
      checked: isSelected,
      enabled: isEnabled,
      child: Opacity(
        opacity: isEnabled ? 1 : AppOpacity.disabled,
        child: Material(
          color: isSelected ? c.primarySoft : c.background,
          shape: RoundedRectangleBorder(
            borderRadius: AppRadii.cardBorder,
            side: BorderSide(
              color: isSelected ? c.primary : c.divider,
              width: isSelected ? AppSizes.selectedBorder : AppSizes.hairline,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: isEnabled ? onTap : null,
            child: Padding(
              padding: AppSpacing.cardPadding,
              child: Row(
                children: [
                  _IconCircle(icon: icon, isSelected: isSelected),
                  const SizedBox(width: AppSpacing.x12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: t.h3),
                        Text(
                          term,
                          style: t.caption.copyWith(color: c.inkSecondary),
                        ),
                        if (reason != null)
                          Text(
                            reason,
                            style: t.caption.copyWith(color: c.danger),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppSpacing.x8),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width / 3,
                    ),
                    child: Text(
                      priceLabel,
                      textAlign: TextAlign.end,
                      style: t.bodyStrong.copyWith(
                        fontFeatures: AppTypography.tabularFigures,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.x8),
                  RadioMark(isSelected: isSelected),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _IconCircle extends StatelessWidget {
  const _IconCircle({required this.icon, required this.isSelected});

  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      width: AppSizes.touchTarget,
      height: AppSizes.touchTarget,
      decoration: BoxDecoration(
        color: isSelected ? c.background : c.surface,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: AppSizes.icon, color: c.primary),
    );
  }
}
