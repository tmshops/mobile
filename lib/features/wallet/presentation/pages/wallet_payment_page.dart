import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/wallet_payment_cubit.dart';

/// Card payment of a top-up or surcharge: «Проверяем оплату…» → done or
/// failed with «Повторить» (same flow as the order payment, UI_DESIGN
/// §7.10). The bank page goes first once the acquirer is known (TZ §13).
class WalletPaymentPage extends StatefulWidget {
  const WalletPaymentPage({
    required this.payment,
    required this.onDone,
    super.key,
  });

  final WalletPayment payment;
  final VoidCallback onDone;

  @override
  State<WalletPaymentPage> createState() => _WalletPaymentPageState();
}

class _WalletPaymentPageState extends State<WalletPaymentPage> {
  // «Повторить» starts a new payment; later retries use that one.
  late WalletPayment _payment = widget.payment;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocProvider(
      create: (_) =>
          getIt<WalletPaymentCubit>()..check(languageCode, widget.payment),
      child: BlocConsumer<WalletPaymentCubit, WalletPaymentState>(
        listenWhen: (a, b) => b is WalletPaymentPaid && a is! WalletPaymentPaid,
        listener: (_, _) => HapticFeedback.lightImpact(),
        builder: (context, state) => PopScope(
          // Leaving while checking would lose the result.
          canPop: state is! WalletPaymentChecking,
          child: Scaffold(
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.x24),
                  child: switch (state) {
                    WalletPaymentChecking() => const _Checking(),
                    WalletPaymentPaid() => _Paid(
                      payment: _payment,
                      onDone: widget.onDone,
                    ),
                    WalletPaymentFailed(:final reason, :final failure) =>
                      _Failed(
                        reason: reason,
                        isTimeout: reason == null && failure == null,
                        onRetry: () async {
                          final next = await context
                              .read<WalletPaymentCubit>()
                              .retry(languageCode, _payment);
                          if (next != null && mounted) {
                            setState(() => _payment = next);
                          }
                        },
                        onDone: widget.onDone,
                      ),
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Checking extends StatelessWidget {
  const _Checking();

  static const double _spinner = 48;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Semantics(
      liveRegion: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox.square(
            dimension: _spinner,
            child: CircularProgressIndicator(
              strokeWidth: AppSizes.selectedBorder,
            ),
          ),
          const SizedBox(height: AppSpacing.x24),
          Text(
            l10n.paymentChecking,
            style: context.text.h2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.x8),
          Text(
            l10n.paymentCheckingText,
            textAlign: TextAlign.center,
            style: context.text.body.copyWith(
              color: context.colors.inkSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _Paid extends StatelessWidget {
  const _Paid({required this.payment, required this.onDone});

  final WalletPayment payment;
  final VoidCallback onDone;

  static const double _circle = 96;
  static const double _icon = 48;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final amount = MoneyFormat.tmt(l10n, payment.amount);
    return Semantics(
      liveRegion: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween(begin: AppMotion.isReduced(context) ? 1 : 0, end: 1),
            duration: AppMotion.slow * 2,
            curve: Curves.elasticOut,
            builder: (context, scale, child) =>
                Transform.scale(scale: scale, child: child),
            child: Container(
              width: _circle,
              height: _circle,
              decoration: BoxDecoration(
                color: c.success.withValues(alpha: AppOpacity.tint),
                shape: BoxShape.circle,
              ),
              child: Icon(AppIcons.checkCircle, size: _icon, color: c.success),
            ),
          ),
          const SizedBox(height: AppSpacing.x24),
          Text(
            switch (payment) {
              WalletTopUp() => l10n.walletTopUpDone,
              WalletSurchargePayment() => l10n.walletSurchargePaid,
            },
            style: context.text.h1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.x16),
          Text(
            amount,
            style: context.text.display.copyWith(
              fontFeatures: AppTypography.tabularFigures,
            ),
          ),
          Text(
            l10n.paymentPaid(amount),
            style: context.text.caption.copyWith(color: c.inkSecondary),
          ),
          const SizedBox(height: AppSpacing.x32),
          PrimaryButton(label: l10n.walletDone, onPressed: onDone),
        ],
      ),
    );
  }
}

class _Failed extends StatelessWidget {
  const _Failed({
    required this.reason,
    required this.isTimeout,
    required this.onRetry,
    required this.onDone,
  });

  final String? reason;
  final bool isTimeout;
  final VoidCallback onRetry;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Semantics(
      liveRegion: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SpotIllustration(icon: AppIcons.statusPaid, isDanger: true),
          const SizedBox(height: AppSpacing.x24),
          Text(
            l10n.paymentFailedTitle,
            style: context.text.h1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.x8),
          Text(
            isTimeout
                ? l10n.walletPaymentTimeout
                : reason ?? l10n.errorGenericMessage,
            textAlign: TextAlign.center,
            style: context.text.body,
          ),
          if (!isTimeout) ...[
            const SizedBox(height: AppSpacing.x8),
            Text(
              l10n.walletPaymentFailedText,
              textAlign: TextAlign.center,
              style: context.text.caption.copyWith(color: c.inkSecondary),
            ),
          ],
          const SizedBox(height: AppSpacing.x32),
          PrimaryButton(label: l10n.paymentRetry, onPressed: onRetry),
          const SizedBox(height: AppSpacing.x8),
          TertiaryButton(label: l10n.walletDone, onPressed: onDone),
        ],
      ),
    );
  }
}
