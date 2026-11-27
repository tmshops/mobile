import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/product/presentation/for_you_slivers.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/order.dart';
import '../bloc/order_cubit.dart';
import 'cancel_order_sheet.dart';
import 'order_info_sections.dart';
import 'order_item_sections.dart';
import 'orders_common.dart';
import 'repeat_to_cart.dart';

/// Status header, problems, items, parcels, money, history, cancel; a
/// sticky «Оплатить» while the order awaits payment; recommendations
/// below everything. Expects [OrderCubit] and `ForYouBloc`.
class OrderView extends StatelessWidget {
  const OrderView({
    required this.number,
    required this.onOpenParcel,
    required this.onOpenProduct,
    required this.onOpenRecommended,
    required this.onPay,
    required this.onOpenCart,
    required this.onWriteReview,
    required this.onAskSupport,
    super.key,
  });

  final String number;
  final VoidCallback onAskSupport;
  final ValueChanged<String> onOpenParcel;
  final ValueChanged<String> onOpenProduct;
  final ValueChanged<ProductSummary> onOpenRecommended;
  final ValueChanged<OrderDetails> onPay;
  final VoidCallback onOpenCart;

  /// Opens «Написать отзыв» for an item; the order reloads afterwards.
  final Future<void> Function(String itemId) onWriteReview;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<OrderCubit>();
    return MultiBlocListener(
      listeners: [
        BlocListener<OrderCubit, OrderState>(
          listenWhen: (a, b) =>
              b.actionFailure != null && a.actionFailure != b.actionFailure,
          listener: (context, state) => showAppToast(
            context,
            message: orderFailureText(l10n, state.actionFailure!),
            icon: AppIcons.warning,
          ),
        ),
        BlocListener<OrderCubit, OrderState>(
          listenWhen: (a, b) => b.done != null && a.done != b.done,
          listener: (context, state) {
            switch (state.done) {
              case OrderAction.cancel:
                showAppToast(context, message: l10n.orderCancelled);
              case OrderAction.resolve:
                showAppToast(context, message: l10n.orderDecisionSent);
              case OrderAction.repeat:
                final repeated = state.repeated;
                if (repeated != null) {
                  addRepeatedToCart(context, repeated, onOpenCart: onOpenCart);
                }
              case null:
                break;
            }
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: context.colors.surface,
        appBar: AppBar(
          backgroundColor: context.colors.surface,
          title: Text(l10n.orderNumber(number)),
        ),
        body: BlocBuilder<OrderCubit, OrderState>(
          builder: (context, state) => RefreshIndicator(
            onRefresh: cubit.refresh,
            child: LoadableBody<OrderDetails>(
              data: state.order.data,
              failure: state.order.failure,
              onRetry: cubit.refresh,
              skeleton: const SkeletonList(itemCount: 3),
              builder: (order) => _OrderContent(
                state: state,
                order: order,
                onOpenParcel: onOpenParcel,
                onOpenProduct: onOpenProduct,
                onAskSupport: onAskSupport,
                onOpenRecommended: onOpenRecommended,
                onWriteReview: (itemId) async {
                  await onWriteReview(itemId);
                  await cubit.refresh();
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar: BlocBuilder<OrderCubit, OrderState>(
          buildWhen: (a, b) => a.order.data != b.order.data,
          builder: (context, state) {
            final order = state.order.data;
            if (order == null || !order.canPay || order.money.due <= 0) {
              return const SizedBox.shrink();
            }
            return StickyActionBar(
              leading: ActionBarTotal(amount: order.money.due),
              primary: PrimaryButton(
                label: l10n.checkoutPay(MoneyFormat.tmt(l10n, order.money.due)),
                onPressed: state.order.isFromCache ? null : () => onPay(order),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _OrderContent extends StatelessWidget {
  const _OrderContent({
    required this.state,
    required this.order,
    required this.onOpenParcel,
    required this.onOpenProduct,
    required this.onWriteReview,
    required this.onAskSupport,
    required this.onOpenRecommended,
  });

  final OrderState state;
  final OrderDetails order;
  final ValueChanged<String> onOpenParcel;
  final ValueChanged<String> onOpenProduct;
  final ValueChanged<String> onWriteReview;
  final VoidCallback onAskSupport;
  final ValueChanged<ProductSummary> onOpenRecommended;

  @override
  Widget build(BuildContext context) => ForYouPager(
    child: CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(top: AppSpacing.x4),
          sliver: SliverList.list(children: _details(context)),
        ),
        ForYouSlivers(
          title: context.l10n.orderRecommendations,
          onOpenProduct: onOpenRecommended,
        ),
      ],
    ),
  );

  List<Widget> _details(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<OrderCubit>();
    final fetchedAt = state.order.fetchedAt;
    return [
      if (state.order.isFromCache && fetchedAt != null)
        CachedNotice(fetchedAt: fetchedAt),
      OrderStatusHeader(order: order),
      for (final item in order.problems)
        ProblemCard(
          item: item,
          busyActionId: state.busyActionId,
          isEnabled: state.canChange,
          onAction: (actionId) =>
              cubit.resolve(itemId: item.id, actionId: actionId),
        ),
      OrderItemsCard(
        items: order.items,
        onOpenProduct: onOpenProduct,
        onWriteReview: onWriteReview,
      ),
      if (order.parcels.isNotEmpty)
        OrderParcelsCard(parcels: order.parcels, onOpenParcel: onOpenParcel),
      OrderDeliveryCard(order: order),
      OrderMoneyCard(money: order.money),
      if (order.history.isNotEmpty) OrderHistoryCard(history: order.history),
      if (order.canRepeat)
        Padding(
          padding: AppSpacing.screenPadding,
          child: SecondaryButton(
            label: l10n.ordersRepeat,
            icon: AppIcons.retry,
            isLoading: state.busy == OrderAction.repeat,
            onPressed: state.canChange ? cubit.repeat : null,
          ),
        ),
      Padding(
        padding: AppSpacing.screenPadding,
        child: SecondaryButton(
          label: l10n.orderAskSupport,
          icon: AppIcons.chat,
          onPressed: onAskSupport,
        ),
      ),
      OrderCancelFooter(
        order: order,
        isBusy: state.busy == OrderAction.cancel,
        onCancel: state.canChange
            ? () async {
                final reasonId = await showCancelOrderSheet(context, order);
                if (reasonId != null) await cubit.cancel(reasonId);
              }
            : null,
      ),
    ];
  }
}
