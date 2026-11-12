import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../bloc/delete_account_cubit.dart';
import '../bloc/settings_cubit.dart';
import '../widgets/delete_account_view.dart';
import '../widgets/settings_view.dart';

/// «Настройки» inside the Profile tab (UI_DESIGN §7.24).
class SettingsPage extends StatelessWidget {
  const SettingsPage({
    required this.onDeleteAccount,
    required this.onSignedOut,
    required this.onGoogle,
    super.key,
  });

  final VoidCallback onDeleteAccount;
  final VoidCallback onSignedOut;
  final VoidCallback onGoogle;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<SettingsCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: SettingsView(
      onDeleteAccount: onDeleteAccount,
      onSignedOut: onSignedOut,
      onGoogle: onGoogle,
    ),
  );
}

/// «Удаление аккаунта» under Settings.
class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({
    required this.onPayDebt,
    required this.onKeep,
    required this.onDeleted,
    super.key,
  });

  final VoidCallback onPayDebt;
  final VoidCallback onKeep;
  final VoidCallback onDeleted;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<DeleteAccountCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: DeleteAccountView(
      onPayDebt: onPayDebt,
      onKeep: onKeep,
      onDeleted: onDeleted,
    ),
  );
}
