import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../buttons/primary_button.dart';
import '../buttons/tertiary_button.dart';
import 'state_views.dart';

/// Full-screen service state (UI_DESIGN §7.25): centred illustration, h1,
/// one sentence and one action. «Обновите приложение», «Техработы»,
/// «Не найдено», «Аккаунт заблокирован» are all built from this.
class ServiceView extends StatelessWidget {
  const ServiceView({
    required this.icon,
    required this.title,
    required this.message,
    required this.actionLabel,
    required this.onAction,
    this.actionIcon,
    this.isActionLoading = false,
    this.isDanger = false,
    this.secondaryLabel,
    this.onSecondary,
    super.key,
  });

  final IconData icon;
  final String title;
  final String message;
  final String actionLabel;
  final VoidCallback? onAction;
  final IconData? actionIcon;
  final bool isActionLoading;

  /// Soft red illustration for failures and blocks.
  final bool isDanger;

  /// A quiet text action under the main one (e.g. «Открыть мои заказы»).
  final String? secondaryLabel;
  final VoidCallback? onSecondary;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final secondary = secondaryLabel;
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x32,
            vertical: AppSpacing.x24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SpotIllustration(icon: icon, isDanger: isDanger),
              const SizedBox(height: AppSpacing.x24),
              Semantics(
                header: true,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: context.text.h1,
                ),
              ),
              const SizedBox(height: AppSpacing.x8),
              Text(
                message,
                textAlign: TextAlign.center,
                style: context.text.body.copyWith(color: c.inkSecondary),
              ),
              const SizedBox(height: AppSpacing.x32),
              PrimaryButton(
                label: actionLabel,
                icon: actionIcon,
                isLoading: isActionLoading,
                onPressed: onAction,
              ),
              if (secondary != null) ...[
                const SizedBox(height: AppSpacing.x8),
                TertiaryButton(label: secondary, onPressed: onSecondary),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
