import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order_status.dart';

/// Colour and icon of a status (TZ §6.2). Never colour alone: the chip
/// always adds the server title.
extension StatusLook on StatusCode {
  StatusTone get tone => switch (this) {
    StatusCode.awaitingPayment ||
    StatusCode.awaitingSurcharge ||
    StatusCode.quickOrder => StatusTone.warning,
    StatusCode.problem || StatusCode.cancelled => StatusTone.danger,
    StatusCode.inTransit ||
    StatusCode.customs ||
    StatusCode.arrivedTm ||
    StatusCode.toWarehouse => StatusTone.info,
    StatusCode.readyForPickup ||
    StatusCode.withCourier ||
    StatusCode.delivered => StatusTone.success,
    StatusCode.paid ||
    StatusCode.purchased ||
    StatusCode.inWarehouse ||
    StatusCode.forming => StatusTone.brand,
    StatusCode.unknown => StatusTone.neutral,
  };

  IconData get icon => switch (this) {
    StatusCode.quickOrder => AppIcons.phone,
    StatusCode.awaitingPayment => AppIcons.clock,
    StatusCode.paid => AppIcons.statusPaid,
    StatusCode.purchased => AppIcons.statusBought,
    StatusCode.toWarehouse => AppIcons.courier,
    StatusCode.inWarehouse => AppIcons.statusWarehouse,
    StatusCode.problem => AppIcons.problem,
    StatusCode.cancelled => AppIcons.cancelled,
    StatusCode.forming => AppIcons.forming,
    StatusCode.awaitingSurcharge => AppIcons.scales,
    StatusCode.inTransit => AppIcons.inTransit,
    StatusCode.customs => AppIcons.customs,
    StatusCode.arrivedTm => AppIcons.arrived,
    StatusCode.readyForPickup => AppIcons.handover,
    StatusCode.withCourier => AppIcons.courier,
    StatusCode.delivered => AppIcons.statusDelivered,
    StatusCode.unknown => AppIcons.info,
  };
}

class OrderStatusChip extends StatelessWidget {
  const OrderStatusChip({required this.status, super.key});

  final Status status;

  @override
  Widget build(BuildContext context) => StatusChip(
    label: status.title,
    tone: status.code.tone,
    icon: status.code.icon,
  );
}

/// Overlapping product photos: up to [max], then «+3».
class ThumbStack extends StatelessWidget {
  const ThumbStack({required this.urls, this.total, super.key});

  final List<String> urls;

  /// Item count when it is larger than the photos sent.
  final int? total;

  static const max = 4;
  static const double _size = 48;
  static const double _overlap = 14;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final shown = urls.take(max).toList();
    final extra = (total ?? urls.length) - shown.length;
    final count = shown.length + (extra > 0 ? 1 : 0);
    return SizedBox(
      height: _size,
      width: count == 0 ? 0 : _size + (count - 1) * (_size - _overlap),
      child: Stack(
        children: [
          for (final (i, url) in shown.indexed)
            PositionedDirectional(
              start: i * (_size - _overlap),
              child: _Thumb(child: AppNetworkImage(url: url)),
            ),
          if (extra > 0)
            PositionedDirectional(
              start: shown.length * (_size - _overlap),
              child: _Thumb(
                child: ColoredBox(
                  color: c.surface,
                  child: Center(
                    child: Text(
                      context.l10n.ordersMoreItems('$extra'),
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _Thumb extends StatelessWidget {
  const _Thumb({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
    width: ThumbStack._size,
    height: ThumbStack._size,
    decoration: BoxDecoration(
      borderRadius: AppRadii.imageBorder,
      border: Border.all(
        color: context.colors.background,
        width: AppSizes.selectedBorder,
      ),
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(AppRadii.image - AppSizes.selectedBorder),
      ),
      child: child,
    ),
  );
}

/// «Данные на 24 ноября, 14:30» above a device copy shown offline (TZ §8).
class CachedNotice extends StatelessWidget {
  const CachedNotice({required this.fetchedAt, super.key});

  final DateTime fetchedAt;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.x12,
      ),
      child: Semantics(
        liveRegion: true,
        child: Row(
          children: [
            Icon(
              AppIcons.offline,
              size: AppSizes.iconSmall,
              color: c.inkSecondary,
            ),
            const SizedBox(width: AppSpacing.x8),
            Expanded(
              child: Text(
                l10n.ordersCachedAt(AppDates.dayMonthTime(l10n, fetchedAt)),
                style: context.text.caption.copyWith(color: c.inkSecondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Text for a failed change: server text if any, else a general message.
String orderFailureText(AppLocalizations l10n, Failure failure) =>
    switch (failure) {
      ServerFailure(:final message?) => message,
      NetworkFailure() => l10n.offlineBanner,
      _ => l10n.errorGenericMessage,
    };

/// Copies [text] and confirms with a toast.
Future<void> copyWithToast(BuildContext context, String text) async {
  await Clipboard.setData(ClipboardData(text: text));
  if (!context.mounted) return;
  showAppToast(
    context,
    message: context.l10n.ordersCopied,
    icon: AppIcons.copy,
  );
}

/// Page body states shared by the four screens (TZ §8).
class LoadableBody<T> extends StatelessWidget {
  const LoadableBody({
    required this.data,
    required this.failure,
    required this.onRetry,
    required this.builder,
    required this.skeleton,
    super.key,
  });

  final T? data;
  final Failure? failure;
  final VoidCallback onRetry;
  final Widget Function(T data) builder;
  final Widget skeleton;

  @override
  Widget build(BuildContext context) {
    final value = data;
    if (value != null) return builder(value);
    final problem = failure;
    if (problem != null) {
      return Center(
        child: SingleChildScrollView(
          child: FailureView(failure: problem, onRetry: onRetry),
        ),
      );
    }
    return skeleton;
  }
}
