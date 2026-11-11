import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_details.dart';
import '../bloc/product_bloc.dart';

/// Delivery card (TZ §5.6.4): region chip, then express / air / truck with
/// term and price. Without a weight the price reads «уточнится после
/// взвешивания»; refused types stay visible, greyed, with the reason.
class DeliveryBlock extends StatelessWidget {
  const DeliveryBlock({
    required this.quotes,
    required this.status,
    required this.regionName,
    required this.onChangeRegion,
    required this.onRetry,
    super.key,
  });

  final List<DeliveryQuote> quotes;
  final DeliveryStatus status;

  /// `null` while the region list loads.
  final String? regionName;
  final VoidCallback onChangeRegion;
  final VoidCallback onRetry;

  static const _skeletonRows = 3;
  static const double _rowHeight = 40;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final region = regionName;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.surface,
        borderRadius: AppRadii.cardBorder,
      ),
      child: Padding(
        padding: AppSpacing.cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(l10n.productDelivery, style: context.text.h3),
                ),
                if (region != null)
                  Flexible(
                    child: Semantics(
                      hint: l10n.regionChange,
                      child: AppChip(
                        label: region,
                        icon: AppIcons.chevronDown,
                        onTap: onChangeRegion,
                      ),
                    ),
                  ),
              ],
            ),
            ...switch (status) {
              DeliveryStatus.loading => [
                Shimmer(
                  child: Column(
                    children: [
                      for (var i = 0; i < _skeletonRows; i++)
                        const Padding(
                          padding: EdgeInsets.only(top: AppSpacing.x8),
                          child: SkeletonBox(
                            width: double.infinity,
                            height: _rowHeight,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
              DeliveryStatus.failure => [
                Text(
                  l10n.productDeliveryError,
                  style: context.text.caption.copyWith(color: c.inkSecondary),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: TertiaryButton(
                    label: l10n.actionRetry,
                    icon: AppIcons.retry,
                    onPressed: onRetry,
                  ),
                ),
              ],
              DeliveryStatus.loaded => [
                for (final quote in quotes) _QuoteRow(quote: quote),
              ],
            },
          ],
        ),
      ),
    );
  }
}

class _QuoteRow extends StatelessWidget {
  const _QuoteRow({required this.quote});

  final DeliveryQuote quote;

  static const double _circle = 40;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final reason = quote.unavailableReason;
    final price = quote.price;
    final icon = switch (quote.type) {
      DeliveryType.express => AppIcons.deliveryExpress,
      DeliveryType.air => AppIcons.deliveryAir,
      DeliveryType.truck => AppIcons.deliveryTruck,
    };
    return Opacity(
      opacity: reason == null ? 1 : AppOpacity.disabled,
      child: Padding(
        padding: const EdgeInsets.only(top: AppSpacing.x12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: _circle,
              height: _circle,
              decoration: BoxDecoration(
                color: c.background,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: AppSizes.iconDense, color: c.primary),
            ),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(quote.name, style: context.text.bodyStrong),
                  Text(
                    reason ?? quote.term,
                    style: context.text.caption.copyWith(
                      color: reason == null ? c.inkSecondary : c.danger,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.x8),
            if (reason == null)
              Flexible(
                child: price != null
                    ? Text(
                        MoneyFormat.tmt(l10n, price),
                        textAlign: TextAlign.end,
                        style: context.text.bodyStrong.copyWith(
                          fontFeatures: AppTypography.tabularFigures,
                        ),
                      )
                    : Tooltip(
                        message: l10n.deliveryAfterWeighingInfo,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                l10n.deliveryAfterWeighing,
                                textAlign: TextAlign.end,
                                style: context.text.caption.copyWith(
                                  color: c.inkSecondary,
                                ),
                              ),
                            ),
                            const SizedBox(width: AppSpacing.x4),
                            Icon(
                              AppIcons.info,
                              size: AppSizes.iconSmall,
                              color: c.inkSecondary,
                            ),
                          ],
                        ),
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
