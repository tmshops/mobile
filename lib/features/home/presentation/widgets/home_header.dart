import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// Compact Home header: logo left; RU/TK toggle and bell right.
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    required this.locale,
    required this.onLanguageToggle,
    required this.onNotifications,
    this.onOpenKit,
    this.hasUnread = false,
    super.key,
  });

  final Locale locale;
  final VoidCallback onLanguageToggle;
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
          _LanguageToggle(locale: locale, onTap: onLanguageToggle),
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

/// Two-segment pill; the current language sits on a white segment.
class _LanguageToggle extends StatelessWidget {
  const _LanguageToggle({required this.locale, required this.onTap});

  final Locale locale;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      button: true,
      label: locale.languageCode.toUpperCase(),
      hint: context.l10n.homeLanguageSwitch,
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.chipBorder,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: AppSizes.touchTarget),
          child: Center(
            widthFactor: 1,
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.x2),
              decoration: BoxDecoration(
                color: c.surface,
                borderRadius: AppRadii.chipBorder,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final option in AppLocales.supported)
                    _Segment(
                      label: option.languageCode.toUpperCase(),
                      isSelected: option == locale,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({required this.label, required this.isSelected});

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return AnimatedContainer(
      duration: AppMotion.of(context, AppMotion.fast),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.x8,
        vertical: AppSpacing.x2,
      ),
      decoration: BoxDecoration(
        color: isSelected ? c.background : Colors.transparent,
        borderRadius: AppRadii.chipBorder,
      ),
      child: Text(
        label,
        style: context.text.caption.copyWith(
          color: isSelected ? c.ink : c.inkSecondary,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
