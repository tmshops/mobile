import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/login_bloc.dart';
import 'login_view.dart';

/// Illustration, «Вход», phone, consent, «Получить код», «или», Google.
class LoginPhoneStep extends StatefulWidget {
  const LoginPhoneStep({
    required this.onReadPolicy,
    required this.onGoogle,
    super.key,
  });

  final VoidCallback onReadPolicy;
  final VoidCallback onGoogle;

  @override
  State<LoginPhoneStep> createState() => _LoginPhoneStepState();
}

class _LoginPhoneStepState extends State<LoginPhoneStep> {
  // Seeded from the bloc so «Изменить номер» shows the number typed before.
  late final _phone = TextEditingController(
    text: TmPhoneFormatter.format(context.read<LoginBloc>().state.phone),
  );

  @override
  void dispose() {
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<LoginBloc>();
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final phoneError = state.showErrors && !state.isPhoneValid
            ? l10n.loginPhoneError
            : state.failure == null
            ? null
            : loginFailureText(l10n, state.failure);
        return ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x8,
            AppSpacing.screen,
            AppSpacing.x24,
          ),
          children: [
            const Center(child: SpotIllustration(icon: AppIcons.phone)),
            const SizedBox(height: AppSpacing.x24),
            Text(l10n.loginTitle, style: context.text.h1),
            const SizedBox(height: AppSpacing.x8),
            Text(
              l10n.loginSubtitle,
              style: context.text.body.copyWith(
                color: context.colors.inkSecondary,
              ),
            ),
            const SizedBox(height: AppSpacing.x24),
            PhoneField(
              controller: _phone,
              autofocus: true,
              errorText: phoneError,
              onChanged: (digits) => bloc.add(LoginEvent.phoneChanged(digits)),
            ),
            const SizedBox(height: AppSpacing.x12),
            _ConsentRow(
              hasConsent: state.hasConsent,
              showError: state.showErrors && !state.hasConsent,
              onChanged: (value) =>
                  bloc.add(LoginEvent.consentChanged(hasConsent: value)),
              onReadPolicy: widget.onReadPolicy,
            ),
            const SizedBox(height: AppSpacing.x16),
            PrimaryButton(
              label: l10n.loginGetCode,
              isLoading: state.isBusy,
              onPressed: () => bloc.add(
                LoginEvent.codeRequested(languageCode: languageCode),
              ),
            ),
            const SizedBox(height: AppSpacing.x24),
            const _OrDivider(),
            const SizedBox(height: AppSpacing.x24),
            SecondaryButton(
              label: l10n.loginGoogle,
              icon: AppIcons.google,
              onPressed: widget.onGoogle,
            ),
          ],
        );
      },
    );
  }
}

class _ConsentRow extends StatelessWidget {
  const _ConsentRow({
    required this.hasConsent,
    required this.showError,
    required this.onChanged,
    required this.onReadPolicy,
  });

  final bool hasConsent;
  final bool showError;
  final ValueChanged<bool> onChanged;
  final VoidCallback onReadPolicy;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MergeSemantics(
          child: InkWell(
            borderRadius: AppRadii.inputBorder,
            onTap: () => onChanged(!hasConsent),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  value: hasConsent,
                  isError: showError,
                  onChanged: (value) => onChanged(value ?? false),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: AppSpacing.x12),
                    child: Text(l10n.loginConsent, style: context.text.caption),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (showError)
          Padding(
            padding: const EdgeInsetsDirectional.only(start: AppSpacing.x48),
            child: Text(
              l10n.loginConsentError,
              style: context.text.caption.copyWith(color: c.danger),
            ),
          ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: AppSpacing.x32),
          child: TertiaryButton(
            label: l10n.loginReadPolicy,
            onPressed: onReadPolicy,
          ),
        ),
      ],
    );
  }
}

class _OrDivider extends StatelessWidget {
  const _OrDivider();

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Row(
      children: [
        Expanded(child: Divider(color: c.divider)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x12),
          child: Text(
            context.l10n.loginOr,
            style: context.text.caption.copyWith(color: c.inkTertiary),
          ),
        ),
        Expanded(child: Divider(color: c.divider)),
      ],
    );
  }
}
