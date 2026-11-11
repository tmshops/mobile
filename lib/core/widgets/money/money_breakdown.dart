import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../../utils/money_format.dart';

@immutable
class MoneyRow {
  const MoneyRow({
    required this.label,
    required this.amount,
    this.isDiscount = false,
    this.info,
  });

  final String label;

  /// `null` = not known yet; shows «уточнится после взвешивания».
  final int? amount;

  /// Shown as «−120 TMT» in the success colour.
  final bool isDiscount;

  /// Tooltip text behind an (i) icon next to the label.
  final String? info;
}

/// Label ↔ amount rows, a divider and a bold total (UI_DESIGN §3.3).
class MoneyBreakdown extends StatelessWidget {
  const MoneyBreakdown({required this.rows, required this.total, super.key});

  final List<MoneyRow> rows;
  final int total;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final row in rows) _MoneyRowView(row: row),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: AppSpacing.x8),
          child: Divider(),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Expanded(child: Text(l10n.moneyTotal, style: context.text.h3)),
            Text(MoneyFormat.tmt(l10n, total), style: context.text.price),
          ],
        ),
      ],
    );
  }
}

class _MoneyRowView extends StatelessWidget {
  const _MoneyRowView({required this.row});

  final MoneyRow row;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final l10n = context.l10n;
    final amount = row.amount;
    final info = row.info;

    final Widget value;
    if (amount == null) {
      value = Text(
        l10n.deliveryAfterWeighing,
        textAlign: TextAlign.end,
        style: t.caption.copyWith(color: c.inkSecondary),
      );
    } else {
      value = Text(
        row.isDiscount
            ? l10n.priceMinusTmt(MoneyFormat.group(amount))
            : MoneyFormat.tmt(l10n, amount),
        textAlign: TextAlign.end,
        style: t.body.copyWith(
          color: row.isDiscount ? c.success : c.ink,
          fontFeatures: AppTypography.tabularFigures,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text.rich(
              TextSpan(
                text: row.label,
                children: [
                  if (info != null)
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: _InfoIcon(message: info),
                    ),
                ],
              ),
              style: t.body.copyWith(color: c.inkSecondary),
            ),
          ),
          const SizedBox(width: AppSpacing.x12),
          Flexible(flex: 2, child: value),
        ],
      ),
    );
  }
}

class _InfoIcon extends StatelessWidget {
  const _InfoIcon({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x4),
        child: Icon(
          AppIcons.info,
          size: AppSizes.iconSmall,
          color: context.colors.inkSecondary,
        ),
      ),
    );
  }
}
