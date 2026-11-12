import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order.dart';

/// Reason, the amount and where it goes back, then confirm (TZ §6.3).
/// Returns the chosen reason id, or `null` when the customer changed
/// their mind.
Future<String?> showCancelOrderSheet(
  BuildContext context,
  OrderDetails order,
) => showAppBottomSheet<String>(
  context: context,
  builder: (_) => _CancelOrderSheet(order: order),
);

class _CancelOrderSheet extends StatefulWidget {
  const _CancelOrderSheet({required this.order});

  final OrderDetails order;

  @override
  State<_CancelOrderSheet> createState() => _CancelOrderSheetState();
}

class _CancelOrderSheetState extends State<_CancelOrderSheet> {
  String? _reasonId;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final order = widget.order;
    final refundTo = order.refundTo;
    final paid = order.money.paid;
    return AppBottomSheet(
      title: l10n.orderCancelTitle,
      action: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SecondaryButton(
            label: l10n.orderCancelKeep,
            onPressed: () => Navigator.of(context).pop(),
          ),
          TertiaryButton(
            label: l10n.orderCancel,
            tone: TertiaryTone.danger,
            onPressed: _reasonId == null
                ? null
                : () => Navigator.of(context).pop(_reasonId),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (paid > 0 && refundTo != null)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.x12),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: c.primarySoft,
                  borderRadius: AppRadii.cardBorder,
                ),
                child: Padding(
                  padding: AppSpacing.cardPadding,
                  child: Text(
                    l10n.orderCancelRefund(
                      MoneyFormat.tmt(l10n, paid),
                      refundTo,
                    ),
                    style: context.text.body,
                  ),
                ),
              ),
            ),
          Text(l10n.orderCancelReason, style: context.text.h3),
          const SizedBox(height: AppSpacing.x8),
          for (final reason in order.cancelReasons)
            MergeSemantics(
              child: InkWell(
                borderRadius: AppRadii.inputBorder,
                onTap: () => setState(() => _reasonId = reason.id),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: AppSizes.touchTarget,
                  ),
                  child: Row(
                    children: [
                      RadioMark(isSelected: _reasonId == reason.id),
                      const SizedBox(width: AppSpacing.x12),
                      Expanded(
                        child: Text(reason.title, style: context.text.body),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
