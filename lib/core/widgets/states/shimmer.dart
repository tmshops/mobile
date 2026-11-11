import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Shared shimmer: sweeps a light band across its [child].
///
/// The child should be built from [SkeletonBox]es. When the OS asks for
/// reduced motion the boxes stay static.
class Shimmer extends StatefulWidget {
  const Shimmer({required this.child, super.key});

  final Widget child;

  @override
  State<Shimmer> createState() => _ShimmerState();
}

class _ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: AppMotion.shimmer,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AppMotion.isReduced(context)) {
      _controller.stop();
    } else if (!_controller.isAnimating) {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _controller,
        child: widget.child,
        builder: (context, child) {
          return ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (bounds) => LinearGradient(
              colors: [c.surface, c.background, c.surface],
              stops: const [0.35, 0.5, 0.65],
              transform: _SlideGradient(_controller.value),
            ).createShader(bounds),
            child: child,
          );
        },
      ),
    );
  }
}

class _SlideGradient extends GradientTransform {
  const _SlideGradient(this.progress);

  final double progress;

  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    // Travel from fully left of the box to fully right of it.
    final dx = bounds.width * (progress * 2 - 1);
    return Matrix4.translationValues(dx, 0, 0);
  }
}

/// Grey placeholder block used inside a [Shimmer].
class SkeletonBox extends StatelessWidget {
  const SkeletonBox({
    this.width,
    this.height,
    this.borderRadius = AppRadii.badgeBorder,
    super.key,
  });

  final double? width;
  final double? height;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: borderRadius,
      ),
    );
  }
}
