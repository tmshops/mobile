import 'package:flutter/material.dart';

import '../../../../core/theme/theme.dart';

/// Titled block on the Kit screen. Kit headings are dev-only labels, so
/// they are plain English rather than l10n keys.
class KitSection extends StatelessWidget {
  const KitSection({
    required this.title,
    required this.children,
    this.isPadded = true,
    super.key,
  });

  final String title;
  final List<Widget> children;

  /// `false` lets children (carousels, banners) run edge to edge.
  final bool isPadded;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.section),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: AppSpacing.screenPadding,
            child: Text(
              title.toUpperCase(),
              style: context.text.micro.copyWith(color: c.inkTertiary),
            ),
          ),
          const SizedBox(height: AppSpacing.x12),
          for (final child in children)
            Padding(
              padding: EdgeInsets.only(
                left: isPadded ? AppSpacing.screen : 0,
                right: isPadded ? AppSpacing.screen : 0,
                bottom: AppSpacing.x12,
              ),
              child: child,
            ),
        ],
      ),
    );
  }
}

/// Small caption above a demo variant.
class KitLabel extends StatelessWidget {
  const KitLabel(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: context.text.caption.copyWith(color: context.colors.inkSecondary),
  );
}
