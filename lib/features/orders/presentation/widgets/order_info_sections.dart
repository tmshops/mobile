import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order.dart';
import 'orders_common.dart';

/// Parcels the items went into, each opening its tracking.
class OrderParcelsCard extends StatelessWidget {
  const OrderParcelsCard({
    required this.parcels,
    required this.onOpenParcel,
    super.key,
  });

  final List<ParcelLink> parcels;
  final ValueChanged<String> onOpenParcel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.orderParcels),
          for (final parcel in parcels)
            InkWell(
              borderRadius: AppRadii.inputBorder,
              onTap: () => onOpenParcel(parcel.number),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
                child: Row(
                  children: [
                    const Icon(AppIcons.package, size: AppSizes.iconDense),
                    const SizedBox(width: AppSpacing.x8),
                    Expanded(
                      child: Text(
                        l10n.parcelNumber(parcel.number),
                        style: context.text.bodyStrong,
                      ),
                    ),
                    Flexible(child: OrderStatusChip(status: parcel.status)),
                    const Icon(AppIcons.chevronRight, size: AppSizes.iconDense),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class OrderDeliveryCard extends StatelessWidget {
  const OrderDeliveryCard({required this.order, super.key});

  final OrderDetails order;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.orderDelivery),
          if (order.deliveryTypeName.isNotEmpty)
            InfoRow(
              label: l10n.orderDeliveryType,
              value: order.deliveryTypeName,
            ),
          if (order.receiving.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: AppSpacing.x4),
              child: Text(order.receiving, style: context.text.body),
            ),
        ],
      ),
    );
  }
}

/// Server money (TZ §6): breakdown, then paid and still due.
class OrderMoneyCard extends StatelessWidget {
  const OrderMoneyCard({required this.money, super.key});

  final OrderMoney money;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.orderMoney),
          MoneyBreakdown(
            rows: [
              MoneyRow(label: l10n.moneyItems, amount: money.items),
              MoneyRow(
                label: l10n.moneyChinaDelivery,
                amount: money.chinaDelivery,
              ),
              MoneyRow(
                label: l10n.moneyInternationalDelivery,
                amount: money.internationalDelivery,
                info: money.isEstimate ? l10n.deliveryAfterWeighingInfo : null,
              ),
              if (money.courier > 0)
                MoneyRow(label: l10n.moneyCourier, amount: money.courier),
              if (money.services > 0)
                MoneyRow(label: l10n.moneyServices, amount: money.services),
              if (money.discount > 0)
                MoneyRow(
                  label: l10n.moneyDiscount,
                  amount: money.discount,
                  isDiscount: true,
                ),
            ],
            total: money.total,
          ),
          const SizedBox(height: AppSpacing.x8),
          _AmountRow(
            label: l10n.orderPaid,
            amount: money.paid,
            color: c.success,
          ),
          if (money.due > 0)
            _AmountRow(
              label: l10n.orderDue,
              amount: money.due,
              color: c.warning,
            ),
        ],
      ),
    );
  }
}

class _AmountRow extends StatelessWidget {
  const _AmountRow({
    required this.label,
    required this.amount,
    required this.color,
  });

  final String label;
  final int amount;
  final Color color;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: AppSpacing.x2),
    child: Row(
      children: [
        Expanded(child: Text(label, style: context.text.body)),
        Text(
          MoneyFormat.tmt(context.l10n, amount),
          style: context.text.bodyStrong.copyWith(
            color: color,
            fontFeatures: AppTypography.tabularFigures,
          ),
        ),
      ],
    ),
  );
}

/// History with dates; the newest step is the current one.
class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({required this.history, super.key});

  final List<StatusEvent> history;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final events = history.reversed.toList();
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.orderHistory),
          StatusTimeline(
            steps: [
              for (final (i, e) in events.indexed)
                TimelineStep(
                  title: e.title,
                  date: AppDates.dayMonthTime(l10n, e.at),
                  state: i == 0
                      ? TimelineStepState.current
                      : TimelineStepState.done,
                  icon: i == 0 ? AppIcons.clock : AppIcons.check,
                ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Quiet «Отменить заказ» while the server allows it; afterwards a gentle
/// explanation (UI_DESIGN §7.12).
class OrderCancelFooter extends StatelessWidget {
  const OrderCancelFooter({
    required this.order,
    required this.isBusy,
    required this.onCancel,
    super.key,
  });

  final OrderDetails order;
  final bool isBusy;
  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    final note = order.cancelNote;
    if (order.canCancel) {
      return Center(
        child: TertiaryButton(
          label: context.l10n.orderCancel,
          tone: TertiaryTone.danger,
          isLoading: isBusy,
          onPressed: onCancel,
        ),
      );
    }
    if (note == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x8,
        AppSpacing.screen,
        0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            AppIcons.info,
            size: AppSizes.iconSmall,
            color: context.colors.inkSecondary,
          ),
          const SizedBox(width: AppSpacing.x8),
          Expanded(
            child: Text(
              note,
              style: context.text.caption.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
