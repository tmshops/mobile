import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/wallet.dart';
import '../bloc/surcharges_cubit.dart';
import '../bloc/wallet_payment_cubit.dart';
import 'wallet_sheets.dart';

enum SurchargesTab { due, refunds }

/// «Доплаты и возвраты» (UI_DESIGN §7.18): segmented «К оплате /
/// Возвраты». Expects [SurchargesCubit].
class SurchargesView extends StatefulWidget {
  const SurchargesView({
    required this.onOpenOrder,
    required this.onOpenParcel,
    required this.onOpenPayment,
    this.initialTab = SurchargesTab.due,
    this.payParcel,
    super.key,
  });

  final ValueChanged<String> onOpenOrder;
  final ValueChanged<String> onOpenParcel;

  /// Shows the card payment; completes when the customer leaves it.
  final Future<void> Function(WalletPayment payment) onOpenPayment;
  final SurchargesTab initialTab;

  /// Opened from a parcel's «Оплатить»: its bill's payment opens at once.
  final String? payParcel;

  @override
  State<SurchargesView> createState() => _SurchargesViewState();
}

class _SurchargesViewState extends State<SurchargesView> {
  late SurchargesTab _tab = widget.initialTab;
  late bool _shouldOpenParcel = widget.payParcel != null;

  String get _language => context.read<LocaleCubit>().state.languageCode;

  Future<void> _pay(SurchargeBill bill) async {
    final cubit = context.read<SurchargesCubit>();
    final auth = context.read<AuthCubit>();
    final l10n = context.l10n;
    final languageCode = _language;
    final method = await showPayMethodSheet(
      context,
      amount: bill.amount,
      balance: cubit.state.balance,
    );
    if (method == null || !mounted) return;
    final result = await cubit.pay(languageCode, bill, method);
    if (!mounted) return;
    await result.match(
      (failure) async => showAppToast(
        context,
        message: actionFailureText(l10n, failure),
        icon: AppIcons.warning,
      ),
      (start) async {
        switch (start) {
          case PaymentStartPaid():
            showAppToast(
              context,
              message: l10n.walletSurchargePaid,
              icon: AppIcons.checkCircle,
            );
          case PaymentStartCard(:final paymentId):
            await widget.onOpenPayment(
              WalletPayment.surcharge(
                paymentId: paymentId,
                amount: bill.amount,
                surchargeId: bill.id,
              ),
            );
            await cubit.load(languageCode);
        }
        // Debt and balance in the profile header.
        await auth.refresh(languageCode);
      },
    );
  }

  void _openParcelBill(SurchargesState state) {
    if (!_shouldOpenParcel || state.isLoading) return;
    _shouldOpenParcel = false;
    final bill = state.surcharges
        .where((s) => s.parcelNumber == widget.payParcel)
        .firstOrNull;
    if (bill != null) _pay(bill);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<SurchargesCubit>();
    return BlocConsumer<SurchargesCubit, SurchargesState>(
      listener: (_, state) => _openParcelBill(state),
      builder: (context, state) => Scaffold(
        backgroundColor: context.colors.surface,
        appBar: AppBar(
          backgroundColor: context.colors.surface,
          title: Text(l10n.profileSurcharges),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(
              AppSizes.touchTarget + AppSpacing.x12,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.screen,
                0,
                AppSpacing.screen,
                AppSpacing.x12,
              ),
              child: AppSegmentedControl<SurchargesTab>(
                segments: [
                  (SurchargesTab.due, l10n.walletTabDue),
                  (SurchargesTab.refunds, l10n.walletTabRefunds),
                ],
                selected: _tab,
                onChanged: (tab) => setState(() => _tab = tab),
              ),
            ),
          ),
        ),
        body: switch (state) {
          SurchargesState(isLoading: true, surcharges: [], refunds: []) =>
            const SkeletonList(itemCount: 3),
          SurchargesState(:final failure?) => Center(
            child: SingleChildScrollView(
              child: FailureView(
                failure: failure,
                onRetry: () => cubit.load(_language),
              ),
            ),
          ),
          _ => RefreshIndicator(
            onRefresh: () => cubit.load(_language),
            child: switch (_tab) {
              SurchargesTab.due => _DueList(
                state: state,
                onPay: _pay,
                onOpenOrder: widget.onOpenOrder,
                onOpenParcel: widget.onOpenParcel,
              ),
              SurchargesTab.refunds => _RefundList(
                refunds: state.refunds,
                onOpenOrder: widget.onOpenOrder,
              ),
            },
          ),
        },
      ),
    );
  }
}

class _DueList extends StatelessWidget {
  const _DueList({
    required this.state,
    required this.onPay,
    required this.onOpenOrder,
    required this.onOpenParcel,
  });

  final SurchargesState state;
  final ValueChanged<SurchargeBill> onPay;
  final ValueChanged<String> onOpenOrder;
  final ValueChanged<String> onOpenParcel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (state.surcharges.isEmpty) {
      return _EmptyList(
        icon: AppIcons.checkCircle,
        title: l10n.walletNoSurchargesTitle,
        text: l10n.walletNoSurchargesText,
      );
    }
    return ListView(
      padding: const EdgeInsets.only(bottom: AppSpacing.section),
      children: [
        for (final bill in state.surcharges)
          SurchargeBillCard(
            key: ValueKey(bill.id),
            bill: bill,
            isPaying: state.payingId == bill.id,
            onPay: state.payingId == null ? () => onPay(bill) : null,
            onOpenOrder: onOpenOrder,
            onOpenParcel: onOpenParcel,
          ),
      ],
    );
  }
}

/// Reason icon and title, order / parcel links, the calculation, the
/// amount in warning colour, the deadline and «Оплатить».
class SurchargeBillCard extends StatelessWidget {
  const SurchargeBillCard({
    required this.bill,
    required this.isPaying,
    required this.onPay,
    required this.onOpenOrder,
    required this.onOpenParcel,
    super.key,
  });

  final SurchargeBill bill;
  final bool isPaying;
  final VoidCallback? onPay;
  final ValueChanged<String> onOpenOrder;
  final ValueChanged<String> onOpenParcel;

  static const double _circle = 40;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final (order, parcel, deadline) = (
      bill.orderNumber,
      bill.parcelNumber,
      bill.deadline,
    );
    final icon = switch (bill.reason) {
      SurchargeReason.weight => AppIcons.scales,
      SurchargeReason.priceIncrease => AppIcons.priceAlert,
      SurchargeReason.other => AppIcons.coins,
    };
    return ContentCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: _circle,
                height: _circle,
                decoration: BoxDecoration(
                  color: StatusTone.warning.tint(c),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: AppSizes.iconDense, color: c.warning),
              ),
              const SizedBox(width: AppSpacing.x12),
              Expanded(child: Text(bill.title, style: context.text.h3)),
            ],
          ),
          if (order != null || parcel != null)
            Wrap(
              spacing: AppSpacing.x4,
              children: [
                if (order != null)
                  TertiaryButton(
                    label: l10n.orderNumber(order),
                    tone: TertiaryTone.neutral,
                    onPressed: () => onOpenOrder(order),
                  ),
                if (parcel != null)
                  TertiaryButton(
                    label: l10n.parcelNumber(parcel),
                    tone: TertiaryTone.neutral,
                    onPressed: () => onOpenParcel(parcel),
                  ),
              ],
            ),
          for (final line in bill.lines)
            InfoRow(label: line.label, value: line.value),
          const Divider(height: AppSpacing.x24),
          Row(
            children: [
              Expanded(
                child: Text(l10n.parcelSurchargeDue, style: context.text.h3),
              ),
              Text(
                MoneyFormat.tmt(l10n, bill.amount),
                style: context.text.price.copyWith(color: c.warning),
              ),
            ],
          ),
          if (deadline != null) ...[
            const SizedBox(height: AppSpacing.x8),
            Wrap(
              spacing: AppSpacing.x8,
              runSpacing: AppSpacing.x4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  l10n.walletPayUntil(AppDates.dayMonth(l10n, deadline)),
                  style: context.text.caption.copyWith(color: c.inkSecondary),
                ),
                CountdownTimer(endsAt: deadline, tone: StatusTone.warning),
              ],
            ),
          ],
          const SizedBox(height: AppSpacing.x16),
          PrimaryButton(
            label: l10n.checkoutPay(MoneyFormat.tmt(l10n, bill.amount)),
            isLoading: isPaying,
            onPressed: onPay,
          ),
        ],
      ),
    );
  }
}

class _RefundList extends StatelessWidget {
  const _RefundList({required this.refunds, required this.onOpenOrder});

  final List<Refund> refunds;
  final ValueChanged<String> onOpenOrder;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (refunds.isEmpty) {
      return _EmptyList(
        icon: AppIcons.refund,
        title: l10n.walletNoRefundsTitle,
        text: l10n.walletNoRefundsText,
      );
    }
    return ListView(
      padding: const EdgeInsets.only(bottom: AppSpacing.section),
      children: [
        for (final refund in refunds)
          RefundCard(
            key: ValueKey(refund.id),
            refund: refund,
            onTap: switch (refund.orderNumber) {
              final n? => () => onOpenOrder(n),
              null => null,
            },
          ),
      ],
    );
  }
}

/// Amount in success colour, where it goes, status chip, date.
class RefundCard extends StatelessWidget {
  const RefundCard({required this.refund, this.onTap, super.key});

  final Refund refund;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final destination = switch (refund.destination) {
      RefundDestination.balance => l10n.walletRefundToBalance,
      RefundDestination.card => l10n.walletRefundToCard,
      RefundDestination.cash => l10n.walletRefundInCash,
    };
    final (status, tone, icon) = switch (refund.status) {
      RefundStatus.created => (
        l10n.walletRefundCreated,
        StatusTone.info,
        AppIcons.receipt,
      ),
      RefundStatus.approved => (
        l10n.walletRefundApproved,
        StatusTone.brand,
        AppIcons.check,
      ),
      RefundStatus.paid => (
        l10n.walletRefundPaid,
        StatusTone.success,
        AppIcons.checkCircle,
      ),
    };
    return ContentCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(refund.title, style: context.text.bodyStrong),
              ),
              const SizedBox(width: AppSpacing.x8),
              Text(
                '+${MoneyFormat.tmt(l10n, refund.amount)}',
                style: context.text.price.copyWith(color: c.success),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.x4),
          Text(
            l10n.walletRefundLine(
              destination,
              AppDates.dayMonth(l10n, refund.at),
            ),
            style: context.text.caption.copyWith(color: c.inkSecondary),
          ),
          const SizedBox(height: AppSpacing.x8),
          StatusChip(label: status, tone: tone, icon: icon),
        ],
      ),
    );
  }
}

class _EmptyList extends StatelessWidget {
  const _EmptyList({
    required this.icon,
    required this.title,
    required this.text,
  });

  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    // Scrollable, so pull-to-refresh works on an empty list too.
    builder: (context, box) => SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: box.maxHeight),
        child: Center(
          child: EmptyState(icon: icon, title: title, message: text),
        ),
      ),
    ),
  );
}
