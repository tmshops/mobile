import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/login_bloc.dart';
import 'login_code_step.dart';
import 'login_phone_step.dart';

/// «Вход» (UI_DESIGN §7.13): the phone step, then the code step, with a
/// cross-fade between them. Expects [LoginBloc] above it.
class LoginView extends StatelessWidget {
  const LoginView({
    required this.onReadPolicy,
    required this.onGoogle,
    super.key,
  });

  final VoidCallback onReadPolicy;
  final VoidCallback onGoogle;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (a, b) => a.step != b.step || a.isBlocked != b.isBlocked,
      builder: (context, state) {
        final isCode = state.step == LoginStep.code;
        return PopScope(
          // Back on the code step returns to the phone, not out of login.
          canPop: !isCode,
          onPopInvokedWithResult: (didPop, _) {
            if (!didPop) bloc.add(const LoginEvent.phoneEditRequested());
          },
          child: Scaffold(
            appBar: AppBar(leading: isCode ? const BackButton() : null),
            body: SafeArea(
              child: AnimatedSwitcher(
                duration: AppMotion.of(context, AppMotion.base),
                switchInCurve: AppMotion.enter,
                switchOutCurve: AppMotion.exit,
                child: switch (state) {
                  LoginState(isBlocked: true) => const _BlockedView(),
                  LoginState(step: LoginStep.code) => const LoginCodeStep(),
                  _ => LoginPhoneStep(
                    onReadPolicy: onReadPolicy,
                    onGoogle: onGoogle,
                  ),
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _BlockedView extends StatelessWidget {
  const _BlockedView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final failure = context.read<LoginBloc>().state.failure;
    return EmptyState(
      icon: AppIcons.lock,
      title: l10n.loginBlockedTitle,
      message: loginFailureText(l10n, failure),
      actionLabel: l10n.loginChangePhone,
      onAction: () =>
          context.read<LoginBloc>().add(const LoginEvent.phoneEditRequested()),
    );
  }
}

/// Server text when there is one (already in the customer's language),
/// otherwise a general message. Never raw exception text.
String loginFailureText(AppLocalizations l10n, Failure? failure) =>
    switch (failure) {
      ServerFailure(:final message?) => message,
      NetworkFailure() => l10n.offlineBanner,
      _ => l10n.errorGenericMessage,
    };
