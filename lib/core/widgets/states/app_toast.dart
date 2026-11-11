import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Shows a graphite toast at the bottom, with an optional action such as
/// «Отменить» or «Перейти». Replaces any toast that is already visible.
void showAppToast(
  BuildContext context, {
  required String message,
  IconData? icon,
  String? actionLabel,
  VoidCallback? onAction,
}) {
  final c = context.colors;
  final label = actionLabel;
  final action = onAction;
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: AppSizes.iconDense, color: c.onGraphite),
              const SizedBox(width: AppSpacing.x12),
            ],
            Expanded(child: Text(message)),
          ],
        ),
        action: label == null || action == null
            ? null
            : SnackBarAction(label: label, onPressed: action),
        margin: const EdgeInsets.fromLTRB(
          AppSpacing.screen,
          0,
          AppSpacing.screen,
          AppSpacing.x16,
        ),
      ),
    );
}
