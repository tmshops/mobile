import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// Section title with an optional extra (e.g. a countdown) and «Все →».
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.title,
    this.trailing,
    this.onSeeAll,
    super.key,
  });

  final String title;
  final Widget? trailing;

  /// `null` hides «Все →».
  final VoidCallback? onSeeAll;

  @override
  Widget build(BuildContext context) {
    final extra = trailing;
    final seeAll = onSeeAll;
    return Padding(
      padding: AppSpacing.screenPadding,
      child: Row(
        children: [
          // Wrap, not Row: a long Turkmen title pushes the countdown onto
          // its own line instead of overflowing.
          Expanded(
            child: Wrap(
              spacing: AppSpacing.x8,
              runSpacing: AppSpacing.x4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  title,
                  style: context.text.h2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                ?extra,
              ],
            ),
          ),
          if (seeAll != null) _SeeAllLink(onTap: seeAll),
        ],
      ),
    );
  }
}

class _SeeAllLink extends StatelessWidget {
  const _SeeAllLink({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.badgeBorder,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: AppSizes.touchTarget),
        child: Padding(
          padding: const EdgeInsets.only(left: AppSpacing.x8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.actionSeeAll,
                style: context.text.bodyStrong.copyWith(
                  color: c.primaryPressed,
                ),
              ),
              const SizedBox(width: AppSpacing.x4),
              Icon(
                AppIcons.arrowRight,
                size: AppSizes.iconSmall,
                color: c.primaryPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
