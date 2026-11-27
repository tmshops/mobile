import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/cart_quote.dart';

/// One cart line: round tick, photo, title with «×N» (tap → stepper sheet),
/// variant line (tap → change), warnings and the unit price. Swipe left to
/// remove, right to move to favourites (UI_DESIGN §7.7).
class CartLineRow extends StatelessWidget {
  const CartLineRow({
    required this.item,
    required this.onSelected,
    required this.onEditQuantity,
    required this.onRemove,
    required this.onMoveToFavourites,
    required this.onChangeVariant,
    required this.onOpen,
    this.quote,
    super.key,
  });

  final CartItem item;

  /// Today's price and stock; `null` until the server answers.
  final LineQuote? quote;
  final ValueChanged<bool> onSelected;

  /// Opens the stepper with the most the seller can sell right now.
  final ValueChanged<int> onEditQuantity;
  final VoidCallback onRemove;

  /// Takes the line out of the cart and keeps the product in favourites.
  final VoidCallback onMoveToFavourites;
  final VoidCallback onChangeVariant;
  final VoidCallback onOpen;

  static const double _image = 96;
  static const _noStockLimit = 99;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final q = quote;
    final isUnavailable = q != null && !q.isAvailable;
    final stock = q?.stock ?? 0;
    final maxQuantity = q == null || stock < 1
        ? _noStockLimit
        : stock.clamp(item.quantity, _noStockLimit);

    return _SwipeActions(
      lineKey: item.key,
      onRemove: onRemove,
      onMoveToFavourites: onMoveToFavourites,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: AppSpacing.x8,
          bottom: AppSpacing.x8,
          end: AppSpacing.x12,
        ),
        child: Row(
          children: [
            RoundCheckbox(
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
              child: _LineDetails(
                item: item,
                quote: q,
                onOpen: onOpen,
                onChangeVariant: onChangeVariant,
                onEditQuantity: isUnavailable
                    ? null
                    : () => onEditQuantity(maxQuantity),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Swipe left = remove (red, bin), swipe right = to favourites (orange,
/// heart). Both are also screen-reader actions, since swipes are not.
class _SwipeActions extends StatelessWidget {
  const _SwipeActions({
    required this.lineKey,
    required this.onRemove,
    required this.onMoveToFavourites,
    required this.child,
  });

  final String lineKey;
  final VoidCallback onRemove;
  final VoidCallback onMoveToFavourites;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Semantics(
      customSemanticsActions: {
        CustomSemanticsAction(label: l10n.actionRemove): onRemove,
        CustomSemanticsAction(label: l10n.cartMoveToFavourites):
            onMoveToFavourites,
      },
      child: Dismissible(
        key: ValueKey(lineKey),
        onDismissed: (direction) => direction == DismissDirection.startToEnd
            ? onMoveToFavourites()
            : onRemove(),
        background: _SwipeBackground(
          alignment: AlignmentDirectional.centerStart,
          color: c.primary,
          icon: AppIcons.heart,
          label: l10n.cartMoveToFavourites,
        ),
        secondaryBackground: _SwipeBackground(
          alignment: AlignmentDirectional.centerEnd,
          color: c.danger,
          icon: AppIcons.delete,
          label: l10n.actionRemove,
        ),
        child: child,
      ),
    );
  }
}

class _SwipeBackground extends StatelessWidget {
  const _SwipeBackground({
    required this.alignment,
    required this.color,
    required this.icon,
    required this.label,
  });

  final AlignmentGeometry alignment;
  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) => Container(
    alignment: alignment,
    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x24),
    color: color,
    child: Semantics(
      label: label,
      child: Icon(icon, color: context.colors.onPrimary),
    ),
  );
}

/// Text side of a line, top to bottom as in the photo's height.
class _LineDetails extends StatelessWidget {
  const _LineDetails({
    required this.item,
    required this.quote,
    required this.onOpen,
    required this.onChangeVariant,
    required this.onEditQuantity,
  });

  final CartItem item;
  final LineQuote? quote;
  final VoidCallback onOpen;
  final VoidCallback onChangeVariant;

  /// `null` for a line that cannot be bought: no badge then.
  final VoidCallback? onEditQuantity;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final q = quote;
    final price = q?.price ?? item.price;
    final isUnavailable = q != null && !q.isAvailable;
    final priceChanged = q != null && q.isAvailable && q.price != item.price;
    final label = item.skuLabel;
    final editQuantity = onEditQuantity;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: onOpen,
                child: Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.bodyStrong,
                ),
              ),
            ),
            if (editQuantity != null) ...[
              const SizedBox(width: AppSpacing.x8),
              _QuantityBadge(quantity: item.quantity, onTap: editQuantity),
            ],
          ],
        ),
        if (label != null) _VariantLine(label: label, onTap: onChangeVariant),
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
        Text(
          MoneyFormat.tmt(l10n, price),
          style: context.text.price.copyWith(
            color: isUnavailable ? c.inkTertiary : c.primary,
          ),
        ),
      ],
    );
  }
}

/// Grey one-line variant summary with a chevron; tap changes the variant.
class _VariantLine extends StatelessWidget {
  const _VariantLine({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      button: true,
      hint: context.l10n.cartChangeVariant,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.badgeBorder,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.x4),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.text.caption.copyWith(color: c.inkSecondary),
                ),
              ),
              Icon(
                AppIcons.chevronRight,
                size: AppSizes.iconSmall,
                color: c.inkTertiary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Small outlined «×2» next to the title.
class _QuantityBadge extends StatelessWidget {
  const _QuantityBadge({required this.quantity, required this.onTap});

  final int quantity;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Semantics(
      button: true,
      label: l10n.cartQuantitySpoken(quantity),
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.badgeBorder,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x8,
            vertical: AppSpacing.x2,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: c.divider),
            borderRadius: AppRadii.badgeBorder,
          ),
          child: Text(
            l10n.cartQuantityBadge(quantity),
            style: context.text.caption.copyWith(
              fontFeatures: AppTypography.tabularFigures,
            ),
          ),
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
