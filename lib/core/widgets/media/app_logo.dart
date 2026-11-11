import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Placeholder brand mark: orange tile with a bag, plus the store name.
/// Replace the tile with the real logo asset when it is ready.
class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  static const double _markSize = 32;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final name = context.l10n.appName;
    return Semantics(
      label: name,
      header: true,
      excludeSemantics: true,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: _markSize,
            height: _markSize,
            decoration: BoxDecoration(
              color: c.primary,
              borderRadius: AppRadii.badgeBorder,
            ),
            child: Icon(
              AppIcons.statusBought,
              size: AppSizes.iconDense,
              color: c.onPrimary,
            ),
          ),
          const SizedBox(width: AppSpacing.x8),
          Text(name, style: context.text.h2),
        ],
      ),
    );
  }
}
