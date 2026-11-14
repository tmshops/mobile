import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/presentation/product_summary_tile.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/favourite_card.dart';

/// A Favourites grid tile (UI_DESIGN §7.17): green «Цена снизилась» strip,
/// greyed «Нет в наличии» with «Похожие», or a tick in «Выбрать» mode.
class FavouriteTile extends StatelessWidget {
  const FavouriteTile({
    required this.card,
    required this.isSelecting,
    required this.isSelected,
    required this.onOpen,
    required this.onRemove,
    required this.onToggleSelected,
    required this.onSimilar,
    super.key,
  });

  final FavouriteCard card;
  final bool isSelecting;
  final bool isSelected;
  final VoidCallback onOpen;
  final VoidCallback onRemove;
  final VoidCallback onToggleSelected;
  final VoidCallback onSimilar;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final product = card.product;
    final drop = card.dropPercent;
    return Stack(
      children: [
        ProductTile(
          imageUrl: product.imageUrl,
          title: product.title,
          price: product.price,
          oldPrice: product.oldPrice,
          soldCount: product.soldCount,
          isIllustration: product.isIllustration,
          badges: card.isAvailable ? productBadges(product) : const [],
          isFavourite: true,
          onFavouriteToggle: isSelecting ? null : onRemove,
          isDimmed: !card.isAvailable,
          imageFooter: !card.isAvailable
              ? TileStrip(
                  label: l10n.productOutOfStock,
                  background: c.graphite,
                  foreground: c.onGraphite,
                )
              : drop == null
              ? null
              : TileStrip(
                  icon: AppIcons.priceDrop,
                  label: l10n.favouritesPriceDrop(drop),
                  background: c.success,
                  foreground: c.onPrimary,
                ),
          footer: card.isAvailable || isSelecting
              ? null
              : Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: TertiaryButton(
                    label: l10n.favouritesSimilar,
                    icon: AppIcons.arrowRight,
                    onPressed: onSimilar,
                  ),
                ),
          onTap: isSelecting ? onToggleSelected : onOpen,
        ),
        if (isSelecting)
          PositionedDirectional(
            top: 0,
            end: 0,
            child: SelectMark(
              isSelected: isSelected,
              label: product.title,
              onTap: onToggleSelected,
            ),
          ),
      ],
    );
  }
}

/// Round tick over a tile in «Выбрать» mode, with a 48-dp hit area.
class SelectMark extends StatelessWidget {
  const SelectMark({
    required this.isSelected,
    required this.label,
    required this.onTap,
    super.key,
  });

  final bool isSelected;

  /// What is being selected, for screen readers.
  final String label;
  final VoidCallback onTap;

  static const double _disc = 26;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      container: true,
      checked: isSelected,
      label: context.l10n.favouritesSelectItem(label),
      excludeSemantics: true,
      child: InkResponse(
        onTap: onTap,
        radius: AppSizes.touchTarget / 2,
        child: SizedBox.square(
          dimension: AppSizes.touchTarget,
          child: Center(
            child: AnimatedContainer(
              duration: AppMotion.of(context, AppMotion.fast),
              width: _disc,
              height: _disc,
              decoration: BoxDecoration(
                color: isSelected ? c.primary : c.background,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? c.primary : c.inkTertiary,
                  width: AppSizes.inputBorder,
                ),
              ),
              child: isSelected
                  ? Icon(
                      AppIcons.check,
                      size: AppSizes.iconSmall,
                      color: c.onPrimary,
                    )
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
