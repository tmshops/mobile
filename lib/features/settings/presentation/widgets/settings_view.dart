import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' show Either, Unit;

import '../../../../core/app/app_info.dart';
import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/account_settings.dart';
import '../bloc/settings_cubit.dart';
import 'channel_link_sheet.dart';
import 'settings_sections.dart';

/// «Настройки» (UI_DESIGN §7.24, TZ §5.19). Language and region are
/// device settings and always work; the code channel and notifications
/// come from the server. Expects [SettingsCubit].
class SettingsView extends StatelessWidget {
  const SettingsView({
    required this.onDeleteAccount,
    required this.onSignedOut,
    required this.onGoogle,
    super.key,
  });

  final VoidCallback onDeleteAccount;

  /// Leaves the screen before the session ends, so the login guard does
  /// not send the customer to login.
  final VoidCallback onSignedOut;

  /// Google sign-in waits for the OAuth client (TZ §13).
  final VoidCallback onGoogle;

  String _language(BuildContext context) =>
      context.read<LocaleCubit>().state.languageCode;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<SettingsCubit>();
    return BlocListener<LocaleCubit, Locale>(
      // Topic titles come in the interface language.
      listener: (context, locale) => cubit.load(locale.languageCode),
      child: Scaffold(
        backgroundColor: context.colors.surface,
        appBar: AppBar(
          backgroundColor: context.colors.surface,
          title: Text(l10n.profileSettings),
        ),
        body: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            final settings = state.settings;
            return ListView(
              padding: const EdgeInsets.only(
                top: AppSpacing.x8,
                bottom: AppSpacing.section,
              ),
              children: [
                const MenuGroup(children: [LanguageMenuRow(), RegionMenuRow()]),
                if (settings == null)
                  ServerGroupsState(
                    failure: state.isLoading ? null : state.failure,
                    onRetry: () => cubit.load(_language(context)),
                  )
                else ...[
                  GroupHeader(l10n.settingsCodeChannel),
                  CodeChannelGroup(
                    settings: settings,
                    onSelect: (channel) =>
                        _selectChannel(context, settings, channel),
                  ),
                  GroupHeader(l10n.profileNotifications),
                  TopicsGroup(
                    topics: settings.topics,
                    onChanged: (topic, isOn) => _report(
                      context,
                      cubit.setTopic(_language(context), topic.id, isOn: isOn),
                    ),
                  ),
                ],
                MenuGroup(
                  children: [
                    MenuRow(
                      icon: AppIcons.google,
                      title: l10n.settingsGoogle,
                      onTap: onGoogle,
                      // Flexible: at large text sizes the title keeps room.
                      trailing: Flexible(
                        child: Text(
                          l10n.settingsLink,
                          textAlign: TextAlign.end,
                          style: context.text.bodyStrong.copyWith(
                            color: context.colors.primaryPressed,
                          ),
                        ),
                      ),
                    ),
                    MenuRow(
                      icon: AppIcons.info,
                      title: l10n.settingsAbout,
                      onTap: null,
                      trailing: Flexible(
                        child: Text(
                          l10n.settingsVersion(AppInfo.version),
                          textAlign: TextAlign.end,
                          style: context.text.body.copyWith(
                            color: context.colors.inkSecondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                MenuGroup(
                  children: [
                    MenuRow(
                      icon: AppIcons.signOut,
                      title: l10n.profileSignOut,
                      isDanger: true,
                      onTap: () => _confirmSignOut(context),
                    ),
                  ],
                ),
                MenuGroup(
                  children: [
                    MenuRow(
                      icon: AppIcons.delete,
                      title: l10n.settingsDeleteAccount,
                      isDanger: true,
                      onTap: onDeleteAccount,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> _selectChannel(
    BuildContext context,
    AccountSettings settings,
    CodeChannel channel,
  ) async {
    final cubit = context.read<SettingsCubit>();
    final languageCode = _language(context);
    final l10n = context.l10n;
    if (settings.isLinked(channel)) {
      if (settings.codeChannel == channel) return;
      return _report(context, cubit.setCodeChannel(languageCode, channel));
    }
    final isLinked = await showChannelLinkSheet(context, channel);
    if (!isLinked || !context.mounted) return;
    await cubit.load(languageCode);
    if (!context.mounted) return;
    showAppToast(
      context,
      message: l10n.settingsChannelLinked(channelTitle(l10n, channel)),
      icon: AppIcons.checkCircle,
    );
  }

  /// A change that failed rolls back; say why.
  Future<void> _report(
    BuildContext context,
    Future<Either<Failure, Unit>> change,
  ) async {
    final l10n = context.l10n;
    final result = await change;
    if (!context.mounted) return;
    result.match(
      (failure) => showAppToast(
        context,
        message: actionFailureText(l10n, failure),
        icon: AppIcons.warning,
      ),
      (_) {},
    );
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final l10n = context.l10n;
    final auth = context.read<AuthCubit>();
    final isConfirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.profileSignOutTitle),
        content: Text(l10n.profileSignOutText),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.profileSignOutKeep),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.profileSignOut),
          ),
        ],
      ),
    );
    if (!(isConfirmed ?? false)) return;
    onSignedOut();
    await auth.signOut();
  }
}
