import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';

/// Soft orange card that opens the add-by-link flow (TZ §5.9).
class PasteLinkCard extends StatelessWidget {
  const PasteLinkCard({required this.sources, required this.onTap, super.key});

  /// Marketplace names, e.g. Taobao, 1688, Tmall.
  final List<String> sources;
  final VoidCallback onTap;

  static const double _iconCircle = 44;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Padding(
      padding: AppSpacing.screenPadding,
      child: Material(
        color: c.primarySoft,
        borderRadius: AppRadii.cardBorder,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.x16),
            child: Row(
              children: [
                Container(
                  width: _iconCircle,
                  height: _iconCircle,
                  decoration: BoxDecoration(
                    color: c.background,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(AppIcons.link, color: c.primary),
                ),
                const SizedBox(width: AppSpacing.x12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(l10n.homePasteLinkTitle, style: context.text.h3),
                      const SizedBox(height: AppSpacing.x2),
                      Text(
                        // Names are data, not a sentence: a plain join is fine.
                        l10n.homePasteLinkHint(sources.join(', ')),
                        style: context.text.caption.copyWith(
                          color: c.inkSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacing.x8),
                Icon(AppIcons.chevronRight, color: c.inkSecondary),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
