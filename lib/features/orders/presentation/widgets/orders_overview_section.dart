import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/orders_feed.dart';
import '../bloc/loadable.dart';
import '../bloc/orders_feed_cubits.dart';
import 'tracking_ticker.dart';

/// «Мои заказы» card for the profile: «Все ›», five filters with counters
/// and the rotating tracking line (UI_DESIGN §7.11). Builds its own
/// [OrdersOverviewCubit].
class OrdersOverviewSection extends StatelessWidget {
  const OrdersOverviewSection({
    required this.onOpenAll,
    required this.onOpenFilter,
    required this.onOpenTracking,
    super.key,
  });

  /// Each completes when the user comes back; the counters reload then,
  /// since a payment or a review moves orders between filters.
  final Future<void> Function() onOpenAll;
  final Future<void> Function(OrdersFilter filter) onOpenFilter;
  final Future<void> Function(TrackingUpdate update) onOpenTracking;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<OrdersOverviewCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: BlocListener<LocaleCubit, Locale>(
      listener: (context, locale) =>
          context.read<OrdersOverviewCubit>().load(locale.languageCode),
      child: BlocBuilder<OrdersOverviewCubit, Loadable<OrdersOverview>>(
        builder: (context, state) => OrdersOverviewCard(
          overview: state.data,
          onOpenAll: () => _reloadAfter(context, onOpenAll()),
          onOpenFilter: (f) => _reloadAfter(context, onOpenFilter(f)),
          onOpenTracking: (u) => _reloadAfter(context, onOpenTracking(u)),
        ),
      ),
    ),
  );

  static Future<void> _reloadAfter(
    BuildContext context,
    Future<void> opened,
  ) async {
    final cubit = context.read<OrdersOverviewCubit>();
    final languageCode = context.read<LocaleCubit>().state.languageCode;
    await opened;
    if (!cubit.isClosed) await cubit.load(languageCode);
  }
}

/// The card itself; [overview] is `null` until the first answer, and the
/// filters work without counters meanwhile.
class OrdersOverviewCard extends StatelessWidget {
  const OrdersOverviewCard({
    required this.overview,
    required this.onOpenAll,
    required this.onOpenFilter,
    required this.onOpenTracking,
    super.key,
  });

  final OrdersOverview? overview;
  final VoidCallback onOpenAll;
  final ValueChanged<OrdersFilter> onOpenFilter;
  final ValueChanged<TrackingUpdate> onOpenTracking;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tracking = overview?.tracking ?? const <TrackingUpdate>[];
    return ContentCard(
      // Grey like the menu groups on the white profile.
      color: context.colors.surface,
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.x16,
        AppSpacing.x4,
        AppSpacing.x4,
        AppSpacing.x12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Semantics(
                  header: true,
                  child: Text(l10n.ordersTitle, style: context.text.h3),
                ),
              ),
              TertiaryButton(label: l10n.actionSeeAll, onPressed: onOpenAll),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: AppSpacing.x12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final filter in OrdersFilter.values)
                  Expanded(
                    child: _FilterButton(
                      filter: filter,
                      count: overview?.countOf(filter) ?? 0,
                      onTap: () => onOpenFilter(filter),
                    ),
                  ),
              ],
            ),
          ),
          if (tracking.isNotEmpty)
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: AppSpacing.x12,
                end: AppSpacing.x12,
              ),
              child: TrackingTicker(updates: tracking, onOpen: onOpenTracking),
            ),
        ],
      ),
    );
  }
}

/// Label of [filter], shared by the profile card and the filter chips.
String ordersFilterLabel(AppLocalizations l10n, OrdersFilter filter) =>
    switch (filter) {
      OrdersFilter.awaitingPayment => l10n.ordersFilterAwaitingPayment,
      OrdersFilter.buying => l10n.ordersFilterBuying,
      OrdersFilter.inTransit => l10n.ordersFilterInTransit,
      OrdersFilter.toReview => l10n.ordersFilterToReview,
      OrdersFilter.problems => l10n.ordersFilterProblems,
    };

class _FilterButton extends StatelessWidget {
  const _FilterButton({
    required this.filter,
    required this.count,
    required this.onTap,
  });

  final OrdersFilter filter;
  final int count;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final label = ordersFilterLabel(l10n, filter);
    final icon = switch (filter) {
      OrdersFilter.awaitingPayment => AppIcons.wallet,
      OrdersFilter.buying => AppIcons.statusBought,
      OrdersFilter.inTransit => AppIcons.deliveryTruck,
      OrdersFilter.toReview => AppIcons.chat,
      OrdersFilter.problems => AppIcons.problem,
    };
    return Semantics(
      button: true,
      label: count > 0 ? l10n.ordersFilterSpoken(label, count) : label,
      excludeSemantics: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.imageBorder,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.x8),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(icon, size: AppSizes.icon, color: c.ink),
                  if (count > 0)
                    PositionedDirectional(
                      top: -AppSpacing.x8,
                      start: AppSizes.icon - AppSpacing.x8,
                      child: CountBadge(count: count),
                    ),
                ],
              ),
              const SizedBox(height: AppSpacing.x8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: context.text.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
