import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order.dart';
import '../bloc/orders_cubit.dart';
import 'order_card.dart';
import 'orders_common.dart';
import 'repeat_to_cart.dart';

/// Segmented tabs and order cards (UI_DESIGN §7.12). Expects [OrdersCubit].
class OrdersView extends StatelessWidget {
  const OrdersView({
    required this.onOpenOrder,
    required this.onOpenCatalog,
    required this.onOpenCart,
    super.key,
  });

  final ValueChanged<String> onOpenOrder;
  final VoidCallback onOpenCatalog;
  final VoidCallback onOpenCart;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<OrdersCubit>();
    return MultiBlocListener(
      listeners: [
        BlocListener<OrdersCubit, OrdersState>(
          listenWhen: (a, b) => b.repeated != null && a.repeated != b.repeated,
          listener: (context, state) => addRepeatedToCart(
            context,
            state.repeated!,
            onOpenCart: onOpenCart,
          ),
        ),
        BlocListener<OrdersCubit, OrdersState>(
          listenWhen: (a, b) =>
              b.repeatFailure != null && a.repeatFailure != b.repeatFailure,
          listener: (context, state) => showAppToast(
            context,
            message: orderFailureText(l10n, state.repeatFailure!),
            icon: AppIcons.warning,
          ),
        ),
      ],
      child: Scaffold(
        backgroundColor: context.colors.surface,
        appBar: AppBar(
          backgroundColor: context.colors.surface,
          title: Text(l10n.ordersTitle),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.screen,
                AppSpacing.x4,
                AppSpacing.screen,
                AppSpacing.x12,
              ),
              child: BlocSelector<OrdersCubit, OrdersState, OrderTab>(
                selector: (state) => state.tab,
                builder: (context, tab) => AppSegmentedControl<OrderTab>(
                  segments: [
                    (OrderTab.active, l10n.ordersTabActive),
                    (OrderTab.completed, l10n.ordersTabCompleted),
                    (OrderTab.cancelled, l10n.ordersTabCancelled),
                  ],
                  selected: tab,
                  onChanged: cubit.selectTab,
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<OrdersCubit, OrdersState>(
                builder: (context, state) => RefreshIndicator(
                  onRefresh: cubit.refresh,
                  child: LoadableBody<List<OrderSummary>>(
                    data: state.current.data,
                    failure: state.current.failure,
                    onRetry: cubit.refresh,
                    skeleton: const SkeletonList(),
                    builder: (orders) => _OrdersList(
                      state: state,
                      orders: orders,
                      onOpenOrder: onOpenOrder,
                      onOpenCatalog: onOpenCatalog,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrdersList extends StatelessWidget {
  const _OrdersList({
    required this.state,
    required this.orders,
    required this.onOpenOrder,
    required this.onOpenCatalog,
  });

  final OrdersState state;
  final List<OrderSummary> orders;
  final ValueChanged<String> onOpenOrder;
  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final slot = state.current;
    final fetchedAt = slot.fetchedAt;
    if (orders.isEmpty) {
      // Scrollable so pull-to-refresh still works on an empty tab.
      return ListView(
        children: [
          EmptyState(
            icon: AppIcons.order,
            title: switch (state.tab) {
              OrderTab.active => l10n.ordersEmptyActive,
              OrderTab.completed => l10n.ordersEmptyCompleted,
              OrderTab.cancelled => l10n.ordersEmptyCancelled,
            },
            message: state.tab == OrderTab.active
                ? l10n.ordersEmptyActiveText
                : null,
            actionLabel: state.tab == OrderTab.active
                ? l10n.actionGoToCatalog
                : null,
            onAction: state.tab == OrderTab.active ? onOpenCatalog : null,
          ),
        ],
      );
    }
    return ListView(
      padding: const EdgeInsets.only(bottom: AppSpacing.x24),
      children: [
        if (slot.isFromCache && fetchedAt != null)
          CachedNotice(fetchedAt: fetchedAt),
        for (final order in orders)
          OrderCard(
            order: order,
            isRepeating: state.repeating == order.number,
            canRepeat: order.canRepeat && !slot.isFromCache,
            onTap: () => onOpenOrder(order.number),
            onRepeat: () => context.read<OrdersCubit>().repeat(order.number),
          ),
      ],
    );
  }
}
