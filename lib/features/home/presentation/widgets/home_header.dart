import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Compact Home header: logo left, bell right. The language is changed in
/// Settings only.
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    required this.onNotifications,
    this.onOpenKit,
    this.hasUnread = false,
    super.key,
  });

  final VoidCallback onNotifications;

  /// Debug builds only.
  final VoidCallback? onOpenKit;

  /// Unread notifications: a dot on the bell.
  final bool hasUnread;

  static const double _dot = 8;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: AppSpacing.screen,
        end: AppSpacing.x4,
        top: AppSpacing.x8,
      ),
      child: Row(
        children: [
          // Shrinks (never grows) the logo when Turkmen + 1.3× text is tight.
          const Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: FittedBox(fit: BoxFit.scaleDown, child: AppLogo()),
            ),
          ),
          if (onOpenKit case final openKit?)
            IconButton(
              onPressed: openKit,
              tooltip: 'Kit',
              icon: Icon(AppIcons.sparkle, color: context.colors.inkSecondary),
            ),
          IconButton(
            onPressed: onNotifications,
            tooltip: hasUnread
                ? context.l10n.navTabSemantics(
                    context.l10n.homeNotifications,
                    context.l10n.navUnread,
                  )
                : context.l10n.homeNotifications,
            icon: Badge(
              isLabelVisible: hasUnread,
              smallSize: _dot,
              backgroundColor: context.colors.primary,
              child: Icon(AppIcons.bell, color: context.colors.ink),
            ),
          ),
        ],
      ),
    );
  }
}
