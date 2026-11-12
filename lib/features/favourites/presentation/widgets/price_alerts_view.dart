import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/price_alerts/price_alert.dart';
import '../../../../core/price_alerts/price_alerts_cubit.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/money_format.dart';
import '../../../../core/widgets/widgets.dart';

/// «Подписки на снижение цены» (UI_DESIGN §7.17): price when subscribed →
/// today's price, and a switch. Expects the global [PriceAlertsCubit].
class PriceAlertsView extends StatelessWidget {
  const PriceAlertsView({
    required this.onOpenProduct,
    required this.onOpenCatalog,
    super.key,
  });

  final ValueChanged<ProductSummary> onOpenProduct;
  final VoidCallback onOpenCatalog;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<PriceAlertsCubit>();
    Future<void> reload() =>
        cubit.load(context.read<LocaleCubit>().state.languageCode);
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(title: Text(l10n.profilePriceAlerts)),
      body: BlocBuilder<PriceAlertsCubit, PriceAlertsState>(
        builder: (context, state) {
          final failure = state.failure;
          if (state.items.isEmpty) {
            return switch (state.status) {
              PriceAlertsStatus.initial ||
              PriceAlertsStatus.loading => const SkeletonList(),
              PriceAlertsStatus.failure when failure != null => Center(
                child: SingleChildScrollView(
                  child: FailureView(failure: failure, onRetry: reload),
                ),
              ),
              _ => Center(
                child: SingleChildScrollView(
                  child: EmptyState(
                    icon: AppIcons.priceAlert,
                    title: l10n.priceAlertsEmptyTitle,
                    message: l10n.priceAlertsEmptyText,
                    actionLabel: l10n.actionGoToCatalog,
                    onAction: onOpenCatalog,
                  ),
                ),
              ),
            };
          }
          return RefreshIndicator(
            onRefresh: reload,
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: AppSpacing.section),
              itemCount: state.items.length,
              separatorBuilder: (_, _) => Divider(
                height: AppSizes.hairline,
                indent: AppSpacing.screen,
                color: context.colors.divider,
              ),
              itemBuilder: (context, i) {
                final alert = state.items[i];
                return PriceAlertRow(
                  key: ValueKey(alert.id),
                  alert: alert,
                  isBusy: state.busyIds.contains(alert.id),
                  onOpen: () => onOpenProduct(alert.product),
                  onToggle: () => _toggle(context, alert),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Future<void> _toggle(BuildContext context, PriceAlert alert) async {
    final l10n = context.l10n;
    final result = await context.read<PriceAlertsCubit>().toggle(
      context.read<LocaleCubit>().state.languageCode,
      alert.product,
    );
    if (!context.mounted) return;
    result.match(
      (failure) => showAppToast(
        context,
        message: actionFailureText(l10n, failure),
        icon: AppIcons.warning,
      ),
      (isOn) {
        if (isOn == null) {
          showAppToast(context, message: l10n.productNotFoundTitle);
        }
      },
    );
  }
}

/// Image, title, today's price with the drop, price at subscribing, switch.
class PriceAlertRow extends StatelessWidget {
  const PriceAlertRow({
    required this.alert,
    required this.isBusy,
    required this.onOpen,
    required this.onToggle,
    super.key,
  });

  final PriceAlert alert;
  final bool isBusy;
  final VoidCallback onOpen;
  final VoidCallback onToggle;

  static const double _image = 64;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final product = alert.product;
    final drop = alert.hasDropped
        ? ((alert.subscribedPrice - product.price) *
                  100 /
                  alert.subscribedPrice)
              .round()
        : null;
    return InkWell(
      onTap: onOpen,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.screen,
          AppSpacing.x12,
          AppSpacing.x8,
          AppSpacing.x12,
        ),
        child: Row(
          children: [
            Opacity(
              opacity: alert.isOn ? 1 : AppOpacity.disabled,
              child: ClipRRect(
                borderRadius: AppRadii.imageBorder,
                child: SizedBox.square(
                  dimension: _image,
                  child: AppNetworkImage(
                    url: product.imageUrl,
                    semanticLabel: product.title,
                  ),
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
                  Wrap(
                    spacing: AppSpacing.x8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        MoneyFormat.tmt(l10n, product.price),
                        style: context.text.bodyStrong,
                      ),
                      if (drop != null && drop > 0)
                        SmallPill(
                          label: l10n.priceAlertsDrop(drop),
                          background: c.success,
                          foreground: c.onPrimary,
                        ),
                    ],
                  ),
                  Text(
                    l10n.priceAlertsSubscribedAt(
                      MoneyFormat.tmt(l10n, alert.subscribedPrice),
                    ),
                    style: context.text.caption.copyWith(color: c.inkSecondary),
                  ),
                ],
              ),
            ),
            Semantics(
              label: l10n.priceAlertsSwitch(product.title),
              child: Switch(
                value: alert.isOn,
                onChanged: isBusy ? null : (_) => onToggle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
