import 'package:flutter/material.dart';

import '../../core/l10n/l10n.dart';
import '../../core/theme/theme.dart';
import '../../core/widgets/widgets.dart';

/// «Не найдено» (UI_DESIGN §7.25) for a link the app does not know: an old
/// website address or a mistyped deep link.
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({required this.onHome, super.key});

  final VoidCallback onHome;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(),
      body: ServiceView(
        icon: AppIcons.search,
        title: l10n.serviceNotFoundTitle,
        message: l10n.serviceNotFoundText,
        actionLabel: l10n.serviceHomeAction,
        onAction: onHome,
      ),
    );
  }
}
