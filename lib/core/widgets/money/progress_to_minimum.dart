import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../utils/money_format.dart';

/// Cart progress bar towards the minimum order sum, with
/// «Добавьте товаров ещё на 120 TMT».
class ProgressToMinimum extends StatelessWidget {
  const ProgressToMinimum({
    required this.current,
    required this.minimum,
    super.key,
  }) : assert(minimum > 0, 'minimum must be positive');

  final int current;
  final int minimum;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final missing = minimum - current;
    final isReached = missing <= 0;
    final progress = (current / minimum).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: AppRadii.chipBorder,
          child: TweenAnimationBuilder<double>(
            tween: Tween(end: progress),
            duration: AppMotion.of(context, AppMotion.base),
            curve: AppMotion.enter,
            builder: (context, value, _) => LinearProgressIndicator(
              value: value,
              minHeight: AppSizes.progressBar,
              color: isReached ? c.success : c.primary,
              backgroundColor: c.surface,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.x8),
        Text(
          isReached
              ? l10n.progressMinimumReached
              : l10n.progressToMinimum(MoneyFormat.tmt(l10n, missing)),
          style: context.text.caption.copyWith(
            color: isReached ? c.success : c.inkSecondary,
          ),
        ),
      ],
    );
  }
}
