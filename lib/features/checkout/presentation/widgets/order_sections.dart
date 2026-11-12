import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/checkout.dart';
import 'checkout_section.dart';

/// 3. Delivery type: express / air / truck cards; refused ones greyed with
/// the server's reason (TZ §5.12.3).
class DeliveryTypeSection extends StatelessWidget {
  const DeliveryTypeSection({
    required this.preview,
    required this.selected,
    required this.showError,
    super.key,
  });

  final CheckoutPreview preview;
  final CheckoutDeliveryType? selected;
  final bool showError;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final none = preview.selectedDelivery == null;
    return CheckoutSection(
      number: 3,
      title: l10n.checkoutDeliveryType,
      error: showError && none ? l10n.checkoutDeliveryError : null,
      child: Column(
        children: [
          for (final option in preview.deliveryOptions)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.x8),
              child: DeliveryOptionCard(
                icon: switch (option.type) {
                  CheckoutDeliveryType.express => AppIcons.deliveryExpress,
                  CheckoutDeliveryType.air => AppIcons.deliveryAir,
                  CheckoutDeliveryType.truck => AppIcons.deliveryTruck,
                },
                title: option.name,
                term: option.term,
                priceLabel: MoneyFormat.tmt(l10n, option.price),
                isSelected: option.type == selected,
                disabledReason: option.unavailableReason,
                onTap: () => editDraft(
                  context,
                  (d) => d.copyWith(deliveryType: option.type),
                ),
              ),
            ),
          Row(
            children: [
              Icon(
                AppIcons.info,
                size: AppSizes.iconSmall,
                color: context.colors.inkSecondary,
              ),
              const SizedBox(width: AppSpacing.x4),
              Expanded(
                child: Text(
                  l10n.deliveryAfterWeighing,
                  style: context.text.caption.copyWith(
                    color: context.colors.inkSecondary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// 4. Extra services with prices, and the order comment.
class ServicesSection extends StatefulWidget {
  const ServicesSection({
    required this.services,
    required this.selected,
    required this.comment,
    super.key,
  });

  final List<ExtraService> services;
  final Set<String> selected;
  final String comment;

  @override
  State<ServicesSection> createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
  late final _comment = TextEditingController(text: widget.comment);

  static const _maxComment = 300;

  @override
  void dispose() {
    _comment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CheckoutSection(
      number: 4,
      title: l10n.checkoutServices,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final service in widget.services)
            MergeSemantics(
              child: InkWell(
                onTap: () => _toggle(service.id),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: AppSizes.touchTarget,
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: widget.selected.contains(service.id),
                        onChanged: (_) => _toggle(service.id),
                      ),
                      Expanded(
                        child: Text(service.title, style: context.text.body),
                      ),
                      Text(
                        MoneyFormat.tmt(l10n, service.price),
                        style: context.text.bodyStrong.copyWith(
                          fontFeatures: AppTypography.tabularFigures,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          const SizedBox(height: AppSpacing.x8),
          AppTextField(
            controller: _comment,
            label: l10n.checkoutComment,
            minLines: 2,
            maxLines: 4,
            maxLength: _maxComment,
            onChanged: (v) => editDraft(context, (d) => d.copyWith(comment: v)),
          ),
        ],
      ),
    );
  }

  void _toggle(String id) => editDraft(context, (d) {
    final ids = {...d.serviceIds};
    if (!ids.remove(id)) ids.add(id);
    return d.copyWith(serviceIds: ids);
  });
}

/// 5. Payment method and the advance split (TZ §5.12.5).
class PaymentSection extends StatelessWidget {
  const PaymentSection({
    required this.payment,
    required this.summary,
    super.key,
  });

  final PaymentMethod payment;
  final CheckoutSummary summary;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final options = [
      (
        PaymentMethod.card,
        AppIcons.statusPaid,
        l10n.checkoutPayCard,
        l10n.checkoutPayCardText,
      ),
      (
        PaymentMethod.cash,
        AppIcons.statusBought,
        l10n.checkoutPayCash,
        l10n.checkoutPayCashText,
      ),
    ];
    return CheckoutSection(
      number: 5,
      title: l10n.checkoutPayment,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final (method, icon, title, text) in options)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.x8),
              child: DeliveryOptionCard(
                icon: icon,
                title: title,
                term: text,
                priceLabel: '',
                isSelected: payment == method,
                onTap: () =>
                    editDraft(context, (d) => d.copyWith(payment: method)),
              ),
            ),
          if (summary.payLater > 0)
            DecoratedBox(
              decoration: BoxDecoration(
                color: c.primarySoft,
                borderRadius: AppRadii.cardBorder,
              ),
              child: Padding(
                padding: AppSpacing.cardPadding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      AppIcons.info,
                      size: AppSizes.iconDense,
                      color: c.primaryPressed,
                    ),
                    const SizedBox(width: AppSpacing.x8),
                    Expanded(
                      child: Text(
                        l10n.checkoutAdvance(
                          MoneyFormat.tmt(l10n, summary.payNow),
                          MoneyFormat.tmt(l10n, summary.payLater),
                        ),
                        style: context.text.body,
                      ),
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

/// 6. Breakdown and the required consent (TZ §5.12.6).
class TotalSection extends StatelessWidget {
  const TotalSection({
    required this.summary,
    required this.hasConsent,
    required this.showError,
    required this.onReadOffer,
    super.key,
  });

  final CheckoutSummary summary;
  final bool hasConsent;
  final bool showError;
  final VoidCallback onReadOffer;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return CheckoutSection(
      number: 6,
      title: l10n.checkoutTotal,
      error: showError && !hasConsent ? l10n.checkoutConsentError : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MoneyBreakdown(
            total: summary.total,
            rows: [
              MoneyRow(label: l10n.moneyItems, amount: summary.items),
              MoneyRow(
                label: l10n.moneyChinaDelivery,
                amount: summary.chinaDelivery,
              ),
              MoneyRow(
                label: l10n.moneyInternationalDelivery,
                amount: summary.internationalEstimate,
                info: l10n.deliveryAfterWeighingInfo,
              ),
              if (summary.courier > 0)
                MoneyRow(label: l10n.moneyCourier, amount: summary.courier),
              if (summary.services > 0)
                MoneyRow(label: l10n.moneyServices, amount: summary.services),
              if (summary.discount > 0)
                MoneyRow(
                  label: l10n.moneyDiscount,
                  amount: summary.discount,
                  isDiscount: true,
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.x12),
          MergeSemantics(
            child: InkWell(
              onTap: () => editDraft(
                context,
                (d) => d.copyWith(hasConsent: !d.hasConsent),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: hasConsent,
                    onChanged: (v) => editDraft(
                      context,
                      (d) => d.copyWith(hasConsent: v ?? false),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: AppSpacing.x12),
                      child: Text(
                        l10n.checkoutConsent,
                        style: context.text.caption,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TertiaryButton(
              label: l10n.checkoutReadOffer,
              onPressed: onReadOffer,
            ),
          ),
        ],
      ),
    );
  }
}
