import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';

/// First-load placeholder shaped like Home: story circles, a banner and a
/// carousel. Header and search stay real above it. Rows sit in
/// non-scrolling scroll views so they can run past the edge without an
/// overflow error.
class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key});

  static const double _story = 72;
  static const double _line = 12;
  static const double _titleLine = 20;
  static const double _titleWidth = 140;
  static const _stories = 5;
  static const _tiles = 3;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: context.l10n.loading,
      child: Shimmer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.screen,
            AppSpacing.x8,
            0,
            AppSpacing.section,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                child: Row(
                  children: [
                    for (var i = 0; i < _stories; i++)
                      const Padding(
                        padding: EdgeInsets.only(right: AppSpacing.x12),
                        child: SkeletonBox(
                          width: _story,
                          height: _story,
                          borderRadius: AppRadii.chipBorder,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.section),
              const Padding(
                padding: EdgeInsets.only(right: AppSpacing.screen),
                child: AspectRatio(
                  aspectRatio: 2,
                  child: SkeletonBox(borderRadius: AppRadii.cardBorder),
                ),
              ),
              const SizedBox(height: AppSpacing.section),
              const SkeletonBox(width: _titleWidth, height: _titleLine),
              const SizedBox(height: AppSpacing.x12),
              LayoutBuilder(
                builder: (context, constraints) {
                  final tile =
                      (constraints.maxWidth - AppSpacing.x12 * 2) / 2.4;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var i = 0; i < _tiles; i++)
                          Padding(
                            padding: const EdgeInsets.only(
                              right: AppSpacing.x12,
                            ),
                            child: SizedBox(
                              width: tile,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SkeletonBox(
                                    width: tile,
                                    height: tile,
                                    borderRadius: AppRadii.imageBorder,
                                  ),
                                  const SizedBox(height: AppSpacing.x8),
                                  SkeletonBox(width: tile, height: _line),
                                  const SizedBox(height: AppSpacing.x8),
                                  SkeletonBox(width: tile / 2, height: _line),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
