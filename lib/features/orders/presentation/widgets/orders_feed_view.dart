import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/orders_feed.dart';
import '../bloc/orders_feed_cubits.dart';
import 'feed_card_view.dart';
import 'orders_common.dart';
import 'orders_overview_section.dart';

/// Where the buttons of a card lead. Each completes when the user comes
/// back, so the filter can be reloaded.
class OrdersFeedNavigator {
  const OrdersFeedNavigator({
    required this.openOrder,
    required this.openParcel,
    required this.pay,
    required this.writeReview,
  });

  final Future<void> Function(String number) openOrder;
  final Future<void> Function(String number) openParcel;

  /// Card payment of an order: its number and the sum due now.
  final Future<void> Function(String number, int amount) pay;
  final Future<void> Function(String orderNumber, String itemId) writeReview;
}

/// Filter chips and order / parcel cards (UI_DESIGN §7.12). Expects
/// [OrdersFeedCubit].
class OrdersFeedView extends StatelessWidget {
  const OrdersFeedView({required this.navigator, super.key});

  final OrdersFeedNavigator navigator;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final cubit = context.read<OrdersFeedCubit>();
    return Scaffold(
      backgroundColor: c.surface,
      appBar: AppBar(backgroundColor: c.surface, title: Text(l10n.ordersTitle)),
      body: Column(
        children: [
          BlocSelector<OrdersFeedCubit, OrdersFeedState, OrdersFilter>(
            selector: (state) => state.filter,
            builder: (context, selected) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.screen,
                AppSpacing.x4,
                AppSpacing.screen,
                AppSpacing.x12,
              ),
              child: Row(
                children: [
                  for (final filter in OrdersFilter.values) ...[
                    if (filter != OrdersFilter.values.first)
                      const SizedBox(width: AppSpacing.x8),
                    AppChip(
                      label: ordersFilterLabel(l10n, filter),
                      isSelected: filter == selected,
                      onTap: () => cubit.select(filter),
                    ),
                  ],
                ],
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<OrdersFeedCubit, OrdersFeedState>(
              builder: (context, state) => RefreshIndicator(
                onRefresh: cubit.refresh,
                child: LoadableBody<List<FeedCard>>(
                  data: state.current.data,
                  failure: state.current.failure,
                  onRetry: cubit.refresh,
                  skeleton: const SkeletonList(),
                  builder: (cards) => _CardsList(
                    state: state,
                    cards: cards,
                    navigator: navigator,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardsList extends StatelessWidget {
  const _CardsList({
    required this.state,
    required this.cards,
    required this.navigator,
  });

  final OrdersFeedState state;
  final List<FeedCard> cards;
  final OrdersFeedNavigator navigator;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final slot = state.current;
    final fetchedAt = slot.fetchedAt;
    if (cards.isEmpty) {
      // Scrollable so pull-to-refresh still works on an empty filter.
      return ListView(
        children: [
          EmptyState(
            icon: AppIcons.order,
            title: l10n.ordersFeedEmpty,
            message: l10n.ordersFeedEmptyText,
          ),
        ],
      );
    }
    return ListView(
      padding: const EdgeInsets.only(bottom: AppSpacing.x24),
      children: [
        if (slot.isFromCache && fetchedAt != null)
          CachedNotice(fetchedAt: fetchedAt),
        for (final card in cards)
          FeedCardView(
            key: ValueKey(
              '${card.kind.name}:${card.number}:'
              '${card.items.isEmpty ? '' : card.items.first.id}',
            ),
            card: card,
            onOpen: () => _follow(context, _open(card)),
            onAction: (action) => _follow(
              context,
              // Payments and reviews change the server state: no actions
              // from a device copy.
              slot.isFromCache ? _open(card) : _act(card, action),
            ),
          ),
      ],
    );
  }

  Future<void> _open(FeedCard card) => switch (card.kind) {
    FeedKind.order => navigator.openOrder(card.number),
    FeedKind.parcel => navigator.openParcel(card.number),
  };

  Future<void> _act(FeedCard card, FeedAction action) => switch (action.type) {
    FeedActionType.pay => navigator.pay(card.number, card.amountDue ?? 0),
    FeedActionType.paySurcharge ||
    FeedActionType.track => navigator.openParcel(card.number),
    FeedActionType.review => navigator.writeReview(
      card.number,
      action.itemId ?? card.items.first.id,
    ),
    FeedActionType.resolve || FeedActionType.details => _open(card),
  };

  /// Comes back from the opened screen and reloads: the card may have
  /// moved to another filter.
  static Future<void> _follow(BuildContext context, Future<void> opened) async {
    final cubit = context.read<OrdersFeedCubit>();
    await opened;
    if (!cubit.isClosed) await cubit.refresh();
  }
}
