import 'package:flutter/material.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/cart_quote.dart';

/// One cart line: tick, photo, title, variant chip, warnings, stepper and
/// price. Swipe left to remove (UI_DESIGN §7.7).
class CartLineRow extends StatelessWidget {
  const CartLineRow({
    required this.item,
    required this.onSelected,
    required this.onQuantity,
    required this.onRemove,
    required this.onChangeVariant,
    required this.onOpen,
    this.quote,
    super.key,
  });

  final CartItem item;

  /// Today's price and stock; `null` until the server answers.
  final LineQuote? quote;
  final ValueChanged<bool> onSelected;
  final ValueChanged<int> onQuantity;
  final VoidCallback onRemove;
  final VoidCallback onChangeVariant;
  final VoidCallback onOpen;

  static const double _image = 80;
  static const _noStockLimit = 99;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final q = quote;
    final price = q?.price ?? item.price;
    final isUnavailable = q != null && !q.isAvailable;
    final priceChanged = q != null && q.isAvailable && q.price != item.price;
    final label = item.skuLabel;
    final stock = q?.stock ?? 0;

    return Dismissible(
      key: ValueKey(item.key),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onRemove(),
      background: Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x24),
        color: c.danger,
        child: Semantics(
          label: l10n.actionRemove,
          child: Icon(AppIcons.delete, color: c.onPrimary),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: item.isSelected,
              onChanged: (v) => onSelected(v ?? false),
              semanticLabel: l10n.cartSelectLine(item.title),
            ),
            GestureDetector(
              onTap: onOpen,
              child: Opacity(
                opacity: isUnavailable ? AppOpacity.disabled : 1,
                child: ClipRRect(
                  borderRadius: AppRadii.imageBorder,
                  child: SizedBox.square(
                    dimension: _image,
                    child: AppNetworkImage(
                      url: item.imageUrl,
                      semanticLabel: item.title,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: onOpen,
                    child: Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.body,
                    ),
                  ),
                  if (label != null)
                    Semantics(
                      hint: l10n.cartChangeVariant,
                      child: AppChip(
                        label: label,
                        icon: AppIcons.chevronDown,
                        onTap: onChangeVariant,
                      ),
                    ),
                  if (isUnavailable)
                    _Warning(text: l10n.cartUnavailable, color: c.danger)
                  else if (priceChanged)
                    _Warning(
                      text: l10n.cartPriceChanged(
                        MoneyFormat.tmt(l10n, item.price),
                        MoneyFormat.tmt(l10n, price),
                      ),
                      color: c.warning,
                    ),
                  const SizedBox(height: AppSpacing.x4),
                  Wrap(
                    spacing: AppSpacing.x8,
                    runSpacing: AppSpacing.x8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Text(
                        MoneyFormat.tmt(l10n, price * item.quantity),
                        style: context.text.price,
                      ),
                      if (!isUnavailable)
                        QuantityStepper(
                          value: item.quantity,
                          max: q == null || stock < 1
                              ? _noStockLimit
                              : stock.clamp(item.quantity, _noStockLimit),
                          onChanged: onQuantity,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Warning with an icon, so the state is not told by colour alone.
class _Warning extends StatelessWidget {
  const _Warning({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: AppSpacing.x4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(AppIcons.warning, size: AppSizes.iconSmall, color: color),
        const SizedBox(width: AppSpacing.x4),
        Expanded(child: Text(text, style: context.text.caption)),
      ],
    ),
  );
}
