import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Heart toggle with its own 48-dp hit area, drawn on a small white disc so
/// it stays visible on any photo. Gives a light haptic on tap.
class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    required this.isFavourite,
    required this.onPressed,
    super.key,
  });

  final bool isFavourite;
  final VoidCallback? onPressed;

  static const double _discSize = 32;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Semantics(
      button: true,
      toggled: isFavourite,
      label: isFavourite ? l10n.favouriteRemove : l10n.favouriteAdd,
      excludeSemantics: true,
      child: InkResponse(
        onTap: onPressed == null
            ? null
            : () {
                HapticFeedback.lightImpact();
                onPressed?.call();
              },
        radius: AppSizes.touchTarget / 2,
        child: SizedBox.square(
          dimension: AppSizes.touchTarget,
          child: Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: c.background.withValues(alpha: AppOpacity.overlayPanel),
                shape: BoxShape.circle,
              ),
              child: SizedBox.square(
                dimension: _discSize,
                child: AnimatedSwitcher(
                  duration: AppMotion.of(context, AppMotion.fast),
                  switchInCurve: AppMotion.enter,
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
                  child: Icon(
                    isFavourite ? AppIcons.heartFilled : AppIcons.heart,
                    key: ValueKey(isFavourite),
                    size: AppSizes.iconDense,
                    color: isFavourite ? c.danger : c.ink,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
