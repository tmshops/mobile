import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_shadows.dart';
import 'app_typography.dart';

/// Short access to the design tokens registered in `AppTheme`.
extension ThemeTokensX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
  AppTypography get text => Theme.of(this).extension<AppTypography>()!;
  AppShadows get shadows => Theme.of(this).extension<AppShadows>()!;
}
