import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'section_header.dart';

/// Section header plus a horizontal row of compact tiles, sized so the next
/// tile peeks in from the right as a hint to scroll.
class ProductCarousel extends StatelessWidget {
  const ProductCarousel({
    required this.title,
    required this.itemCount,
    required this.itemBuilder,
    this.headerTrailing,
    this.onSeeAll,
    super.key,
  });

  final String title;
  final Widget? headerTrailing;
  final VoidCallback? onSeeAll;
  final int itemCount;

  /// Builds one tile; the carousel sets its width.
  final Widget Function(BuildContext context, int index) itemBuilder;

  /// About 2.4 tiles fit on screen, so the third one peeks.
  static const double _visibleTiles = 2.4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionHeader(
          title: title,
          trailing: headerTrailing,
          onSeeAll: onSeeAll,
        ),
        const SizedBox(height: AppSpacing.x8),
        LayoutBuilder(
          builder: (context, constraints) {
            final gaps = AppSpacing.x12 * (_visibleTiles.floor());
            final tileWidth =
                (constraints.maxWidth - AppSpacing.screen - gaps) /
                _visibleTiles;
            // A Row in a scroll view sizes to the tallest tile, so the
            // carousel grows with text scale instead of clipping.
            return RepaintBoundary(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: AppSpacing.screenPadding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i < itemCount; i++) ...[
                      if (i > 0) const SizedBox(width: AppSpacing.x12),
                      SizedBox(
                        width: tileWidth,
                        child: itemBuilder(context, i),
                      ),
                    ],
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
