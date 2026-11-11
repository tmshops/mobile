import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/category.dart';

/// Right pane: the picked root, its direct leaf children as one grid, then
/// each second-level group with its own 3-column grid.
class SubcategoryPane extends StatelessWidget {
  const SubcategoryPane({
    required this.root,
    required this.controller,
    required this.onOpenCategory,
    super.key,
  });

  final Category root;
  final ScrollController controller;
  final ValueChanged<String> onOpenCategory;

  static const _columns = 3;

  @override
  Widget build(BuildContext context) {
    final leaves = root.children.where((c) => c.isLeaf).toList();
    final groups = root.children.where((c) => !c.isLeaf).toList();
    return CustomScrollView(
      key: PageStorageKey(root.slug),
      controller: controller,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.x16,
            AppSpacing.x4,
            AppSpacing.x12,
            AppSpacing.x32,
          ),
          sliver: SliverList.list(
            children: [
              _GroupHeader(
                title: root.name,
                style: context.text.h2,
                onAll: () => onOpenCategory(root.slug),
              ),
              if (leaves.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.x8),
                _Grid(categories: leaves, onOpen: onOpenCategory),
              ],
              for (final group in groups) ...[
                const SizedBox(height: AppSpacing.x20),
                _GroupHeader(
                  title: group.name,
                  style: context.text.h3,
                  onAll: () => onOpenCategory(group.slug),
                ),
                const SizedBox(height: AppSpacing.x8),
                _Grid(categories: group.children, onOpen: onOpenCategory),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _GroupHeader extends StatelessWidget {
  const _GroupHeader({
    required this.title,
    required this.style,
    required this.onAll,
  });

  final String title;
  final TextStyle style;
  final VoidCallback onAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(title, style: style)),
        Flexible(
          child: TertiaryButton(
            label: context.l10n.catalogAllProducts,
            onPressed: onAll,
          ),
        ),
      ],
    );
  }
}

class _Grid extends StatelessWidget {
  const _Grid({required this.categories, required this.onOpen});

  final List<Category> categories;
  final ValueChanged<String> onOpen;

  @override
  Widget build(BuildContext context) {
    return CategoryGrid(
      columns: SubcategoryPane._columns,
      itemCount: categories.length,
      cellBuilder: (i, width) => CategoryCell(
        width: width,
        label: categories[i].name,
        imageUrl: categories[i].iconUrl,
        onTap: () => onOpen(categories[i].slug),
      ),
    );
  }
}
