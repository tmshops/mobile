import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/favourites/favourites_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/product/presentation/variant_sheet.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/favourite_card.dart';
import '../bloc/favourites_view_cubit.dart';
import 'favourite_tile.dart';
import 'favourites_toolbar.dart';

/// Favourites tab (UI_DESIGN §7.17, TZ §5.16). The list comes from the
/// global [FavouritesCubit]; today's prices, sort and selection from
/// [FavouritesViewCubit].
class FavouritesView extends StatelessWidget {
  const FavouritesView({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    required this.onOpenCart,
    required this.onLogin,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;
  final VoidCallback onOpenCart;
  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    final view = context.read<FavouritesViewCubit>();
    return MultiBlocListener(
      listeners: [
        // A heart tapped elsewhere: fetch the new product's offer.
        BlocListener<FavouritesCubit, FavouritesState>(
          listenWhen: (a, b) => a.items != b.items,
          listener: (context, state) {
            final ids = [for (final f in state.items) f.id];
            view.keepOnly(ids);
            if (state.items.isEmpty) view.stopSelecting();
            view.refresh(_language(context), ids, onlyMissing: true);
          },
        ),
        BlocListener<LocaleCubit, Locale>(
          listener: (context, locale) =>
              view.refresh(locale.languageCode, _ids(context)),
        ),
      ],
      child: BlocBuilder<FavouritesCubit, FavouritesState>(
        builder: (context, favourites) =>
            BlocBuilder<FavouritesViewCubit, FavouritesViewState>(
              builder: (context, state) {
                final cards = FavouriteCard.arrange(
                  favourites.items,
                  state.offers,
                  state.sort,
                );
                return RootTabPage(
                  title: context.l10n.tabFavourites,
                  actions: [if (cards.isNotEmpty) _SelectToggle(state: state)],
                  slivers: cards.isEmpty
                      ? [_EmptySliver(onOpenCatalog: onOpenCatalog)]
                      : [
                          SliverToBoxAdapter(
                            child: _Header(
                              cards: cards,
                              state: state,
                              onLogin: onLogin,
                            ),
                          ),
                          _GridSliver(
                            cards: cards,
                            state: state,
                            onOpenProduct: onOpenProduct,
                          ),
                        ],
                  bottomBar: state.isSelecting
                      ? _SelectionBar(
                          cards: [
                            for (final c in cards)
                              if (state.selected.contains(c.id)) c,
                          ],
                          onOpenCart: onOpenCart,
                        )
                      : null,
                );
              },
            ),
      ),
    );
  }

  static String _language(BuildContext context) =>
      context.read<LocaleCubit>().state.languageCode;

  static List<String> _ids(BuildContext context) => [
    for (final f in context.read<FavouritesCubit>().state.items) f.id,
  ];
}

class _SelectToggle extends StatelessWidget {
  const _SelectToggle({required this.state});

  final FavouritesViewState state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final view = context.read<FavouritesViewCubit>();
    if (state.isSelecting) {
      return TertiaryButton(
        label: l10n.favouritesDone,
        onPressed: view.stopSelecting,
      );
    }
    return TertiaryButton(
      label: l10n.favouritesSelect,
      icon: AppIcons.select,
      onPressed: view.startSelecting,
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.cards,
    required this.state,
    required this.onLogin,
  });

  final List<FavouriteCard> cards;
  final FavouritesViewState state;
  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    final view = context.read<FavouritesViewCubit>();
    final isGuest = context.select<AuthCubit, bool>(
      (auth) => auth.state is AuthGuest,
    );
    final ids = [for (final c in cards) c.id];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (isGuest && !state.isSelecting) GuestSyncBanner(onLogin: onLogin),
        FavouritesToolbar(
          count: cards.length,
          sort: state.sort,
          isSelecting: state.isSelecting,
          isAllSelected: state.selected.length == cards.length,
          onSort: view.sortBy,
          onToggleAll: () => view.toggleAll(ids),
        ),
        if (state.failure != null)
          RefreshFailedNote(
            onRetry: () => view.refresh(
              context.read<LocaleCubit>().state.languageCode,
              ids,
            ),
          ),
      ],
    );
  }
}

class _GridSliver extends StatelessWidget {
  const _GridSliver({
    required this.cards,
    required this.state,
    required this.onOpenProduct,
  });

  final List<FavouriteCard> cards;
  final FavouritesViewState state;
  final ValueChanged<ProductSummary> onOpenProduct;

  static const _columns = 2;

  @override
  Widget build(BuildContext context) {
    final view = context.read<FavouritesViewCubit>();
    final rows = (cards.length + _columns - 1) ~/ _columns;
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screen,
        0,
        AppSpacing.screen,
        AppSpacing.section,
      ),
      sliver: SliverList.separated(
        itemCount: rows,
        separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.x16),
        itemBuilder: (context, row) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var col = 0; col < _columns; col++) ...[
              if (col > 0) const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: switch (row * _columns + col) {
                  final i when i < cards.length => FavouriteTile(
                    key: ValueKey(cards[i].id),
                    card: cards[i],
                    isSelecting: state.isSelecting,
                    isSelected: state.selected.contains(cards[i].id),
                    onOpen: () => onOpenProduct(cards[i].product),
                    // A sold-out product page leads with «Похожие».
                    onSimilar: () => onOpenProduct(cards[i].product),
                    onRemove: () => removeFavourites(context, {cards[i].id}),
                    onToggleSelected: () => view.toggle(cards[i].id),
                  ),
                  _ => const SizedBox.shrink(),
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _EmptySliver extends StatelessWidget {
  const _EmptySliver({required this.onOpenCatalog});

  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: EmptyState(
          icon: AppIcons.heart,
          title: l10n.favouritesEmptyTitle,
          message: l10n.favouritesEmptyText,
          actionLabel: l10n.actionGoToCatalog,
          onAction: onOpenCatalog,
        ),
      ),
    );
  }
}

/// «Удалить» and «В корзину» for the ticked tiles.
class _SelectionBar extends StatelessWidget {
  const _SelectionBar({required this.cards, required this.onOpenCart});

  final List<FavouriteCard> cards;
  final VoidCallback onOpenCart;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final buyable = [
      for (final c in cards)
        if (c.isAvailable) c,
    ];
    return StickyActionBar(
      above: Text(
        l10n.favouritesSelected(cards.length),
        style: context.text.caption.copyWith(
          color: context.colors.inkSecondary,
        ),
      ),
      secondary: SecondaryButton(
        label: l10n.actionRemove,
        onPressed: cards.isEmpty
            ? null
            : () async {
                final view = context.read<FavouritesViewCubit>();
                await removeFavourites(context, {for (final c in cards) c.id});
                view.stopSelecting();
              },
      ),
      primary: PrimaryButton(
        label: l10n.actionAddToCart,
        onPressed: buyable.isEmpty
            ? null
            : () => _addToCart(context, buyable, onOpenCart: onOpenCart),
      ),
    );
  }
}

/// Removes [ids] with an «Отменить» toast.
Future<void> removeFavourites(BuildContext context, Set<String> ids) async {
  final favourites = context.read<FavouritesCubit>();
  final l10n = context.l10n;
  final removed = await favourites.removeMany(ids);
  if (removed.isEmpty || !context.mounted) return;
  showAppToast(
    context,
    message: l10n.favouritesRemoved(removed.length),
    actionLabel: l10n.actionUndo,
    onAction: () => favourites.restore(removed),
  );
}

/// Each product needs a variant: one sheet per product, in turn. A sheet
/// closed without a choice skips that product.
Future<void> _addToCart(
  BuildContext context,
  List<FavouriteCard> cards, {
  required VoidCallback onOpenCart,
}) async {
  final cart = context.read<CartCubit>();
  final view = context.read<FavouritesViewCubit>();
  final l10n = context.l10n;
  var added = 0;
  for (final card in cards) {
    if (!context.mounted) return;
    final chosen = await showVariantSheet(
      context,
      productId: card.id,
      title: card.product.title,
      actionLabel: l10n.actionAddToCart,
    );
    if (!context.mounted) return;
    if (chosen == null) continue;
    await cart.add(
      CartItem(
        productId: card.id,
        title: card.product.title,
        imageUrl: chosen.imageUrl ?? card.product.imageUrl,
        price: chosen.sku.price,
        quantity: 1,
        skuId: chosen.sku.id,
        skuLabel: chosen.label,
        sellerName: card.sellerName,
      ),
    );
    added++;
  }
  if (added == 0 || !context.mounted) return;
  view.stopSelecting();
  showAppToast(
    context,
    message: l10n.favouritesAddedToCart(added),
    icon: AppIcons.checkCircle,
    actionLabel: l10n.actionGoTo,
    onAction: onOpenCart,
  );
}
