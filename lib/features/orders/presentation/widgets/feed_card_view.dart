import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/orders_feed.dart';

/// An order or parcel in a profile filter: number and date, status, the
/// matching items, the tracking row, the sum to pay and the buttons
/// (UI_DESIGN §7.12).
class FeedCardView extends StatelessWidget {
  const FeedCardView({
    required this.card,
    required this.onOpen,
    required this.onAction,
    super.key,
  });

  final FeedCard card;
  final VoidCallback onOpen;
  final ValueChanged<FeedAction> onAction;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final due = card.amountDue;
    final track = card.track;
    return ContentCard(
      onTap: onOpen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(switch (card.kind) {
                      FeedKind.order => l10n.orderNumber(card.number),
                      FeedKind.parcel => l10n.parcelNumber(card.number),
                    }, style: context.text.h3),
                    Text(
                      AppDates.dayMonth(l10n, card.createdAt),
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.x8),
              Flexible(
                child: Text(
                  card.status.title,
                  textAlign: TextAlign.end,
                  style: context.text.bodyStrong.copyWith(
                    color: c.primaryPressed,
                  ),
                ),
              ),
            ],
          ),
          for (final item in card.items) _ItemRow(item: item),
          if (track != null) _TrackRow(track: track),
          if (due != null && due > 0)
            Padding(
              padding: const EdgeInsets.only(top: AppSpacing.x12),
              child: Text(
                l10n.ordersFeedDue(MoneyFormat.tmt(l10n, due)),
                textAlign: TextAlign.end,
                style: context.text.price,
              ),
            ),
          if (card.actions.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: AppSpacing.x12),
              child: Wrap(
                alignment: WrapAlignment.end,
                spacing: AppSpacing.x8,
                runSpacing: AppSpacing.x8,
                children: [
                  for (final action in card.actions)
                    _ActionButton(
                      action: action,
                      onPressed: () => onAction(action),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _ItemRow extends StatelessWidget {
  const _ItemRow({required this.item});

  final FeedItem item;

  static const double _image = 72;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final options = item.options;
    final meta = context.text.caption.copyWith(color: c.inkSecondary);
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.x12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: AppRadii.imageBorder,
            child: SizedBox.square(
              dimension: _image,
              child: AppNetworkImage(
                url: item.imageUrl,
                semanticLabel: item.title,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        item.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.body,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.x8),
                    Text(
                      MoneyFormat.tmt(l10n, item.price),
                      style: context.text.bodyStrong.copyWith(
                        fontFeatures: AppTypography.tabularFigures,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        options ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: meta,
                      ),
                    ),
                    Text(l10n.ordersFeedQuantity(item.quantity), style: meta),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Grey «🚚 В пути | едет в Туркменистан …» row.
class _TrackRow extends StatelessWidget {
  const _TrackRow({required this.track});

  final FeedTrack track;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Container(
      margin: const EdgeInsets.only(top: AppSpacing.x12),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.x12,
        vertical: AppSpacing.x8,
      ),
      decoration: BoxDecoration(
        color: c.surface,
        borderRadius: AppRadii.imageBorder,
      ),
      child: Row(
        children: [
          Icon(AppIcons.deliveryTruck, size: AppSizes.iconDense, color: c.ink),
          const SizedBox(width: AppSpacing.x8),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: track.title, style: context.text.bodyStrong),
                  TextSpan(
                    text: '  ${track.text}',
                    style: context.text.caption.copyWith(color: c.inkSecondary),
                  ),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.action, required this.onPressed});

  final FeedAction action;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final label = switch (action.type) {
      FeedActionType.pay => l10n.ordersFeedPay,
      FeedActionType.paySurcharge => l10n.ordersFeedPaySurcharge,
      FeedActionType.track => l10n.ordersFeedTrack,
      FeedActionType.review => l10n.ordersFeedReview,
      FeedActionType.resolve => l10n.ordersFeedResolve,
      FeedActionType.details => l10n.ordersFeedDetails,
    };
    return action.isPrimary
        ? PrimaryButton(
            label: label,
            isExpanded: false,
            size: AppButtonSize.medium,
            onPressed: onPressed,
          )
        : SecondaryButton(
            label: label,
            isExpanded: false,
            size: AppButtonSize.medium,
            onPressed: onPressed,
          );
  }
}
