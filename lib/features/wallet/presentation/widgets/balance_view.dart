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
import '../bloc/balance_cubit.dart';
import '../bloc/wallet_payment_cubit.dart';
import 'wallet_sheets.dart';

/// «Баланс» (UI_DESIGN §7.20): hero card with debt and «Пополнить», then
/// the operations grouped by day, loaded page by page. Expects
/// [BalanceCubit].
class BalanceView extends StatelessWidget {
  const BalanceView({
    required this.onPayDebt,
    required this.onOpenOrder,
    required this.onOpenPayment,
    this.now,
    super.key,
  });

  final VoidCallback onPayDebt;
  final ValueChanged<String> onOpenOrder;

  /// Shows the card payment; completes when the customer leaves it.
  final Future<void> Function(WalletPayment payment) onOpenPayment;

  /// Clock for «Сегодня / Вчера»; tests pass a fixed one.
  final DateTime? now;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<BalanceCubit>();
    Future<void> reload() => cubit.load(_language(context));
    return Scaffold(
      backgroundColor: context.colors.surface,
      appBar: AppBar(
        backgroundColor: context.colors.surface,
        title: Text(l10n.profileBalance),
      ),
      body: BlocBuilder<BalanceCubit, BalanceState>(
        builder: (context, state) {
          final summary = state.summary;
          final failure = state.failure;
          if (summary == null) {
            if (failure != null) {
              return Center(
                child: SingleChildScrollView(
                  child: FailureView(failure: failure, onRetry: reload),
                ),
              );
            }
            return const SkeletonList(itemCount: 5);
          }
          return RefreshIndicator(
            onRefresh: reload,
            child: _Content(
              state: state,
              summary: summary,
              now: now ?? DateTime.now(),
              onTopUp: () => _topUp(context),
              onPayDebt: onPayDebt,
              onOpenOrder: onOpenOrder,
            ),
          );
        },
      ),
    );
  }

  Future<void> _topUp(BuildContext context) async {
    final cubit = context.read<BalanceCubit>();
    final auth = context.read<AuthCubit>();
    final l10n = context.l10n;
    final languageCode = _language(context);
    final amount = await showTopUpSheet(context);
    if (amount == null || !context.mounted) return;
    final result = await cubit.topUp(languageCode, amount);
    if (!context.mounted) return;
    await result.match(
      (failure) async => showAppToast(
        context,
        message: actionFailureText(l10n, failure),
        icon: AppIcons.warning,
      ),
      (paymentId) async {
        await onOpenPayment(
          WalletPayment.topUp(paymentId: paymentId, amount: amount),
        );
        // Whatever the result, the numbers may have changed.
        await Future.wait([
          cubit.load(languageCode),
          auth.refresh(languageCode),
        ]);
      },
    );
  }

  static String _language(BuildContext context) =>
      context.read<LocaleCubit>().state.languageCode;
}

class _Content extends StatelessWidget {
  const _Content({
    required this.state,
    required this.summary,
    required this.now,
    required this.onTopUp,
    required this.onPayDebt,
    required this.onOpenOrder,
  });

  final BalanceState state;
  final WalletSummary summary;
  final DateTime now;
  final VoidCallback onTopUp;
  final VoidCallback onPayDebt;
  final ValueChanged<String> onOpenOrder;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // Operations are newest first, so each day is one run.
    final rows = <Object>[];
    String? day;
    for (final op in state.operations) {
      final label = AppDates.dayLabel(l10n, op.at, now);
      if (label != day) rows.add(label);
      day = label;
      rows.add(op);
    }
    final cubit = context.read<BalanceCubit>();
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: BalanceHero(
            summary: summary,
            onTopUp: onTopUp,
            onPayDebt: onPayDebt,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.screen,
              AppSpacing.section,
              AppSpacing.screen,
              AppSpacing.x4,
            ),
            child: Semantics(
              header: true,
              child: Text(l10n.walletHistory, style: context.text.h2),
            ),
          ),
        ),
        if (rows.isEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: AppSpacing.screenPadding,
              child: Text(
                l10n.walletNoOperations,
                style: context.text.body.copyWith(
                  color: context.colors.inkSecondary,
                ),
              ),
            ),
          )
        else
          SliverList.builder(
            itemCount: rows.length,
            itemBuilder: (context, i) {
              // Near the end: fetch the next page. After a failure only
              // «Повторить» does, or this would retry in a loop.
              if (i >= rows.length - 3 &&
                  state.hasMore &&
                  state.moreFailure == null) {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) => cubit.loadMore(languageCode),
                );
              }
              return switch (rows[i]) {
                final String label => _DayHeader(label: label),
                final WalletOperation op => OperationRow(
                  operation: op,
                  onTap: switch (op.orderNumber) {
                    final n? => () => onOpenOrder(n),
                    null => null,
                  },
                ),
                _ => const SizedBox.shrink(),
              };
            },
          ),
        SliverToBoxAdapter(
          child: _ListFooter(
            state: state,
            onRetry: () => cubit.loadMore(languageCode),
          ),
        ),
      ],
    );
  }
}

/// Solid orange card (UI_DESIGN §7.20: no gradient): balance in display,
/// debt row with «Погасить», «Пополнить» in white.
class BalanceHero extends StatelessWidget {
  const BalanceHero({
    required this.summary,
    required this.onTopUp,
    required this.onPayDebt,
    super.key,
  });

  final WalletSummary summary;
  final VoidCallback onTopUp;
  final VoidCallback onPayDebt;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final onCard = c.onPrimary;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        AppSpacing.x8,
        AppSpacing.screen,
        0,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: c.primary,
          borderRadius: AppRadii.cardBorder,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.x20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.profileBalance,
                style: context.text.caption.copyWith(color: onCard),
              ),
              const SizedBox(height: AppSpacing.x4),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  MoneyFormat.tmt(l10n, summary.balance),
                  style: context.text.display.copyWith(
                    color: onCard,
                    fontFeatures: AppTypography.tabularFigures,
                  ),
                ),
              ),
              Text(
                l10n.walletHeroCaption,
                style: context.text.caption.copyWith(color: onCard),
              ),
              if (summary.debt > 0) ...[
                const SizedBox(height: AppSpacing.x16),
                _DebtRow(debt: summary.debt, onPay: onPayDebt),
              ],
              const SizedBox(height: AppSpacing.x20),
              _OnCardButton(
                label: l10n.walletTopUp,
                icon: AppIcons.plus,
                onPressed: onTopUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DebtRow extends StatelessWidget {
  const _DebtRow({required this.debt, required this.onPay});

  final int debt;
  final VoidCallback onPay;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.background,
        borderRadius: AppRadii.buttonBorder,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
          AppSpacing.x12,
          AppSpacing.x4,
          AppSpacing.x4,
          AppSpacing.x4,
        ),
        child: Row(
          children: [
            Icon(AppIcons.warning, size: AppSizes.iconDense, color: c.warning),
            const SizedBox(width: AppSpacing.x8),
            Expanded(
              child: Text(
                l10n.walletDebt(MoneyFormat.tmt(l10n, debt)),
                style: context.text.bodyStrong.copyWith(color: c.warning),
              ),
            ),
            TertiaryButton(label: l10n.walletPayDebt, onPressed: onPay),
          ],
        ),
      ),
    );
  }
}

/// White button on the orange card.
class _OnCardButton extends StatelessWidget {
  const _OnCardButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: c.background,
          foregroundColor: c.primaryPressed,
          minimumSize: const Size.fromHeight(AppSizes.buttonMedium),
          shape: const RoundedRectangleBorder(
            borderRadius: AppRadii.buttonBorder,
          ),
          textStyle: context.text.bodyStrong,
        ),
        icon: Icon(icon, size: AppSizes.iconDense),
        label: Text(label),
      ),
    );
  }
}

class _DayHeader extends StatelessWidget {
  const _DayHeader({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(
      AppSpacing.screen,
      AppSpacing.x16,
      AppSpacing.screen,
      AppSpacing.x4,
    ),
    child: Text(
      label,
      style: context.text.caption.copyWith(color: context.colors.inkSecondary),
    ),
  );
}

/// Type icon in a tinted circle, title, time, signed amount: + green,
/// − ink. Taps open the related order.
class OperationRow extends StatelessWidget {
  const OperationRow({required this.operation, this.onTap, super.key});

  final WalletOperation operation;
  final VoidCallback? onTap;

  static const double _circle = 40;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final (icon, tone) = switch (operation.type) {
      OperationType.topUp => (AppIcons.plus, StatusTone.success),
      OperationType.refund => (AppIcons.refund, StatusTone.success),
      OperationType.payment => (AppIcons.receipt, StatusTone.brand),
      OperationType.surcharge => (AppIcons.scales, StatusTone.warning),
      OperationType.correction => (AppIcons.coins, StatusTone.neutral),
    };
    final isIn = operation.amount > 0;
    final amount = MoneyFormat.tmt(l10n, operation.amount.abs());
    return MergeSemantics(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screen,
            vertical: AppSpacing.x8,
          ),
          child: Row(
            children: [
              Container(
                width: _circle,
                height: _circle,
                decoration: BoxDecoration(
                  color: tone.tint(c),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: AppSizes.iconDense,
                  color: tone.color(c),
                ),
              ),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(operation.title, style: context.text.body),
                    Text(
                      AppDates.time(operation.at),
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.x8),
              Text(
                isIn ? '+$amount' : '−$amount',
                style: context.text.bodyStrong.copyWith(
                  color: isIn ? c.success : c.ink,
                  fontFeatures: AppTypography.tabularFigures,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListFooter extends StatelessWidget {
  const _ListFooter({required this.state, required this.onRetry});

  final BalanceState state;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (state.isLoadingMore) {
      return const Padding(
        padding: EdgeInsets.all(AppSpacing.x16),
        child: Center(
          child: SizedBox.square(
            dimension: AppSizes.spinner,
            child: CircularProgressIndicator(
              strokeWidth: AppSizes.selectedBorder,
            ),
          ),
        ),
      );
    }
    if (state.moreFailure != null) {
      return Padding(
        padding: AppSpacing.screenPadding,
        child: Row(
          children: [
            Expanded(
              child: Text(
                l10n.walletLoadMoreFailed,
                style: context.text.caption.copyWith(
                  color: context.colors.inkSecondary,
                ),
              ),
            ),
            TertiaryButton(label: l10n.actionRetry, onPressed: onRetry),
          ],
        ),
      );
    }
    return const SizedBox(height: AppSpacing.section);
  }
}
