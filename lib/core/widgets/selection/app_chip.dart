import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Filter / choice chip. Selected = `primarySoft` fill + orange border.
/// Unavailable options are greyed and struck through but stay focusable so
/// screen readers can announce them.
class AppChip extends StatelessWidget {
  const AppChip({
    required this.label,
    required this.onTap,
    this.isSelected = false,
    this.isAvailable = true,
    this.icon,
    super.key,
  });

  final String label;
  final VoidCallback? onTap;
  final bool isSelected;
  final bool isAvailable;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final foreground = isAvailable ? c.ink : c.inkTertiary;
    final leadingIcon = icon;
    return Semantics(
      button: true,
      selected: isSelected,
      enabled: isAvailable,
      label: isAvailable ? label : context.l10n.skuUnavailable(label),
      excludeSemantics: true,
      child: _ChipFrame(
        isSelected: isSelected,
        onTap: isAvailable ? onTap : null,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leadingIcon != null) ...[
              Icon(leadingIcon, size: AppSizes.iconSmall, color: foreground),
              const SizedBox(width: AppSpacing.x4),
            ],
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    (isSelected ? context.text.bodyStrong : context.text.body)
                        .copyWith(
                          color: foreground,
                          decoration: isAvailable
                              ? null
                              : TextDecoration.lineThrough,
                          decorationColor: c.inkTertiary,
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Active filter shown above a product list, with × to remove it.
class RemovableChip extends StatelessWidget {
  const RemovableChip({required this.label, required this.onRemove, super.key});

  final String label;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return _ChipFrame(
      isSelected: true,
      onTap: onRemove,
      trailingPadding: AppSpacing.x8,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.text.body.copyWith(color: c.ink),
            ),
          ),
          const SizedBox(width: AppSpacing.x4),
          Semantics(
            button: true,
            label: context.l10n.actionRemove,
            child: Icon(
              AppIcons.close,
              size: AppSizes.iconSmall,
              color: c.inkSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _ChipFrame extends StatelessWidget {
  const _ChipFrame({
    required this.isSelected,
    required this.onTap,
    required this.child,
    this.trailingPadding = AppSpacing.x16,
  });

  final bool isSelected;
  final VoidCallback? onTap;
  final Widget child;
  final double trailingPadding;

  static const double _visualHeight = 36;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    // 36-dp pill inside a 48-dp hit area.
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: AppSizes.touchTarget),
      child: Center(
        widthFactor: 1,
        child: Material(
          color: isSelected ? c.primarySoft : c.surface,
          shape: StadiumBorder(
            side: BorderSide(
              color: isSelected ? c.primary : Colors.transparent,
              width: AppSizes.hairline,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: _visualHeight),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: AppSpacing.x16,
                  end: trailingPadding,
                  top: AppSpacing.x4,
                  bottom: AppSpacing.x4,
                ),
                child: Center(widthFactor: 1, heightFactor: 1, child: child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
