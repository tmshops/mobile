import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Semantic colour of a status. Always shown together with an icon and a
/// label, never by colour alone.
enum StatusTone {
  brand,
  success,
  warning,
  danger,
  info,
  neutral;

  Color color(AppColors c) => switch (this) {
    StatusTone.brand => c.primary,
    StatusTone.success => c.success,
    StatusTone.warning => c.warning,
    StatusTone.danger => c.danger,
    StatusTone.info => c.info,
    StatusTone.neutral => c.inkSecondary,
  };

  Color tint(AppColors c) => color(c).withValues(alpha: AppOpacity.tint);
}
