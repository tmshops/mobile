import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../utils/money_format.dart';

/// «1 216 TMT» that counts to a new value instead of jumping
/// (UI_DESIGN §7.8: «any field change animates the total»). Jumps
/// straight to the value when motion is reduced.
class RollingAmount extends StatelessWidget {
  const RollingAmount({required this.amount, this.style, super.key});

  final int amount;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Semantics(
      label: l10n.priceSpoken(amount),
      excludeSemantics: true,
      child: TweenAnimationBuilder<double>(
        tween: Tween(end: amount.toDouble()),
        duration: AppMotion.of(context, AppMotion.slow),
        curve: AppMotion.enter,
        builder: (context, value, _) => Text(
          MoneyFormat.tmt(l10n, value.round()),
          style: (style ?? context.text.price).copyWith(
            fontFeatures: AppTypography.tabularFigures,
          ),
        ),
      ),
    );
  }
}
