import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order.dart';
import 'orders_common.dart';

/// Colour-tinted card: icon, big status title, short explanation, and the
/// payment deadline while it awaits payment.
class OrderStatusHeader extends StatelessWidget {
  const OrderStatusHeader({required this.order, super.key});

  final OrderDetails order;

  static const double _iconCircle = 48;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final tone = order.status.code.tone;
    final deadline = order.payDeadline;
    return ContentCard(
      color: tone.tint(c),
      child: Semantics(
        liveRegion: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: _iconCircle,
                  height: _iconCircle,
                  decoration: BoxDecoration(
                    color: c.background,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(order.status.code.icon, color: tone.color(c)),
                ),
                const SizedBox(width: AppSpacing.x12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(order.status.title, style: context.text.h2),
                      Text(
                        l10n.orderCreatedAt(
                          AppDates.dayMonth(l10n, order.createdAt),
                        ),
                        style: context.text.caption.copyWith(
                          color: c.inkSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (order.statusText.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.x12),
              Text(order.statusText, style: context.text.body),
            ],
            if (deadline != null) ...[
              const SizedBox(height: AppSpacing.x12),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      l10n.orderPayWithin,
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.x8),
                  CountdownTimer(endsAt: deadline, tone: StatusTone.warning),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// «Проблема»: what happened, photo, timer and the server's decisions.
class ProblemCard extends StatelessWidget {
  const ProblemCard({
    required this.item,
    required this.onAction,
    required this.isEnabled,
    this.busyActionId,
    super.key,
  });

  final OrderItem item;
  final ValueChanged<String> onAction;
  final bool isEnabled;
  final String? busyActionId;

  @override
  Widget build(BuildContext context) {
    final problem = item.problem;
    if (problem == null) return const SizedBox.shrink();
    final c = context.colors;
    final deadline = problem.deadline;
    return ContentCard(
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: BorderDirectional(
            start: BorderSide(
              color: c.danger,
              width: AppSizes.selectedBorder * 2,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: AppSpacing.x12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(AppIcons.problem, color: c.danger),
                  const SizedBox(width: AppSpacing.x8),
                  Expanded(child: Text(problem.title, style: context.text.h3)),
                ],
              ),
              const SizedBox(height: AppSpacing.x8),
              _ItemRow(item: item, showStatus: false),
              const SizedBox(height: AppSpacing.x8),
              Text(problem.description, style: context.text.body),
              if (problem.photos.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.x12),
                _PhotoStrip(urls: problem.photos),
              ],
              if (deadline != null) ...[
                const SizedBox(height: AppSpacing.x12),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        context.l10n.orderDecideWithin,
                        style: context.text.caption.copyWith(
                          color: c.inkSecondary,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.x8),
                    CountdownTimer(endsAt: deadline),
                  ],
                ),
              ],
              const SizedBox(height: AppSpacing.x12),
              for (final action in problem.actions)
                Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.x8),
                  child: action.isPrimary
                      ? PrimaryButton(
                          label: action.title,
                          isLoading: busyActionId == action.id,
                          onPressed: isEnabled
                              ? () => onAction(action.id)
                              : null,
                        )
                      : SecondaryButton(
                          label: action.title,
                          isLoading: busyActionId == action.id,
                          onPressed: isEnabled
                              ? () => onAction(action.id)
                              : null,
                        ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderItemsCard extends StatelessWidget {
  const OrderItemsCard({
    required this.items,
    required this.onOpenProduct,
    super.key,
  });

  final List<OrderItem> items;
  final ValueChanged<String> onOpenProduct;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ContentCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(l10n.orderItems),
          for (final (i, item) in items.indexed) ...[
            if (i > 0) const Divider(height: AppSpacing.x24),
            InkWell(
              borderRadius: AppRadii.imageBorder,
              onTap: () => onOpenProduct(item.productId),
              child: _ItemRow(item: item),
            ),
            if (item.chinaTrack case final track?)
              InfoRow(
                label: l10n.orderChinaTrack,
                value: track,
                onCopy: () => copyWithToast(context, track),
              ),
            if (item.warehousePhotos.isNotEmpty) ...[
              const SizedBox(height: AppSpacing.x8),
              Text(
                l10n.orderWarehousePhotos,
                style: context.text.caption.copyWith(
                  color: context.colors.inkSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.x4),
              _PhotoStrip(urls: item.warehousePhotos),
            ],
          ],
        ],
      ),
    );
  }
}

class _ItemRow extends StatelessWidget {
  const _ItemRow({required this.item, this.showStatus = true});

  final OrderItem item;
  final bool showStatus;

  static const double _image = 64;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final options = item.options;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: context.text.body,
              ),
              if (options != null)
                Text(
                  options,
                  style: context.text.caption.copyWith(color: c.inkSecondary),
                ),
              const SizedBox(height: AppSpacing.x4),
              Text(
                l10n.orderItemPrice(
                  '${item.quantity}',
                  MoneyFormat.tmt(l10n, item.price),
                ),
                style: context.text.bodyStrong.copyWith(
                  fontFeatures: AppTypography.tabularFigures,
                ),
              ),
              if (showStatus) ...[
                const SizedBox(height: AppSpacing.x8),
                OrderStatusChip(status: item.status),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

/// Warehouse or problem photos; tap opens them full-screen.
class _PhotoStrip extends StatelessWidget {
  const _PhotoStrip({required this.urls});

  final List<String> urls;

  static const double _size = 72;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: _size,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: urls.length,
      separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.x8),
      itemBuilder: (context, i) => Semantics(
        button: true,
        label: context.l10n.orderPhoto('${i + 1}'),
        child: InkWell(
          borderRadius: AppRadii.imageBorder,
          onTap: () => showDialog<void>(
            context: context,
            builder: (context) => Dialog(
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                borderRadius: AppRadii.cardBorder,
              ),
              child: AspectRatio(
                aspectRatio: 1,
                child: AppNetworkImage(url: urls[i], fit: BoxFit.contain),
              ),
            ),
          ),
          child: ClipRRect(
            borderRadius: AppRadii.imageBorder,
            child: SizedBox.square(
              dimension: _size,
              child: AppNetworkImage(url: urls[i]),
            ),
          ),
        ),
      ),
    ),
  );
}
