import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/account_settings.dart';
import '../bloc/channel_link_cubit.dart';
import 'settings_sections.dart';

/// Links [channel] as a code channel. Returns `true` once linked (it is
/// then the channel codes go to).
Future<bool> showChannelLinkSheet(
  BuildContext context,
  CodeChannel channel,
) async {
  final isLinked = await showAppBottomSheet<bool>(
    context: context,
    builder: (_) => BlocProvider(
      create: (_) {
        final cubit = getIt<ChannelLinkCubit>();
        if (channel == CodeChannel.telegram) cubit.startTelegram();
        return cubit;
      },
      child: ChannelLinkSheet(channel: channel),
    ),
  );
  return isLinked ?? false;
}

/// Body of [showChannelLinkSheet]. Expects [ChannelLinkCubit].
class ChannelLinkSheet extends StatelessWidget {
  const ChannelLinkSheet({required this.channel, super.key});

  final CodeChannel channel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<ChannelLinkCubit, ChannelLinkState>(
      listenWhen: (a, b) => b.step == LinkStep.done && a.step != LinkStep.done,
      listener: (context, _) => Navigator.of(context).pop(true),
      builder: (context, state) => AppBottomSheet(
        title: l10n.settingsLinkTitle(channelTitle(l10n, channel)),
        child: switch (state.step) {
          LinkStep.email => _EmailStep(state: state),
          LinkStep.emailCode => _CodeStep(state: state),
          LinkStep.telegram => _TelegramStep(state: state),
          LinkStep.done => const SizedBox.shrink(),
        },
      ),
    );
  }
}

String? _failureText(AppLocalizations l10n, Failure? failure) =>
    failure == null ? null : actionFailureText(l10n, failure);

class _EmailStep extends StatefulWidget {
  const _EmailStep({required this.state});

  final ChannelLinkState state;

  @override
  State<_EmailStep> createState() => _EmailStepState();
}

class _EmailStepState extends State<_EmailStep> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _send() => context.read<ChannelLinkCubit>().sendEmail(
    context.read<LocaleCubit>().state.languageCode,
    _controller.text,
  );

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isFilled = _controller.text.trim().isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppTextField(
          controller: _controller,
          label: l10n.settingsEmailLabel,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          textInputAction: TextInputAction.send,
          autofocus: true,
          errorText: _failureText(l10n, widget.state.failure),
          onChanged: (_) => setState(() {}),
          onSubmitted: (_) => isFilled ? _send() : null,
        ),
        const SizedBox(height: AppSpacing.x16),
        PrimaryButton(
          label: l10n.settingsGetCode,
          isLoading: widget.state.isBusy,
          onPressed: isFilled ? _send : null,
        ),
        const SizedBox(height: AppSpacing.x8),
      ],
    );
  }
}

class _CodeStep extends StatelessWidget {
  const _CodeStep({required this.state});

  final ChannelLinkState state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final error = _failureText(l10n, state.failure);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(l10n.settingsEmailCodeSent, style: context.text.body),
        const SizedBox(height: AppSpacing.x16),
        OtpField(
          length: state.request?.codeLength ?? 4,
          hasError: error != null,
          onCompleted: (code) => context.read<ChannelLinkCubit>().confirmEmail(
            context.read<LocaleCubit>().state.languageCode,
            code,
          ),
        ),
        if (error != null) ...[
          const SizedBox(height: AppSpacing.x8),
          Text(
            error,
            style: context.text.caption.copyWith(color: context.colors.danger),
          ),
        ],
        const SizedBox(height: AppSpacing.x16),
      ],
    );
  }
}

class _TelegramStep extends StatelessWidget {
  const _TelegramStep({required this.state});

  final ChannelLinkState state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final link = state.telegram;
    final error = _failureText(l10n, state.failure);
    if (link == null) {
      if (error == null) {
        return const Padding(
          padding: EdgeInsets.all(AppSpacing.x24),
          child: Center(child: CircularProgressIndicator()),
        );
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(error, style: context.text.body),
          const SizedBox(height: AppSpacing.x16),
          SecondaryButton(
            label: l10n.actionRetry,
            onPressed: context.read<ChannelLinkCubit>().startTelegram,
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(l10n.settingsTelegramSteps(link.bot), style: context.text.body),
        const SizedBox(height: AppSpacing.x16),
        Material(
          color: c.surface,
          borderRadius: AppRadii.cardBorder,
          child: InkWell(
            borderRadius: AppRadii.cardBorder,
            onTap: () => _copy(context, link.code),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.x16),
              child: Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      link.code,
                      style: context.text.h2.copyWith(
                        fontFeatures: AppTypography.tabularFigures,
                      ),
                    ),
                  ),
                  Icon(AppIcons.copy, color: c.inkSecondary),
                ],
              ),
            ),
          ),
        ),
        if (state.isNotYet || error != null) ...[
          const SizedBox(height: AppSpacing.x8),
          Text(
            error ?? l10n.settingsTelegramNotYet,
            style: context.text.caption.copyWith(color: c.warning),
          ),
        ],
        const SizedBox(height: AppSpacing.x16),
        PrimaryButton(
          label: l10n.settingsTelegramCheck,
          isLoading: state.isBusy,
          onPressed: context.read<ChannelLinkCubit>().checkTelegram,
        ),
        const SizedBox(height: AppSpacing.x8),
      ],
    );
  }

  Future<void> _copy(BuildContext context, String code) async {
    final l10n = context.l10n;
    await Clipboard.setData(ClipboardData(text: code));
    if (!context.mounted) return;
    showAppToast(
      context,
      message: l10n.settingsCodeCopied,
      icon: AppIcons.copy,
    );
  }
}
