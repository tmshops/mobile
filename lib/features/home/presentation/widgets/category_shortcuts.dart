import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/home_section.dart';

/// 4-column grid of round category icons; the last cell is «Все категории».
class CategoryShortcuts extends StatelessWidget {
  const CategoryShortcuts({
    required this.title,
    required this.categories,
    required this.onCategory,
    required this.onAll,
    super.key,
  });

  final String title;
  final List<CategoryShortcut> categories;
  final ValueChanged<CategoryShortcut> onCategory;
  final VoidCallback onAll;

  static const _columns = 4;
  static const _rows = 2;

  @override
  Widget build(BuildContext context) {
    // Seven categories + «Все категории» fill two rows.
    final shown = categories.take(_columns * _rows - 1).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(title: title),
        const SizedBox(height: AppSpacing.x12),
        Padding(
          padding: AppSpacing.screenPadding,
          child: CategoryGrid(
            columns: _columns,
            itemCount: shown.length + 1,
            cellBuilder: (i, width) => i < shown.length
                ? CategoryCell(
                    width: width,
                    label: shown[i].name,
                    imageUrl: shown[i].iconUrl,
                    onTap: () => onCategory(shown[i]),
                  )
                : CategoryCell(
                    width: width,
                    label: context.l10n.homeAllCategories,
                    icon: AppIcons.navCatalog,
                    onTap: onAll,
                  ),
          ),
        ),
      ],
    );
  }
}
