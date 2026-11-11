import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/category.dart';

/// Narrow left rail of root categories. Selected = white cell with an
/// orange bar and a bold name (UI_DESIGN §7.4).
class CategoryRail extends StatelessWidget {
  const CategoryRail({
    required this.roots,
    required this.selected,
    required this.onSelect,
    super.key,
  });

  final List<Category> roots;
  final Category selected;
  final ValueChanged<Category> onSelect;

  static const double width = 92;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ColoredBox(
        color: context.colors.surface,
        child: ListView.builder(
          padding: const EdgeInsets.only(bottom: AppSpacing.x24),
          itemCount: roots.length,
          itemBuilder: (context, i) => _RailItem(
            category: roots[i],
            isSelected: roots[i].slug == selected.slug,
            onTap: () => onSelect(roots[i]),
          ),
        ),
      ),
    );
  }
}

class _RailItem extends StatelessWidget {
  const _RailItem({
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  final Category category;
  final bool isSelected;
  final VoidCallback onTap;

  static const double _icon = 40;
  static const double _bar = 3;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final url = category.iconUrl;
    return Semantics(
      button: true,
      selected: isSelected,
      label: category.name,
      excludeSemantics: true,
      child: Material(
        color: isSelected ? c.background : Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.x8,
                  vertical: AppSpacing.x12,
                ),
                child: Column(
                  children: [
                    ClipOval(
                      child: SizedBox.square(
                        dimension: _icon,
                        child: url == null
                            ? Icon(AppIcons.navCatalog, color: c.primary)
                            : AppNetworkImage(url: url),
                      ),
                    ),
                    const SizedBox(height: AppSpacing.x4),
                    Text(
                      category.name,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.caption.copyWith(
                        color: isSelected ? c.ink : c.inkSecondary,
                        fontWeight: isSelected
                            ? FontWeight.w700
                            : FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Positioned(
                  left: 0,
                  top: AppSpacing.x8,
                  bottom: AppSpacing.x8,
                  child: Container(
                    width: _bar,
                    decoration: BoxDecoration(
                      color: c.primary,
                      borderRadius: AppRadii.chipBorder,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
