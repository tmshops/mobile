import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/product_query.dart';
import 'sort_sheet.dart';

/// Sticky row under the app bar: Sort ▾ · Filters (count) · grid/list.
class ProductsToolbar extends StatelessWidget {
  const ProductsToolbar({
    required this.sort,
    required this.activeFilters,
    required this.isListView,
    required this.onSort,
    required this.onFilters,
    required this.onToggleView,
    super.key,
  });

  final ProductSort sort;
  final int activeFilters;
  final bool isListView;
  final VoidCallback onSort;
  final VoidCallback onFilters;
  final VoidCallback onToggleView;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.background,
        border: Border(bottom: BorderSide(color: c.divider)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x8),
        child: Row(
          children: [
            Flexible(
              child: _ToolbarAction(
                icon: AppIcons.sort,
                label: sortLabel(l10n, sort),
                trailing: Icon(
                  AppIcons.chevronDown,
                  size: AppSizes.iconSmall,
                  color: c.inkSecondary,
                ),
                onTap: onSort,
              ),
            ),
            Flexible(
              child: Semantics(
                label: activeFilters > 0
                    ? l10n.catalogFiltersActive(activeFilters)
                    : l10n.catalogFilters,
                button: true,
                excludeSemantics: true,
                child: _ToolbarAction(
                  icon: AppIcons.filter,
                  label: l10n.catalogFilters,
                  trailing: activeFilters > 0
                      ? CountBadge(count: activeFilters)
                      : null,
                  onTap: onFilters,
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onToggleView,
              tooltip: isListView ? l10n.catalogViewGrid : l10n.catalogViewList,
              icon: Icon(
                isListView ? AppIcons.viewGrid : AppIcons.viewList,
                color: c.ink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ToolbarAction extends StatelessWidget {
  const _ToolbarAction({
    required this.icon,
    required this.label,
    required this.onTap,
    this.trailing,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final extra = trailing;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.buttonBorder,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: AppSizes.touchTarget),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: AppSizes.iconDense, color: c.ink),
              const SizedBox(width: AppSpacing.x4),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.bodyStrong,
                ),
              ),
              if (extra != null) ...[
                const SizedBox(width: AppSpacing.x4),
                extra,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
