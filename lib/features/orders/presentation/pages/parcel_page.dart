import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/parcel.dart';
import '../bloc/parcel_cubits.dart';
import '../widgets/order_info_sections.dart';
import '../widgets/orders_common.dart';
import '../widgets/parcel_sections.dart';

/// Parcel tracking (TZ §5.15, UI_DESIGN §7.12).
class ParcelPage extends StatelessWidget {
  const ParcelPage({
    required this.number,
    required this.onOpenOrder,
    required this.onPaySurcharge,
    super.key,
  });

  final String number;
  final ValueChanged<String> onOpenOrder;

  /// Opens the surcharge payment (UI_DESIGN §7.18); the parcel reloads
  /// when it returns.
  final Future<void> Function() onPaySurcharge;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => getIt<ParcelCubit>()
      ..load(
        languageCode: context.read<LocaleCubit>().state.languageCode,
        number: number,
      ),
    child: ParcelView(
      number: number,
      onOpenOrder: onOpenOrder,
      onPaySurcharge: onPaySurcharge,
    ),
  );
}

class ParcelView extends StatelessWidget {
  const ParcelView({
    required this.number,
    required this.onOpenOrder,
    required this.onPaySurcharge,
    super.key,
  });

  final String number;
  final ValueChanged<String> onOpenOrder;
  final Future<void> Function() onPaySurcharge;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<ParcelCubit>();
    return MultiBlocListener(
      listeners: [
        BlocListener<ParcelCubit, ParcelState>(
          listenWhen: (a, b) =>
              b.actionFailure != null && a.actionFailure != b.actionFailure,
          listener: (context, state) => showAppToast(
            context,
            message: orderFailureText(l10n, state.actionFailure!),
            icon: AppIcons.warning,
          ),
        ),
        BlocListener<ParcelCubit, ParcelState>(
          listenWhen: (a, b) => !a.wasSent && b.wasSent,
          listener: (context, _) =>
              showAppToast(context, message: l10n.parcelSent),
        ),
      ],
      child: Scaffold(
        backgroundColor: context.colors.surface,
        appBar: AppBar(
          backgroundColor: context.colors.surface,
          title: Text(l10n.parcelNumber(number)),
        ),
        body: BlocBuilder<ParcelCubit, ParcelState>(
          builder: (context, state) => RefreshIndicator(
            onRefresh: cubit.refresh,
            child: LoadableBody<ParcelDetails>(
              data: state.parcel.data,
              failure: state.parcel.failure,
              onRetry: cubit.refresh,
              skeleton: const SkeletonList(itemCount: 3),
              builder: (parcel) => _ParcelContent(
                state: state,
                parcel: parcel,
                onOpenOrder: onOpenOrder,
                onPaySurcharge: () async {
                  await onPaySurcharge();
                  await cubit.refresh();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ParcelContent extends StatelessWidget {
  const _ParcelContent({
    required this.state,
    required this.parcel,
    required this.onOpenOrder,
    required this.onPaySurcharge,
  });

  final ParcelState state;
  final ParcelDetails parcel;
  final ValueChanged<String> onOpenOrder;
  final VoidCallback onPaySurcharge;

  @override
  Widget build(BuildContext context) {
    final fetchedAt = state.parcel.fetchedAt;
    final (surcharge, pickup, courier, claimUntil) = (
      parcel.surcharge,
      parcel.pickup,
      parcel.courier,
      parcel.claimUntil,
    );
    return ListView(
      padding: const EdgeInsets.only(
        top: AppSpacing.x4,
        bottom: AppSpacing.x24,
      ),
      children: [
        if (state.parcel.isFromCache && fetchedAt != null)
          CachedNotice(fetchedAt: fetchedAt),
        ParcelTrackingCard(parcel: parcel),
        if (pickup != null) PickupCard(pickup: pickup),
        if (courier != null) CourierCard(courier: courier),
        if (surcharge != null)
          SurchargeCard(
            surcharge: surcharge,
            onPay: state.canChange ? onPaySurcharge : null,
          ),
        if (parcel.isForming)
          FormingCard(
            parcel: parcel,
            isSending: state.isSending,
            onSendNow: state.canChange ? () => _confirmSend(context) : null,
          ),
        if (claimUntil != null) DeliveredNote(claimUntil: claimUntil),
        ParcelItemsCard(items: parcel.items, onOpenOrder: onOpenOrder),
        if (parcel.history.isNotEmpty)
          OrderHistoryCard(history: parcel.history),
      ],
    );
  }

  /// «Отправить сейчас» is confirmed: the rest of the items will travel
  /// separately and may cost more (TZ §5.15).
  Future<void> _confirmSend(BuildContext context) async {
    final l10n = context.l10n;
    final cubit = context.read<ParcelCubit>();
    final isConfirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.parcelSendNowTitle),
        content: Text(l10n.parcelSendNowText),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.parcelSendNowKeep),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.parcelSendNow),
          ),
        ],
      ),
    );
    if (isConfirmed ?? false) await cubit.sendNow();
  }
}
