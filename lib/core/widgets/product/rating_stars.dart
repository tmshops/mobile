import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Five stars, filled up to [rating] rounded to the nearest whole star.
/// Read by screen readers as «Рейтинг 4,7 из 5».
class RatingStars extends StatelessWidget {
  const RatingStars({
    required this.rating,
    this.size = AppSizes.iconSmall,
    super.key,
  });

  final double rating;
  final double size;

  static const _stars = 5;

  /// «4,7»: one decimal with a comma, as both languages write it.
  static String format(double rating) =>
      rating.toStringAsFixed(1).replaceAll('.', ',');

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final filled = rating.round();
    return Semantics(
      label: context.l10n.ratingSpoken(format(rating)),
      excludeSemantics: true,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < _stars; i++)
            Icon(
              i < filled ? AppIcons.star : AppIcons.starOutline,
              size: size,
              color: i < filled ? c.accent : c.inkTertiary,
            ),
        ],
      ),
    );
  }
}
