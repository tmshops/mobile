import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import 'shimmer.dart';

/// Placeholder shaped like a [ProductTile]: square image, two title lines,
/// a price.
class SkeletonTile extends StatelessWidget {
  const SkeletonTile({super.key});

  static const double _lineHeight = 14;
  static const double _priceHeight = 18;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: context.l10n.loading,
      child: const Shimmer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SkeletonBox(borderRadius: AppRadii.imageBorder),
            ),
            SizedBox(height: AppSpacing.x8),
            SkeletonBox(width: double.infinity, height: _lineHeight),
            SizedBox(height: AppSpacing.x4),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: SkeletonBox(height: _lineHeight),
            ),
            SizedBox(height: AppSpacing.x8),
            FractionallySizedBox(
              widthFactor: 0.4,
              child: SkeletonBox(height: _priceHeight),
            ),
          ],
        ),
      ),
    );
  }
}

/// Placeholder list of rows (thumbnail + two lines), e.g. for orders.
class SkeletonList extends StatelessWidget {
  const SkeletonList({this.itemCount = 4, super.key});

  final int itemCount;

  static const double _thumb = 72;
  static const double _lineHeight = 14;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: context.l10n.loading,
      child: Shimmer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < itemCount; i++)
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.screen,
                  vertical: AppSpacing.x8,
                ),
                child: Row(
                  children: [
                    SkeletonBox(
                      width: _thumb,
                      height: _thumb,
                      borderRadius: AppRadii.imageBorder,
                    ),
                    SizedBox(width: AppSpacing.x12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SkeletonBox(
                            width: double.infinity,
                            height: _lineHeight,
                          ),
                          SizedBox(height: AppSpacing.x8),
                          FractionallySizedBox(
                            widthFactor: 0.5,
                            child: SkeletonBox(height: _lineHeight),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
