import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cart/cart_cubit.dart';
import '../../../../core/cart/cart_item.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/network/connectivity_cubit.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/cart_quote_bloc.dart';
import 'cart_line_row.dart';
import 'cart_summary.dart';
import 'seller_group_card.dart';
import 'variant_sheet.dart';

/// Cart tab (UI_DESIGN §7.7, TZ §5.10). Lines come from [CartCubit] and
/// change at once; totals come from [CartQuoteBloc].
class CartView extends StatelessWidget {
  const CartView({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    required this.onComingSoon,
    super.key,
  });

  final ValueChanged<String> onOpenProduct;
  final VoidCallback onOpenCatalog;

  /// Checkout and quick order are not built yet.
  final VoidCallback onComingSoon;

  @override
  Widget build(BuildContext context) {
    final quote = context.read<CartQuoteBloc>();
    return MultiBlocListener(
      listeners: [
        BlocListener<CartCubit, CartState>(
          listener: (_, cart) =>
              quote.add(CartQuoteEvent.linesChanged(cart.items)),
        ),
        BlocListener<RegionCubit, RegionState>(
          listenWhen: (a, b) => a.selectedId != b.selectedId,
          listener: (_, region) =>
              quote.add(CartQuoteEvent.regionChanged(region.selectedId)),
        ),
        BlocListener<LocaleCubit, Locale>(
          listener: (context, locale) => quote.add(
            CartQuoteEvent.started(
              languageCode: locale.languageCode,
              regionId: context.read<RegionCubit>().state.selectedId,
              lines: context.read<CartCubit>().state.items,
            ),
          ),
        ),
        BlocListener<ConnectivityCubit, bool>(
          listenWhen: (wasOnline, isOnline) => !wasOnline && isOnline,
          listener: (_, _) => quote.add(const CartQuoteEvent.retried()),
        ),
      ],
      child: BlocBuilder<CartCubit, CartState>(
        builder: (context, cart) => BlocBuilder<CartQuoteBloc, CartQuoteState>(
          builder: (context, quoteState) => _CartScaffold(
            cart: cart,
            quoteState: quoteState,
            onOpenProduct: onOpenProduct,
            onOpenCatalog: onOpenCatalog,
            onComingSoon: onComingSoon,
          ),
        ),
      ),
    );
  }
}

class _CartScaffold extends StatelessWidget {
  const _CartScaffold({
    required this.cart,
    required this.quoteState,
    required this.onOpenProduct,
    required this.onOpenCatalog,
    required this.onComingSoon,
  });

  final CartState cart;
  final CartQuoteState quoteState;
  final ValueChanged<String> onOpenProduct;
  final VoidCallback onOpenCatalog;
  final VoidCallback onComingSoon;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<CartCubit>();
    final quoteBloc = context.read<CartQuoteBloc>();
    final quote = quoteState.quote;
    final isOnline = context.select<ConnectivityCubit, bool>((c) => c.state);
    final offline = isOnline ? null : const OfflineBanner();

    if (cart.items.isEmpty) {
      return RootTabPage(
        title: l10n.tabCart,
        top: offline,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: EmptyState(
                icon: AppIcons.cart,
                title: l10n.cartEmptyTitle,
                message: l10n.cartEmptyText,
                actionLabel: l10n.actionGoToCatalog,
                onAction: onOpenCatalog,
              ),
            ),
          ),
        ],
      );
    }

    final selected = cart.selected;
    // Before the first answer, show the local sum of ticked lines.
    final localSum = selected.fold<int>(0, (s, i) => s + i.price * i.quantity);
    final missing = quote?.missingToMinimum ?? 0;
    final canCheckout =
        selected.isNotEmpty &&
        quote != null &&
        missing == 0 &&
        !quoteState.isLoading;

    return RootTabPage(
      title: l10n.tabCart,
      top: offline,
      bottomBar: CartSummaryBar(
        total: quote?.summary.total ?? localSum,
        summary: quote?.summary,
        isLoading: quoteState.isLoading,
        canCheckout: canCheckout,
        onCheckout: onComingSoon,
        onQuickOrder: onComingSoon,
      ),
      slivers: [
        SliverToBoxAdapter(
          child: _SelectAllRow(
            selected: selected.length,
            total: cart.items.length,
            isAll: cart.isAllSelected,
            onChanged: (all) => cubit.setSelectedMany(isSelected: all),
          ),
        ),
        for (final MapEntry(key: seller, value: lines) in _bySeller(
          cart.items,
        ).entries)
          SliverToBoxAdapter(
            child: SellerGroupCard(
              title: seller ?? l10n.cartOtherSeller,
              lines: lines,
              seller: seller == null ? null : quote?.sellers[seller],
              onSelectedAll: (all) => cubit.setSelectedMany(
                isSelected: all,
                keys: {for (final l in lines) l.key},
              ),
              lineBuilder: (line) => CartLineRow(
                item: line,
                quote: quote?.lines[line.key],
                onSelected: (v) => cubit.setSelected(line.key, isSelected: v),
                onQuantity: (q) => cubit.setQuantity(line.key, q),
                onChangeVariant: () => showVariantSheet(context, line),
                onOpen: () => onOpenProduct(line.productId),
                onRemove: () => _remove(context, line),
              ),
            ),
          ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PromoCodeBlock(
                appliedCode: quote?.promo?.isApplied ?? false
                    ? quote?.promo?.code
                    : null,
                error: quoteState.promoError,
                isChecking:
                    quoteState.isLoading && quoteState.promoCode != null,
                onApply: (code) =>
                    quoteBloc.add(CartQuoteEvent.promoApplied(code)),
                onRemove: () =>
                    quoteBloc.add(const CartQuoteEvent.promoRemoved()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.screen,
                  AppSpacing.x8,
                  AppSpacing.screen,
                  AppSpacing.x24,
                ),
                child: _StatusNotes(
                  hasSelection: selected.isNotEmpty,
                  quoteState: quoteState,
                  onRetry: () => quoteBloc.add(const CartQuoteEvent.retried()),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Sellers in the order their first line was added; `null` = unknown.
  static Map<String?, List<CartItem>> _bySeller(List<CartItem> items) {
    final groups = <String?, List<CartItem>>{};
    for (final item in items) {
      (groups[item.sellerName] ??= []).add(item);
    }
    return groups;
  }

  static Future<void> _remove(BuildContext context, CartItem line) async {
    final cubit = context.read<CartCubit>();
    final l10n = context.l10n;
    final index = await cubit.remove(line.key);
    if (index < 0 || !context.mounted) return;
    showAppToast(
      context,
      message: l10n.cartRemoved,
      icon: AppIcons.delete,
      actionLabel: l10n.actionUndo,
      onAction: () => cubit.restore(line, index),
    );
  }
}

class _SelectAllRow extends StatelessWidget {
  const _SelectAllRow({
    required this.selected,
    required this.total,
    required this.isAll,
    required this.onChanged,
  });

  final int selected;
  final int total;
  final bool isAll;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.x4,
        0,
        AppSpacing.screen,
        AppSpacing.x4,
      ),
      child: MergeSemantics(
        child: InkWell(
          onTap: () => onChanged(!isAll),
          child: Row(
            children: [
              Checkbox(value: isAll, onChanged: (v) => onChanged(v ?? false)),
              Expanded(
                child: Text(l10n.cartSelectAll, style: context.text.bodyStrong),
              ),
              Text(
                l10n.cartSelectedCount(selected, total),
                style: context.text.caption.copyWith(
                  color: context.colors.inkSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Minimum-sum progress, «nothing ticked» and a failed recalculation.
class _StatusNotes extends StatelessWidget {
  const _StatusNotes({
    required this.hasSelection,
    required this.quoteState,
    required this.onRetry,
  });

  final bool hasSelection;
  final CartQuoteState quoteState;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final quote = quoteState.quote;
    final failure = quoteState.failure;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (!hasSelection)
          Text(
            l10n.cartNothingSelected,
            style: context.text.caption.copyWith(color: c.inkSecondary),
          )
        else if (quote != null && quote.missingToMinimum > 0)
          ProgressToMinimum(
            current: quote.summary.items,
            minimum: quote.minOrderSum,
          ),
        if (failure != null)
          Padding(
            padding: const EdgeInsets.only(top: AppSpacing.x8),
            child: Row(
              children: [
                Icon(
                  AppIcons.warning,
                  size: AppSizes.iconSmall,
                  color: c.warning,
                ),
                const SizedBox(width: AppSpacing.x8),
                Expanded(
                  child: Text(l10n.cartQuoteError, style: context.text.caption),
                ),
                TertiaryButton(label: l10n.actionRetry, onPressed: onRetry),
              ],
            ),
          ),
      ],
    );
  }
}
