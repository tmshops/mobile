import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/utils/phone_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/account_settings.dart';
import '../bloc/delete_account_cubit.dart';

/// Account deletion (UI_DESIGN §7.24; required by both stores): what is
/// lost, debt and active orders, an SMS code, then the final red button.
/// Expects [DeleteAccountCubit].
class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({
    required this.onPayDebt,
    required this.onKeep,
    required this.onDeleted,
    super.key,
  });

  final VoidCallback onPayDebt;
  final VoidCallback onKeep;

  /// Leaves the account screens before the session ends.
  final VoidCallback onDeleted;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<DeleteAccountCubit>();
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
      listenWhen: (a, b) =>
          b.step == DeleteStep.deleted && a.step != DeleteStep.deleted,
      listener: (context, _) async {
        final auth = context.read<AuthCubit>();
        final messenger = ScaffoldMessenger.of(context);
        final text = l10n.settingsDeleted;
        onDeleted();
        await auth.signOut();
        messenger.showSnackBar(SnackBar(content: Text(text)));
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(title: Text(l10n.settingsDeleteAccount)),
        body: switch (state) {
          DeleteAccountState(step: DeleteStep.checking, :final failure?) =>
            Center(
              child: SingleChildScrollView(
                child: FailureView(
                  failure: failure,
                  onRetry: () => cubit.load(languageCode),
                ),
              ),
            ),
          DeleteAccountState(step: DeleteStep.checking) ||
          DeleteAccountState(
            step: DeleteStep.deleted,
          ) => const Center(child: CircularProgressIndicator()),
          DeleteAccountState(step: DeleteStep.warning, :final check?) =>
            _Warning(
              check: check,
              state: state,
              onPayDebt: onPayDebt,
              onKeep: onKeep,
            ),
          _ => _Code(state: state, onKeep: onKeep),
        },
      ),
    );
  }
}

class _Warning extends StatelessWidget {
  const _Warning({
    required this.check,
    required this.state,
    required this.onPayDebt,
    required this.onKeep,
  });

  final DeletionCheck check;
  final DeleteAccountState state;
  final VoidCallback onPayDebt;
  final VoidCallback onKeep;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final failure = state.failure;
    final reason = check.blockReason;
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screen),
      children: [
        const Center(
          child: SpotIllustration(icon: AppIcons.delete, isDanger: true),
        ),
        const SizedBox(height: AppSpacing.x16),
        Text(
          l10n.settingsDeleteTitle,
          textAlign: TextAlign.center,
          style: context.text.h1,
        ),
        const SizedBox(height: AppSpacing.x16),
        for (final text in [
          l10n.settingsDeleteLoseOrders,
          l10n.settingsDeleteLoseFavourites,
          l10n.settingsDeleteForever,
        ])
          _Consequence(text: text),
        if (check.activeOrders > 0)
          _Notice(
            text: l10n.settingsDeleteActiveOrders(check.activeOrders),
            color: c.warning,
          ),
        if (check.balance > 0)
          _Notice(
            text: l10n.settingsDeleteBalance(
              MoneyFormat.tmt(l10n, check.balance),
            ),
            color: c.warning,
          ),
        if (!check.canDelete) ...[
          _Notice(text: reason ?? l10n.settingsDeleteBlocked, color: c.danger),
          if (check.debt > 0)
            SecondaryButton(
              label: l10n.settingsDeletePayDebt(
                MoneyFormat.tmt(l10n, check.debt),
              ),
              onPressed: onPayDebt,
            ),
        ],
        if (failure != null)
          _Notice(text: actionFailureText(l10n, failure), color: c.danger),
        const SizedBox(height: AppSpacing.x24),
        PrimaryButton(
          label: l10n.actionNext,
          isDanger: true,
          isLoading: state.isBusy,
          onPressed: check.canDelete
              ? context.read<DeleteAccountCubit>().requestCode
              : null,
        ),
        const SizedBox(height: AppSpacing.x8),
        TertiaryButton(label: l10n.settingsDeleteKeep, onPressed: onKeep),
      ],
    );
  }
}

class _Code extends StatefulWidget {
  const _Code({required this.state, required this.onKeep});

  final DeleteAccountState state;
  final VoidCallback onKeep;

  @override
  State<_Code> createState() => _CodeState();
}

class _CodeState extends State<_Code> {
  String _code = '';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final state = widget.state;
    final length = state.request?.codeLength ?? 4;
    final failure = state.failure;
    final phone = switch (context.read<AuthCubit>().state) {
      AuthSignedIn(:final profile) => PhoneFormat.national(profile.phone),
      _ => '',
    };
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screen),
      children: [
        Text(l10n.settingsDeleteCodeTitle, style: context.text.h2),
        const SizedBox(height: AppSpacing.x8),
        Text(
          l10n.settingsDeleteCodeSent(phone),
          style: context.text.body.copyWith(color: context.colors.inkSecondary),
        ),
        const SizedBox(height: AppSpacing.x24),
        OtpField(
          length: length,
          hasError: failure != null,
          onChanged: (code) => setState(() => _code = code),
          onCompleted: (code) => setState(() => _code = code),
        ),
        if (failure != null) ...[
          const SizedBox(height: AppSpacing.x8),
          Text(
            actionFailureText(l10n, failure),
            style: context.text.caption.copyWith(color: context.colors.danger),
          ),
        ],
        const SizedBox(height: AppSpacing.x32),
        PrimaryButton(
          label: l10n.settingsDeleteFinal,
          isDanger: true,
          isLoading: state.isBusy,
          onPressed: _code.length == length
              ? () => context.read<DeleteAccountCubit>().delete(
                  context.read<LocaleCubit>().state.languageCode,
                  _code,
                )
              : null,
        ),
        const SizedBox(height: AppSpacing.x8),
        TertiaryButton(
          label: l10n.settingsDeleteKeep,
          onPressed: widget.onKeep,
        ),
      ],
    );
  }
}

class _Consequence extends StatelessWidget {
  const _Consequence({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          AppIcons.close,
          size: AppSizes.iconDense,
          color: context.colors.danger,
        ),
        const SizedBox(width: AppSpacing.x12),
        Expanded(child: Text(text, style: context.text.body)),
      ],
    ),
  );
}

class _Notice extends StatelessWidget {
  const _Notice({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: AppSpacing.x12),
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: color.withValues(alpha: AppOpacity.tint),
        borderRadius: AppRadii.cardBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.x12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(AppIcons.warning, size: AppSizes.iconDense, color: color),
            const SizedBox(width: AppSpacing.x12),
            Expanded(child: Text(text, style: context.text.body)),
          ],
        ),
      ),
    ),
  );
}
