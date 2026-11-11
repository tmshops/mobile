import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import 'category_rail.dart';

/// First-load placeholder shaped like the two panes.
class CatalogSkeleton extends StatelessWidget {
  const CatalogSkeleton({super.key});

  static const _railItems = 7;
  static const _cells = 9;
  static const double _railIcon = 40;
  static const double _line = 12;
  static const double _title = 20;
  static const double _titleWidth = 120;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: context.l10n.loading,
      child: Shimmer(
        // Non-scrolling scroll view: the placeholder may be taller than a
        // short screen without an overflow error.
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: CategoryRail.width,
                child: Column(
                  children: [
                    for (var i = 0; i < _railItems; i++)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: AppSpacing.x12),
                        child: Column(
                          children: [
                            SkeletonBox(
                              width: _railIcon,
                              height: _railIcon,
                              borderRadius: AppRadii.chipBorder,
                            ),
                            SizedBox(height: AppSpacing.x8),
                            SkeletonBox(width: _railIcon * 1.5, height: _line),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.x16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SkeletonBox(width: _titleWidth, height: _title),
                      const SizedBox(height: AppSpacing.x16),
                      CategoryGrid(
                        columns: 3,
                        itemCount: _cells,
                        cellBuilder: (_, width) => SizedBox(
                          width: width,
                          child: const Column(
                            children: [
                              SkeletonBox(
                                width: CategoryCell.circle,
                                height: CategoryCell.circle,
                                borderRadius: AppRadii.chipBorder,
                              ),
                              SizedBox(height: AppSpacing.x8),
                              SkeletonBox(
                                width: CategoryCell.circle,
                                height: _line,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
