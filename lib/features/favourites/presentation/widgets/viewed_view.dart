import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/viewed/viewed_product.dart';
import '../../../../core/widgets/widgets.dart';
import '../bloc/viewed_cubit.dart';

/// «Просмотренные» (UI_DESIGN §7.17): rows grouped by day, «Очистить
/// историю» in the app bar menu, swipe a row away to forget it.
class ViewedView extends StatelessWidget {
  const ViewedView({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    this.now,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;

  /// Clock for «Сегодня / Вчера»; tests pass a fixed one.
  final DateTime? now;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<ViewedCubit, ViewedState>(
      builder: (context, state) => Scaffold(
        backgroundColor: context.colors.background,
        appBar: AppBar(
          title: Text(l10n.profileViewed),
          actions: [if (state.items.isNotEmpty) const _ClearMenu()],
        ),
        body: switch (state) {
          ViewedState(isLoading: true) => const SkeletonList(),
          ViewedState(items: []) => Center(
            child: SingleChildScrollView(
              child: EmptyState(
                icon: AppIcons.viewed,
                title: l10n.viewedEmptyTitle,
                message: l10n.viewedEmptyText,
                actionLabel: l10n.actionGoToCatalog,
                onAction: onOpenCatalog,
              ),
            ),
          ),
          ViewedState(:final items) => _ViewedList(
            items: items,
            now: now ?? DateTime.now(),
            onOpenProduct: onOpenProduct,
          ),
        },
      ),
    );
  }
}

class _ClearMenu extends StatelessWidget {
  const _ClearMenu();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PopupMenuButton<void>(
      icon: const Icon(AppIcons.more),
      tooltip: l10n.viewedMenu,
      itemBuilder: (_) => [
        PopupMenuItem(
          onTap: () => _confirmClear(context),
          child: Row(
            children: [
              Icon(AppIcons.clearHistory, color: context.colors.ink),
              const SizedBox(width: AppSpacing.x12),
              Flexible(child: Text(l10n.viewedClear)),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _confirmClear(BuildContext context) async {
    final l10n = context.l10n;
    final cubit = context.read<ViewedCubit>();
    final isConfirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.viewedClearTitle),
        content: Text(l10n.viewedClearText),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.actionCancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.viewedClearConfirm),
          ),
        ],
      ),
    );
    if (isConfirmed ?? false) await cubit.clear();
  }
}

class _ViewedList extends StatelessWidget {
  const _ViewedList({
    required this.items,
    required this.now,
    required this.onOpenProduct,
  });

  final List<ViewedProduct> items;
  final DateTime now;
  final ValueChanged<ProductSummary> onOpenProduct;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // Items are newest first, so each day is one run.
    final rows = <Object>[];
    String? day;
    for (final item in items) {
      final label = AppDates.dayLabel(l10n, item.viewedAt, now);
      if (label != day) rows.add(label);
      day = label;
      rows.add(item);
    }
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: AppSpacing.section),
      itemCount: rows.length,
      itemBuilder: (context, i) => switch (rows[i]) {
        final String label => _DayHeader(label: label),
        final ViewedProduct item => _ViewedRow(
          key: ValueKey(item.product.id),
          item: item,
          onOpen: () => onOpenProduct(item.product),
        ),
        _ => const SizedBox.shrink(),
      },
    );
  }
}

class _DayHeader extends StatelessWidget {
  const _DayHeader({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(
      AppSpacing.screen,
      AppSpacing.x16,
      AppSpacing.screen,
      AppSpacing.x4,
    ),
    child: Semantics(header: true, child: Text(label, style: context.text.h3)),
  );
}

class _ViewedRow extends StatelessWidget {
  const _ViewedRow({required this.item, required this.onOpen, super.key});

  final ViewedProduct item;
  final VoidCallback onOpen;

  static const double _image = 72;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final product = item.product;
    return Dismissible(
      key: ValueKey('viewed-${product.id}'),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => context.read<ViewedCubit>().remove(product.id),
      background: Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.x24),
        color: c.danger,
        child: Semantics(
          label: context.l10n.actionRemove,
          child: Icon(AppIcons.delete, color: c.onPrimary),
        ),
      ),
      child: InkWell(
        onTap: onOpen,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screen,
            vertical: AppSpacing.x8,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: SizedBox.square(
                  dimension: _image,
                  child: AppNetworkImage(
                    url: product.imageUrl,
                    semanticLabel: product.title,
                  ),
                ),
              ),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.body,
                    ),
                    const SizedBox(height: AppSpacing.x4),
                    PriceTag(
                      price: product.price,
                      oldPrice: product.oldPrice,
                      size: PriceTagSize.s,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
