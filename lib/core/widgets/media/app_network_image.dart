import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import '../states/shimmer.dart';

/// Network image with a shimmer placeholder, a 200 ms fade-in and a quiet
/// error fallback.
///
/// Decodes at the size it is laid out at (times pixel ratio) so a grid of
/// tiles does not keep full-size photos in memory.
class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({
    required this.url,
    this.fit = BoxFit.cover,
    this.semanticLabel,
    super.key,
  });

  final String url;
  final BoxFit fit;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final pixelRatio = MediaQuery.devicePixelRatioOf(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final cacheWidth = width.isFinite ? (width * pixelRatio).round() : null;
        return Semantics(
          image: true,
          label: semanticLabel,
          excludeSemantics: true,
          child: ColoredBox(
            color: c.surface,
            child: CachedNetworkImage(
              imageUrl: url,
              fit: fit,
              width: double.infinity,
              height: double.infinity,
              memCacheWidth: cacheWidth,
              fadeInDuration: AppMotion.of(context, AppMotion.imageFade),
              fadeOutDuration: Duration.zero,
              placeholder: (_, _) => const Shimmer(
                child: SkeletonBox(
                  width: double.infinity,
                  height: double.infinity,
                  borderRadius: BorderRadius.zero,
                ),
              ),
              errorWidget: (_, _, _) => Center(
                child: Icon(
                  AppIcons.image,
                  color: c.inkTertiary,
                  size: AppSizes.icon,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
