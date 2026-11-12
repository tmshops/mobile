import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/code_request.dart';
import '../bloc/login_bloc.dart';
import 'login_view.dart';

/// Code boxes, «куда отправлен код», the resend timer, «Изменить номер».
class LoginCodeStep extends StatelessWidget {
  const LoginCodeStep({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final bloc = context.read<LoginBloc>();
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final request = state.request;
        if (request == null) return const SizedBox.shrink();
        final failure = state.failure;
        return ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x8,
            AppSpacing.screen,
            AppSpacing.x24,
          ),
          children: [
            Text(l10n.loginCodeTitle, style: context.text.h1),
            const SizedBox(height: AppSpacing.x8),
            Text(
              l10n.loginCodeSent(
                _channel(request.channel),
                request.destination,
              ),
              style: context.text.body.copyWith(color: c.inkSecondary),
            ),
            const SizedBox(height: AppSpacing.x24),
            OtpField(
              // A new code (resend) starts with empty boxes.
              key: ValueKey(request.id),
              length: request.codeLength,
              hasError: failure != null,
              onChanged: (_) => bloc.add(const LoginEvent.codeEdited()),
              onCompleted: (code) => bloc.add(
                LoginEvent.codeSubmitted(
                  languageCode: languageCode,
                  code: code,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.x12),
            SizedBox(
              height: AppSizes.touchTarget,
              child: Center(
                child: state.isBusy
                    ? const SizedBox.square(
                        dimension: AppSizes.spinner,
                        child: CircularProgressIndicator(
                          strokeWidth: AppSizes.selectedBorder,
                        ),
                      )
                    : failure == null
                    ? null
                    : Semantics(
                        liveRegion: true,
                        child: Text(
                          loginFailureText(l10n, failure),
                          textAlign: TextAlign.center,
                          style: context.text.caption.copyWith(color: c.danger),
                        ),
                      ),
              ),
            ),
            _ResendRow(
              resendAt: request.resendAt,
              isExpired: state.isCodeExpired,
              onResend: () => bloc.add(
                LoginEvent.resendRequested(languageCode: languageCode),
              ),
            ),
            const SizedBox(height: AppSpacing.x8),
            Center(
              child: TertiaryButton(
                label: l10n.loginChangePhone,
                tone: TertiaryTone.neutral,
                onPressed: () =>
                    bloc.add(const LoginEvent.phoneEditRequested()),
              ),
            ),
          ],
        );
      },
    );
  }

  static String _channel(CodeChannel channel) => switch (channel) {
    CodeChannel.sms => 'sms',
    CodeChannel.telegram => 'telegram',
    CodeChannel.email => 'email',
  };
}

/// «Отправить снова через 0:42», then the «Отправить код снова» button.
/// An expired code may be replaced at once.
class _ResendRow extends StatefulWidget {
  const _ResendRow({
    required this.resendAt,
    required this.isExpired,
    required this.onResend,
  });

  final DateTime resendAt;
  final bool isExpired;
  final VoidCallback onResend;

  @override
  State<_ResendRow> createState() => _ResendRowState();
}

class _ResendRowState extends State<_ResendRow> {
  static const _tick = Duration(seconds: 1);
  static const _secondsPerMinute = 60;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _start();
  }

  void _start() {
    _timer?.cancel();
    _timer = Timer.periodic(_tick, (_) {
      if (!_isWaiting) _timer?.cancel();
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(_ResendRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.resendAt != widget.resendAt) _start();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Duration get _left => widget.resendAt.difference(DateTime.now());

  bool get _isWaiting => !widget.isExpired && _left > Duration.zero;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (!_isWaiting) {
      return Center(
        child: TertiaryButton(
          label: l10n.loginResend,
          onPressed: widget.onResend,
        ),
      );
    }
    final seconds = _left.inSeconds + 1;
    final time =
        '${seconds ~/ _secondsPerMinute}:'
        '${(seconds % _secondsPerMinute).toString().padLeft(2, '0')}';
    return SizedBox(
      height: AppSizes.touchTarget,
      child: Center(
        child: Text(
          l10n.loginResendIn(time),
          style: context.text.caption.copyWith(
            color: context.colors.inkSecondary,
            fontFeatures: AppTypography.tabularFigures,
          ),
        ),
      ),
    );
  }
}
