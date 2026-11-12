import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/checkout.dart';
import '../bloc/payment_cubit.dart';

/// After the order is created: card → «Проверяем оплату…» → success or
/// failure; cash → success with «оплатите в офисе» (UI_DESIGN §7.10).
///
/// The bank page (WebView) goes before the check once the acquirer is
/// known (TZ §13); everything after it is already here.
class PaymentPage extends StatelessWidget {
  const PaymentPage({
    required this.order,
    required this.onHome,
    required this.onOrder,
    super.key,
  });

  final PlacedOrder order;
  final VoidCallback onHome;
  final VoidCallback onOrder;

  @override
  Widget build(BuildContext context) {
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    final paymentId = order.paymentId;
    if (order.payment == PaymentMethod.cash) {
      return _ResultScaffold(
        child: _Success(order: order, onHome: onHome, onOrder: onOrder),
      );
    }
    return BlocProvider(
      create: (_) {
        final cubit = getIt<PaymentCubit>();
        // Paying later from the order: no payment yet, so start one.
        if (paymentId == null) {
          cubit.retry(languageCode: languageCode, orderNumber: order.number);
        } else {
          cubit.check(languageCode: languageCode, paymentId: paymentId);
        }
        return cubit;
      },
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listenWhen: (a, b) => b is PaymentPaid && a is! PaymentPaid,
        listener: (_, _) => HapticFeedback.lightImpact(),
        builder: (context, state) => _ResultScaffold(
          // Leaving while checking would lose the result screen.
          canLeave: state is! PaymentChecking,
          child: switch (state) {
            PaymentChecking() => const _Checking(),
            PaymentPaid() => _Success(
              order: order,
              onHome: onHome,
              onOrder: onOrder,
            ),
            PaymentFailed(:final reason, :final failure) => _Failed(
              reason: reason,
              isTimeout: reason == null && failure == null,
              onRetry: () => context.read<PaymentCubit>().retry(
                languageCode: languageCode,
                orderNumber: order.number,
              ),
              onHome: onHome,
            ),
          },
        ),
      ),
    );
  }
}

class _ResultScaffold extends StatelessWidget {
  const _ResultScaffold({required this.child, this.canLeave = true});

  final Widget child;
  final bool canLeave;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canLeave,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.x24),
              child: child,
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

class _Success extends StatelessWidget {
  const _Success({
    required this.order,
    required this.onHome,
    required this.onOrder,
  });

  final PlacedOrder order;
  final VoidCallback onHome;
  final VoidCallback onOrder;

  static const double _circle = 96;
  static const double _icon = 48;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final isCash = order.payment == PaymentMethod.cash;
    final amount = MoneyFormat.tmt(l10n, order.payNow);
    return Semantics(
      liveRegion: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // The check pops in; with reduced motion it is simply there.
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
            l10n.paymentSuccessTitle,
            style: context.text.h1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.x4),
          Text(
            l10n.paymentOrderNumber(order.number),
            style: context.text.body.copyWith(color: c.inkSecondary),
          ),
          const SizedBox(height: AppSpacing.x16),
          Text(
            amount,
            style: context.text.display.copyWith(
              fontFeatures: AppTypography.tabularFigures,
            ),
          ),
          Text(
            isCash ? l10n.paymentDue(amount) : l10n.paymentPaid(amount),
            style: context.text.caption.copyWith(color: c.inkSecondary),
          ),
          const SizedBox(height: AppSpacing.x16),
          Text(
            isCash ? l10n.paymentCashNext : l10n.paymentNextStep,
            textAlign: TextAlign.center,
            style: context.text.body,
          ),
          const SizedBox(height: AppSpacing.x32),
          PrimaryButton(label: l10n.paymentToOrder, onPressed: onOrder),
          const SizedBox(height: AppSpacing.x8),
          TertiaryButton(label: l10n.paymentToHome, onPressed: onHome),
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
    required this.onHome,
  });

  final String? reason;
  final bool isTimeout;
  final VoidCallback onRetry;
  final VoidCallback onHome;

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
                ? l10n.paymentTimeout
                : reason ?? l10n.errorGenericMessage,
            textAlign: TextAlign.center,
            style: context.text.body,
          ),
          const SizedBox(height: AppSpacing.x8),
          Text(
            l10n.paymentFailedText,
            textAlign: TextAlign.center,
            style: context.text.caption.copyWith(color: c.inkSecondary),
          ),
          const SizedBox(height: AppSpacing.x32),
          PrimaryButton(label: l10n.paymentRetry, onPressed: onRetry),
          const SizedBox(height: AppSpacing.x8),
          TertiaryButton(label: l10n.paymentToHome, onPressed: onHome),
        ],
      ),
    );
  }
}
