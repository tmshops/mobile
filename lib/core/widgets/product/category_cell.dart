import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../media/app_network_image.dart';

/// Round category icon with a 2-line label below. Used in grids (Home
/// shortcuts, catalog subcategories); the caller sets [width].
class CategoryCell extends StatelessWidget {
  const CategoryCell({
    required this.label,
    required this.width,
    required this.onTap,
    this.imageUrl,
    this.icon,
    super.key,
  });

  final String label;
  final double width;
  final VoidCallback onTap;

  /// Category picture; [icon] is shown instead when there is none.
  final String? imageUrl;
  final IconData? icon;

  static const double circle = 56;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final url = imageUrl;
    return SizedBox(
      width: width,
      child: Semantics(
        button: true,
        label: label,
        excludeSemantics: true,
        child: InkWell(
          onTap: onTap,
          borderRadius: AppRadii.imageBorder,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
            child: Column(
              children: [
                ClipOval(
                  child: SizedBox.square(
                    dimension: circle,
                    child: url != null
                        ? AppNetworkImage(url: url)
                        : ColoredBox(
                            color: c.primarySoft,
                            child: Icon(
                              icon ?? AppIcons.navCatalog,
                              color: c.primary,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: AppSpacing.x4),
                Text(
                  label,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Wraps [CategoryCell]s into [columns] equal columns.
class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    required this.columns,
    required this.cellBuilder,
    required this.itemCount,
    super.key,
  });

  final int columns;
  final int itemCount;

  /// Builds cell [index] at the given width.
  final Widget Function(int index, double width) cellBuilder;

  static const double _gap = AppSpacing.x8;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = (constraints.maxWidth - _gap * (columns - 1)) / columns;
        return Wrap(
          spacing: _gap,
          runSpacing: AppSpacing.x12,
          children: [for (var i = 0; i < itemCount; i++) cellBuilder(i, width)],
        );
      },
    );
  }
}
