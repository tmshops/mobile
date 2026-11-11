import 'package:flutter/material.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/cart_quote.dart';

/// Lines of one seller in a card, with the seller's tick and China
/// delivery (TZ §5.10).
class SellerGroupCard extends StatelessWidget {
  const SellerGroupCard({
    required this.title,
    required this.lines,
    required this.onSelectedAll,
    required this.lineBuilder,
    this.seller,
    super.key,
  });

  final String title;
  final List<CartItem> lines;

  /// `null` until the server answers.
  final SellerQuote? seller;
  final ValueChanged<bool> onSelectedAll;
  final Widget Function(CartItem line) lineBuilder;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final s = seller;
    final selected = lines.where((l) => l.isSelected).length;
    final tick = selected == 0
        ? false
        : selected == lines.length
        ? true
        : null;
    final meta = context.text.caption.copyWith(color: c.inkSecondary);
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.x12,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: c.divider),
          borderRadius: AppRadii.cardBorder,
        ),
        child: ClipRRect(
          borderRadius: AppRadii.cardBorder,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              0,
              AppSpacing.x4,
              AppSpacing.x12,
              AppSpacing.x4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Checkbox(
                      tristate: true,
                      value: tick,
                      // From «some» a tap ticks all, as users expect.
                      onChanged: (_) => onSelectedAll(tick != true),
                      semanticLabel: title,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: AppSpacing.x8,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(title, style: context.text.h3),
                              if (s != null)
                                SmallPill(
                                  label: s.source,
                                  background: c.surface,
                                  foreground: c.ink,
                                ),
                            ],
                          ),
                          Text(switch (s) {
                            SellerQuote(:final chinaDelivery)
                                when chinaDelivery > 0 =>
                              l10n.cartChinaDelivery(
                                MoneyFormat.tmt(l10n, chinaDelivery),
                              ),
                            SellerQuote() => '',
                            null => l10n.cartChinaDeliveryPending,
                          }, style: meta),
                        ],
                      ),
                    ),
                  ],
                ),
                for (final (i, line) in lines.indexed) ...[
                  if (i > 0) const Divider(indent: AppSpacing.x48),
                  lineBuilder(line),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
