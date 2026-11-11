import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import 'kit_samples.dart';
import 'kit_section.dart';

/// Status chips, timeline, delivery cards, money breakdown, progress.
class KitStatusSection extends StatefulWidget {
  const KitStatusSection({super.key});

  @override
  State<KitStatusSection> createState() => _KitStatusSectionState();
}

class _KitStatusSectionState extends State<KitStatusSection> {
  static const _deliveryIcons = [
    AppIcons.deliveryAir,
    AppIcons.deliveryExpress,
    AppIcons.deliveryTruck,
  ];
  static const _deliveryPrices = [180, 420, null];

  int _delivery = 0;
  int _cartSum = 380;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final s = KitSamples.of(context);
    const tones = [
      (StatusTone.neutral, AppIcons.package),
      (StatusTone.brand, AppIcons.statusPaid),
      (StatusTone.info, AppIcons.deliveryAir),
      (StatusTone.warning, AppIcons.clock),
      (StatusTone.danger, AppIcons.warning),
      (StatusTone.success, AppIcons.statusDelivered),
    ];
    const stepIcons = [
      AppIcons.package,
      AppIcons.statusPaid,
      AppIcons.statusBought,
      AppIcons.statusWarehouse,
      AppIcons.deliveryAir,
      AppIcons.checkCircle,
    ];

    return KitSection(
      title: 'Status · Delivery · Money',
      children: [
        Wrap(
          spacing: AppSpacing.x8,
          runSpacing: AppSpacing.x8,
          children: [
            for (var i = 0; i < tones.length; i++)
              StatusChip(
                label: s.statuses[i],
                tone: tones[i].$1,
                icon: tones[i].$2,
              ),
          ],
        ),
        StatusTimeline(
          steps: [
            for (var i = 0; i < s.timeline.length; i++)
              TimelineStep(
                title: s.timeline[i],
                icon: stepIcons[i],
                date: i < s.dates.length ? s.dates[i] : null,
                state: i < 4
                    ? TimelineStepState.done
                    : i == 4
                    ? TimelineStepState.current
                    : TimelineStepState.upcoming,
              ),
          ],
        ),
        for (var i = 0; i < 3; i++)
          DeliveryOptionCard(
            icon: _deliveryIcons[i],
            title: s.delivery[i],
            term: s.terms[i],
            priceLabel: switch (_deliveryPrices[i]) {
              final price? => MoneyFormat.tmt(l10n, price),
              null => l10n.deliveryAfterWeighing,
            },
            isSelected: _delivery == i,
            disabledReason: i == 1 ? s.deliveryDisabled : null,
            onTap: () => setState(() => _delivery = i),
          ),
        MoneyBreakdown(
          rows: [
            MoneyRow(label: l10n.moneyItems, amount: 1100),
            MoneyRow(label: l10n.moneyChinaDelivery, amount: 24),
            MoneyRow(
              label: l10n.moneyInternationalDelivery,
              amount: null,
              info: l10n.deliveryAfterWeighingInfo,
            ),
            MoneyRow(label: l10n.moneyDiscount, amount: 108, isDiscount: true),
          ],
          total: 1016,
        ),
        const KitLabel('ProgressToMinimum · tap the bar to add 60 TMT'),
        GestureDetector(
          onTap: () =>
              setState(() => _cartSum = _cartSum >= 500 ? 380 : _cartSum + 60),
          child: ProgressToMinimum(current: _cartSum, minimum: 500),
        ),
      ],
    );
  }
}
