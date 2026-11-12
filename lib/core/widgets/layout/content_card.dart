import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// White rounded group on the grey screen background.
class ContentCard extends StatelessWidget {
  const ContentCard({
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(AppSpacing.x16),
    this.color,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final Color? color;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(
      AppSpacing.screen,
      0,
      AppSpacing.screen,
      AppSpacing.x12,
    ),
    child: Material(
      color: color ?? context.colors.background,
      borderRadius: AppRadii.cardBorder,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(padding: padding, child: child),
      ),
    ),
  );
}

/// Card title in `h3`.
class CardTitle extends StatelessWidget {
  const CardTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: AppSpacing.x12),
    child: Text(text, style: context.text.h3),
  );
}

/// A label ↔ value row in a details card.
class InfoRow extends StatelessWidget {
  const InfoRow({
    required this.label,
    required this.value,
    this.onCopy,
    super.key,
  });

  final String label;
  final String value;

  /// Shows a copy button (track numbers, codes).
  final VoidCallback? onCopy;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: context.text.body.copyWith(color: c.inkSecondary),
            ),
          ),
          const SizedBox(width: AppSpacing.x8),
          Flexible(
            flex: 2,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: context.text.bodyStrong,
            ),
          ),
          if (onCopy != null)
            IconButton(
              tooltip: context.l10n.ordersCopy,
              icon: const Icon(AppIcons.copy, size: AppSizes.iconDense),
              onPressed: onCopy,
            ),
        ],
      ),
    );
  }
}
