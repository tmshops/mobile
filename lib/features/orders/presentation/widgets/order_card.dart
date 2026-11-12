import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order.dart';
import 'orders_common.dart';

/// Number + date, status, thumbnails, total and «Повторить».
class OrderCard extends StatelessWidget {
  const OrderCard({
    required this.order,
    required this.onTap,
    required this.onRepeat,
    this.canRepeat = false,
    this.isRepeating = false,
    super.key,
  });

  final OrderSummary order;
  final VoidCallback onTap;
  final VoidCallback onRepeat;
  final bool canRepeat;
  final bool isRepeating;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return ContentCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.orderNumber(order.number),
                      style: context.text.h3,
                    ),
                    Text(
                      AppDates.dayMonth(l10n, order.createdAt),
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.x8),
              Flexible(child: OrderStatusChip(status: order.status)),
            ],
          ),
          const SizedBox(height: AppSpacing.x12),
          Row(
            children: [
              ThumbStack(urls: order.previews, total: order.itemCount),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      l10n.ordersItemCount(order.itemCount),
                      textAlign: TextAlign.end,
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        MoneyFormat.tmt(l10n, order.total),
                        style: context.text.price,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (canRepeat)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TertiaryButton(
                label: l10n.ordersRepeat,
                icon: AppIcons.retry,
                isLoading: isRepeating,
                onPressed: onRepeat,
              ),
            ),
        ],
      ),
    );
  }
}
