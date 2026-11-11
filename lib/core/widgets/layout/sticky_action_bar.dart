import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../../utils/money_format.dart';
import '../../l10n/l10n.dart';

/// Bottom bar for the screen's main action, with safe-area padding.
///
/// Layout: optional [leading] (usually [ActionBarTotal]), optional
/// [secondary] button, then [primary]. [above] holds a small link such as
/// «Быстрый заказ».
class StickyActionBar extends StatelessWidget {
  const StickyActionBar({
    required this.primary,
    this.secondary,
    this.leading,
    this.above,
    super.key,
  });

  final Widget primary;
  final Widget? secondary;
  final Widget? leading;
  final Widget? above;

  @override
  Widget build(BuildContext context) {
    final lead = leading;
    final second = secondary;
    final top = above;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.background,
        boxShadow: context.shadows.floating,
      ),
      child: SafeArea(
        top: false,
        minimum: const EdgeInsets.only(bottom: AppSpacing.x12),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x12,
            AppSpacing.screen,
            0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (top != null) ...[top, const SizedBox(height: AppSpacing.x4)],
              Row(
                children: [
                  if (lead != null) ...[
                    Expanded(child: lead),
                    const SizedBox(width: AppSpacing.x12),
                  ],
                  if (second != null) ...[
                    Expanded(child: second),
                    const SizedBox(width: AppSpacing.x12),
                  ],
                  Expanded(child: primary),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// «Итого 1 216 TMT» block for the left side of a [StickyActionBar].
/// Tapping it usually opens the money breakdown.
class ActionBarTotal extends StatelessWidget {
  const ActionBarTotal({required this.amount, this.onTap, super.key});

  final int amount;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.badgeBorder,
      child: Semantics(
        label: l10n.totalSpoken(l10n.priceSpoken(amount)),
        excludeSemantics: true,
        button: onTap != null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    l10n.moneyTotal,
                    style: context.text.caption.copyWith(color: c.inkSecondary),
                  ),
                ),
                if (onTap != null)
                  Icon(
                    AppIcons.chevronDown,
                    size: AppSizes.iconSmall,
                    color: c.inkSecondary,
                  ),
              ],
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                MoneyFormat.tmt(l10n, amount),
                style: context.text.price,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
