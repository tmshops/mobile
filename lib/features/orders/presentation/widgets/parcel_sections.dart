import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order_status.dart';
import '../../domain/entities/parcel.dart';
import 'orders_common.dart';
import 'parcel_progress.dart';

/// Hero tracking card: mini progress, current stage, ETA in big text.
class ParcelTrackingCard extends StatelessWidget {
  const ParcelTrackingCard({required this.parcel, super.key});

  final ParcelDetails parcel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final (from, to) = (parcel.etaFrom, parcel.etaTo);
    final weight = parcel.weightGrams;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  ParcelProgress.labelOf(l10n, parcel.stage),
                  style: context.text.h2,
                ),
              ),
              Flexible(child: OrderStatusChip(status: parcel.status)),
            ],
          ),
          const SizedBox(height: AppSpacing.x20),
          ParcelProgress(stage: parcel.stage),
          const SizedBox(height: AppSpacing.x20),
          if (from != null && to != null) ...[
            Text(
              l10n.parcelExpected,
              style: context.text.caption.copyWith(color: c.inkSecondary),
            ),
            Text(AppDates.range(l10n, from, to), style: context.text.display),
            const SizedBox(height: AppSpacing.x8),
          ],
          Wrap(
            spacing: AppSpacing.x16,
            runSpacing: AppSpacing.x4,
            children: [
              if (parcel.deliveryTypeName.isNotEmpty)
                _Meta(icon: AppIcons.inTransit, text: parcel.deliveryTypeName),
              if (weight != null)
                _Meta(icon: AppIcons.scales, text: _kg(l10n, weight)),
            ],
          ),
        ],
      ),
    );
  }
}

String _kg(AppLocalizations l10n, int grams) {
  const gramsPerKg = 1000;
  const hundredGrams = 100;
  final whole = grams ~/ gramsPerKg;
  final tenths = (grams % gramsPerKg) ~/ hundredGrams;
  return l10n.parcelWeight(tenths == 0 ? '$whole' : '$whole,$tenths');
}

class _Meta extends StatelessWidget {
  const _Meta({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: AppSizes.iconSmall, color: c.inkSecondary),
        const SizedBox(width: AppSpacing.x4),
        Text(text, style: context.text.caption.copyWith(color: c.inkSecondary)),
      ],
    );
  }
}

/// «Ожидает доплаты»: weight × rate − paid = surcharge, and «Оплатить».
class SurchargeCard extends StatelessWidget {
  const SurchargeCard({
    required this.surcharge,
    required this.onPay,
    super.key,
  });

  final Surcharge surcharge;
  final VoidCallback? onPay;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final isRefund = surcharge.amount < 0;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.parcelSurchargeTitle),
          InfoRow(
            label: l10n.parcelSurchargeWeight,
            value: _kg(l10n, surcharge.weightGrams),
          ),
          InfoRow(
            label: l10n.parcelSurchargeRate,
            value: l10n.parcelRatePerKg(
              MoneyFormat.tmt(l10n, surcharge.ratePerKg),
            ),
          ),
          InfoRow(
            label: l10n.parcelSurchargeCost,
            value: MoneyFormat.tmt(l10n, surcharge.deliveryCost),
          ),
          InfoRow(
            label: l10n.parcelSurchargePaid,
            value: '− ${MoneyFormat.tmt(l10n, surcharge.paid)}',
          ),
          const Divider(height: AppSpacing.x24),
          Row(
            children: [
              Expanded(
                child: Text(
                  isRefund
                      ? l10n.parcelSurchargeRefund
                      : l10n.parcelSurchargeDue,
                  style: context.text.h3,
                ),
              ),
              Text(
                MoneyFormat.tmt(l10n, surcharge.amount.abs()),
                style: context.text.price.copyWith(
                  color: isRefund ? c.success : c.warning,
                ),
              ),
            ],
          ),
          if (!isRefund) ...[
            const SizedBox(height: AppSpacing.x16),
            PrimaryButton(
              label: l10n.checkoutPay(MoneyFormat.tmt(l10n, surcharge.amount)),
              onPressed: onPay,
            ),
          ],
        ],
      ),
    );
  }
}

/// «Готова к выдаче»: big pickup code with copy, the point and its hours.
class PickupCard extends StatelessWidget {
  const PickupCard({required this.pickup, super.key});

  final PickupInfo pickup;

  static const double _codeLetterSpacing = 8;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.parcelPickupCode),
          Material(
            color: c.primarySoft,
            borderRadius: AppRadii.cardBorder,
            child: InkWell(
              borderRadius: AppRadii.cardBorder,
              onTap: () => copyWithToast(context, pickup.code),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.x16),
                child: Semantics(
                  label: l10n.parcelPickupCodeSpoken(pickup.code),
                  button: true,
                  excludeSemantics: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        pickup.code,
                        style: context.text.display.copyWith(
                          fontFeatures: AppTypography.tabularFigures,
                          letterSpacing: _codeLetterSpacing,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.x12),
                      Icon(AppIcons.copy, color: c.primary),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.x8),
          Text(
            l10n.parcelPickupCodeHint,
            textAlign: TextAlign.center,
            style: context.text.caption.copyWith(color: c.inkSecondary),
          ),
          const SizedBox(height: AppSpacing.x16),
          _PlaceRow(
            icon: AppIcons.mapPin,
            title: pickup.pointName,
            text: pickup.address,
          ),
          _PlaceRow(icon: AppIcons.clock, title: pickup.hours),
          _PlaceRow(
            icon: AppIcons.phone,
            title: pickup.phone,
            onTap: () => copyWithToast(context, pickup.phone),
          ),
          if (pickup.amountDue > 0)
            InfoRow(
              label: l10n.parcelDueAtHandover,
              value: MoneyFormat.tmt(l10n, pickup.amountDue),
            ),
        ],
      ),
    );
  }
}

/// «У курьера»: name, phone, amount to pay.
class CourierCard extends StatelessWidget {
  const CourierCard({required this.courier, super.key});

  final CourierInfo courier;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.parcelCourier),
          _PlaceRow(icon: AppIcons.user, title: courier.name),
          _PlaceRow(
            icon: AppIcons.phone,
            title: courier.phone,
            onTap: () => copyWithToast(context, courier.phone),
          ),
          if (courier.amountDue > 0)
            InfoRow(
              label: l10n.parcelDueAtHandover,
              value: MoneyFormat.tmt(l10n, courier.amountDue),
            ),
        ],
      ),
    );
  }
}

class _PlaceRow extends StatelessWidget {
  const _PlaceRow({
    required this.icon,
    required this.title,
    this.text,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final subtitle = text;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.inputBorder,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: AppSizes.iconDense, color: c.inkSecondary),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: context.text.bodyStrong),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                ],
              ),
            ),
            if (onTap != null)
              Icon(
                AppIcons.copy,
                size: AppSizes.iconSmall,
                color: c.inkTertiary,
              ),
          ],
        ),
      ),
    );
  }
}

/// «Формируется»: free storage and «Отправить сейчас».
class FormingCard extends StatelessWidget {
  const FormingCard({
    required this.parcel,
    required this.isSending,
    required this.onSendNow,
    super.key,
  });

  final ParcelDetails parcel;
  final bool isSending;
  final VoidCallback? onSendNow;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final until = parcel.freeStorageUntil;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.parcelFormingText, style: context.text.body),
          if (until != null) ...[
            const SizedBox(height: AppSpacing.x8),
            Text(
              l10n.parcelFreeStorage(AppDates.dayMonth(l10n, until)),
              style: context.text.caption.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
          ],
          if (parcel.canSendNow) ...[
            const SizedBox(height: AppSpacing.x16),
            SecondaryButton(
              label: l10n.parcelSendNow,
              icon: AppIcons.inTransit,
              isLoading: isSending,
              onPressed: onSendNow,
            ),
          ],
        ],
      ),
    );
  }
}

/// What is inside, with the order each item came from.
class ParcelItemsCard extends StatelessWidget {
  const ParcelItemsCard({
    required this.items,
    required this.onOpenOrder,
    super.key,
  });

  final List<ParcelItem> items;
  final ValueChanged<String> onOpenOrder;

  static const double _image = 48;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return OrdersCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.parcelContents),
          for (final item in items)
            InkWell(
              borderRadius: AppRadii.inputBorder,
              onTap: () => onOpenOrder(item.orderNumber),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: AppRadii.imageBorder,
                      child: SizedBox.square(
                        dimension: _image,
                        child: AppNetworkImage(url: item.imageUrl),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.x12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.text.body,
                          ),
                          Text(
                            l10n.parcelItemFrom(
                              '${item.quantity}',
                              item.orderNumber,
                            ),
                            style: context.text.caption.copyWith(
                              color: c.inkSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      AppIcons.chevronRight,
                      size: AppSizes.iconDense,
                      color: c.inkTertiary,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// «Выдана»: claims are accepted until a date.
class DeliveredNote extends StatelessWidget {
  const DeliveredNote({required this.claimUntil, super.key});

  final DateTime claimUntil;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return OrdersCard(
      color: StatusTone.success.tint(context.colors),
      child: Text(
        l10n.parcelClaimUntil(AppDates.dayMonth(l10n, claimUntil)),
        style: context.text.body,
      ),
    );
  }
}

extension ParcelStageOfStatus on ParcelDetails {
  bool get isForming => status.code == StatusCode.forming;
}
