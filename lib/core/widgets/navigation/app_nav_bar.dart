import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

@immutable
class AppNavItem {
  const AppNavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    this.badgeCount = 0,
    this.hasDot = false,
  });

  /// Outline icon when inactive, filled when active (UI_DESIGN §4.4).
  final IconData icon;
  final IconData activeIcon;
  final String label;

  /// Counter bubble (cart). Hidden when 0.
  final int badgeCount;

  /// Small unread dot (profile). Ignored while [badgeCount] > 0.
  final bool hasDot;
}

/// Bottom navigation bar (UI_DESIGN §6).
///
/// White with a hairline top divider; [isDark] switches to translucent
/// graphite with white icons for the video feed. Labels wrap to two lines
/// instead of being cut, so long Turkmen words still fit.
class AppNavBar extends StatelessWidget {
  const AppNavBar({
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.isDark = false,
    super.key,
  });

  final List<AppNavItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isDark
            ? c.graphite.withValues(alpha: AppOpacity.navOverVideo)
            : c.background,
        border: isDark
            ? null
            : Border(
                top: BorderSide(color: c.divider, width: AppSizes.hairline),
              ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < items.length; i++)
              Expanded(
                child: _NavTab(
                  item: items[i],
                  isActive: i == currentIndex,
                  isDark: isDark,
                  onTap: () => onTap(i),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _NavTab extends StatelessWidget {
  const _NavTab({
    required this.item,
    required this.isActive,
    required this.isDark,
    required this.onTap,
  });

  final AppNavItem item;
  final bool isActive;
  final bool isDark;
  final VoidCallback onTap;

  static const double _minHeight = 56;

  String _semanticLabel(AppLocalizations l10n) {
    if (item.badgeCount > 0) {
      return l10n.navTabSemantics(
        item.label,
        l10n.navCartCount(item.badgeCount),
      );
    }
    if (item.hasDot) return l10n.navTabSemantics(item.label, l10n.navUnread);
    return item.label;
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final color = switch ((isDark, isActive)) {
      (false, true) => c.primary,
      (false, false) => c.inkSecondary,
      (true, true) => c.onGraphite,
      (true, false) => c.onGraphite.withValues(alpha: AppOpacity.overlayPanel),
    };
    // Active labels in the darker orange: `primary` text at 11 sp is too
    // faint on white. The icon keeps the brand orange.
    final labelColor = !isDark && isActive ? c.primaryPressed : color;

    return Semantics(
      button: true,
      selected: isActive,
      label: _semanticLabel(context.l10n),
      excludeSemantics: true,
      child: InkResponse(
        onTap: onTap,
        highlightShape: BoxShape.rectangle,
        containedInkWell: true,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: _minHeight),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.x2,
              vertical: AppSpacing.x8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _BadgedIcon(
                  icon: isActive ? item.activeIcon : item.icon,
                  color: color,
                  badgeCount: item.badgeCount,
                  hasDot: item.hasDot,
                ),
                const SizedBox(height: AppSpacing.x4),
                Text(
                  item.label,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.micro.copyWith(
                    color: labelColor,
                    fontWeight: isActive ? FontWeight.w700 : FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BadgedIcon extends StatelessWidget {
  const _BadgedIcon({
    required this.icon,
    required this.color,
    required this.badgeCount,
    required this.hasDot,
  });

  final IconData icon;
  final Color color;
  final int badgeCount;
  final bool hasDot;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(icon, size: AppSizes.icon, color: color),
        if (badgeCount > 0)
          PositionedDirectional(
            top: -AppSpacing.x4,
            start: AppSizes.icon - AppSpacing.x8,
            child: CountBadge(count: badgeCount),
          )
        else if (hasDot)
          PositionedDirectional(
            top: 0,
            end: 0,
            child: Container(
              width: AppSizes.badgeDot,
              height: AppSizes.badgeDot,
              decoration: BoxDecoration(
                color: context.colors.danger,
                shape: BoxShape.circle,
                border: Border.all(color: context.colors.background),
              ),
            ),
          ),
      ],
    );
  }
}

/// Red counter bubble that bumps when the count grows (UI_DESIGN §4.5).
/// Shows «99+» above 99.
class CountBadge extends StatefulWidget {
  const CountBadge({required this.count, super.key});

  final int count;

  static const maxShown = 99;

  @override
  State<CountBadge> createState() => _CountBadgeState();
}

class _CountBadgeState extends State<CountBadge>
    with SingleTickerProviderStateMixin {
  static const double _bumpScale = 1.35;
  static const double _minSize = 16;

  late final AnimationController _bump = AnimationController(
    vsync: this,
    duration: AppMotion.base,
  );
  late final Animation<double> _scale = TweenSequence<double>([
    TweenSequenceItem(tween: Tween(begin: 1, end: _bumpScale), weight: 1),
    TweenSequenceItem(tween: Tween(begin: _bumpScale, end: 1), weight: 1),
  ]).animate(CurvedAnimation(parent: _bump, curve: AppMotion.enter));

  @override
  void didUpdateWidget(CountBadge oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.count > oldWidget.count && !AppMotion.isReduced(context)) {
      _bump.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _bump.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final text = widget.count > CountBadge.maxShown
        ? '${CountBadge.maxShown}+'
        : '${widget.count}';
    return ScaleTransition(
      scale: _scale,
      child: Container(
        constraints: const BoxConstraints(
          minWidth: _minSize,
          minHeight: _minSize,
        ),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: c.danger,
          borderRadius: AppRadii.chipBorder,
          border: Border.all(color: c.background, width: AppSizes.inputBorder),
        ),
        child: Text(
          text,
          // Fixed size: the badge must not grow past the icon at 1.3×.
          textScaler: TextScaler.noScaling,
          style: context.text.micro.copyWith(
            color: c.onPrimary,
            fontWeight: FontWeight.w700,
            fontFeatures: AppTypography.tabularFigures,
          ),
        ),
      ),
    );
  }
}
