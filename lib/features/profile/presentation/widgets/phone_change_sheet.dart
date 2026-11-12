import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/phone_change_cubit.dart';

/// New number → SMS code to it. Returns `true` once the number changed.
Future<bool> showPhoneChangeSheet(BuildContext context) async {
  final isChanged = await showAppBottomSheet<bool>(
    context: context,
    builder: (_) => BlocProvider(
      create: (_) => getIt<PhoneChangeCubit>(),
      child: const PhoneChangeSheet(),
    ),
  );
  return isChanged ?? false;
}

/// Body of [showPhoneChangeSheet]. Expects [PhoneChangeCubit].
class PhoneChangeSheet extends StatefulWidget {
  const PhoneChangeSheet({super.key});

  @override
  State<PhoneChangeSheet> createState() => _PhoneChangeSheetState();
}

class _PhoneChangeSheetState extends State<PhoneChangeSheet> {
  String _phone = '';

  String get _language => context.read<LocaleCubit>().state.languageCode;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<PhoneChangeCubit>();
    return BlocConsumer<PhoneChangeCubit, PhoneChangeState>(
      listenWhen: (a, b) =>
          b.step == PhoneChangeStep.done && a.step != PhoneChangeStep.done,
      listener: (context, _) => Navigator.of(context).pop(true),
      builder: (context, state) {
        final failure = state.failure;
        final error = failure == null ? null : actionFailureText(l10n, failure);
        return AppBottomSheet(
          title: l10n.profileEditPhoneTitle,
          child: switch (state.step) {
            PhoneChangeStep.phone => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(l10n.profileEditPhoneText, style: context.text.body),
                const SizedBox(height: AppSpacing.x16),
                PhoneField(
                  autofocus: true,
                  errorText: error,
                  onChanged: (digits) => setState(() => _phone = digits),
                ),
                const SizedBox(height: AppSpacing.x16),
                PrimaryButton(
                  label: l10n.settingsGetCode,
                  isLoading: state.isBusy,
                  onPressed: _phone.length == PhoneChangeCubit.phoneLength
                      ? () => cubit.send(_language, _phone)
                      : null,
                ),
                const SizedBox(height: AppSpacing.x8),
              ],
            ),
            PhoneChangeStep.code || PhoneChangeStep.done => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  l10n.profileEditCodeSent(state.request?.destination ?? ''),
                  style: context.text.body,
                ),
                const SizedBox(height: AppSpacing.x16),
                OtpField(
                  length: state.request?.codeLength ?? 4,
                  hasError: error != null,
                  onCompleted: (code) => cubit.confirm(_language, code),
                ),
                if (error != null) ...[
                  const SizedBox(height: AppSpacing.x8),
                  Text(
                    error,
                    style: context.text.caption.copyWith(
                      color: context.colors.danger,
                    ),
                  ),
                ],
                const SizedBox(height: AppSpacing.x8),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: TertiaryButton(
                    label: l10n.profileEditOtherNumber,
                    onPressed: state.isBusy ? null : cubit.back,
                  ),
                ),
              ],
            ),
          },
        );
      },
    );
  }
}
