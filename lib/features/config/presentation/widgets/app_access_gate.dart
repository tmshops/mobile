import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/network/connectivity_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/external_links.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/app_config.dart';
import '../bloc/app_config_cubit.dart';

/// Router guard on the config (TZ §4): an unsupported version, maintenance
/// or a blocked account replace the whole app with a service screen that
/// cannot be closed. Expects [AppConfigCubit] above it.
class AppAccessGate extends StatelessWidget {
  const AppAccessGate({required this.child, super.key});

  /// The app itself (the router).
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppConfigCubit>();
    String language() => context.read<LocaleCubit>().state.languageCode;
    return MultiBlocListener(
      listeners: [
        // Server texts come in the interface language.
        BlocListener<LocaleCubit, Locale>(
          listener: (_, locale) => cubit.load(locale.languageCode),
        ),
        // A failed launch check is repeated once the network is back.
        BlocListener<ConnectivityCubit, bool>(
          listenWhen: (_, isOnline) => isOnline && cubit.state.hasFailed,
          listener: (_, _) => cubit.load(language()),
        ),
        // Blocking is per account: signing in or out asks again.
        BlocListener<AuthCubit, AuthState>(
          listenWhen: (a, b) =>
              a.runtimeType != b.runtimeType && b is! AuthUnknown,
          listener: (_, _) => cubit.load(language()),
        ),
      ],
      child: BlocBuilder<AppConfigCubit, AppConfigState>(
        buildWhen: (a, b) =>
            a.access != b.access ||
            a.isChecking != b.isChecking ||
            a.config != b.config,
        builder: (context, state) => switch ((state.access, state.config)) {
          (AppAccess.open, _) || (_, null) => child,
          (final access, final config?) => _ServiceScreen(
            access: access,
            config: config,
            isChecking: state.isChecking,
            onRetry: () => cubit.load(language()),
          ),
        },
      ),
    );
  }
}

class _ServiceScreen extends StatelessWidget {
  const _ServiceScreen({
    required this.access,
    required this.config,
    required this.isChecking,
    required this.onRetry,
  });

  final AppAccess access;
  final AppConfig config;
  final bool isChecking;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: switch (access) {
        AppAccess.updateRequired => ServiceView(
          icon: AppIcons.update,
          title: l10n.serviceUpdateTitle,
          message: l10n.serviceUpdateText,
          actionLabel: l10n.serviceUpdateAction,
          onAction: () => ExternalLinks.url(context, config.storeUrl),
        ),
        AppAccess.maintenance => ServiceView(
          icon: AppIcons.maintenance,
          title: l10n.serviceMaintenanceTitle,
          message: config.maintenanceMessage ?? l10n.serviceMaintenanceText,
          actionLabel: l10n.serviceMaintenanceAction,
          actionIcon: AppIcons.retry,
          isActionLoading: isChecking,
          onAction: onRetry,
        ),
        AppAccess.blocked => ServiceView(
          icon: AppIcons.blocked,
          isDanger: true,
          title: l10n.serviceBlockedTitle,
          message: l10n.serviceBlockedText,
          actionLabel: l10n.serviceBlockedAction,
          actionIcon: AppIcons.phone,
          onAction: () => ExternalLinks.call(context, config.support.phone),
        ),
        // Never built: the gate shows the app itself.
        AppAccess.open => const SizedBox.shrink(),
      },
    );
  }
}
