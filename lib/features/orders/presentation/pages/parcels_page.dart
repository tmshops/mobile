import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/parcel.dart';
import '../bloc/loadable.dart';
import '../bloc/parcel_cubits.dart';
import '../widgets/orders_common.dart';
import '../widgets/parcel_progress.dart';

/// «Мои посылки» (TZ §5.15).
class ParcelsPage extends StatelessWidget {
  const ParcelsPage({required this.onOpenParcel, super.key});

  final ValueChanged<String> onOpenParcel;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) =>
        getIt<ParcelsCubit>()
          ..load(context.read<LocaleCubit>().state.languageCode),
    child: ParcelsView(onOpenParcel: onOpenParcel),
  );
}

class ParcelsView extends StatelessWidget {
  const ParcelsView({required this.onOpenParcel, super.key});

  final ValueChanged<String> onOpenParcel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cubit = context.read<ParcelsCubit>();
    return Scaffold(
      backgroundColor: context.colors.surface,
      appBar: AppBar(
        backgroundColor: context.colors.surface,
        title: Text(l10n.parcelsTitle),
      ),
      body: BlocBuilder<ParcelsCubit, Loadable<List<ParcelSummary>>>(
        builder: (context, state) => RefreshIndicator(
          onRefresh: cubit.refresh,
          child: LoadableBody<List<ParcelSummary>>(
            data: state.data,
            failure: state.failure,
            onRetry: cubit.refresh,
            skeleton: const SkeletonList(),
            builder: (parcels) {
              final fetchedAt = state.fetchedAt;
              if (parcels.isEmpty) {
                return ListView(
                  children: [
                    EmptyState(
                      icon: AppIcons.package,
                      title: l10n.parcelsEmpty,
                      message: l10n.parcelsEmptyText,
                    ),
                  ],
                );
              }
              return ListView(
                padding: const EdgeInsets.only(
                  top: AppSpacing.x4,
                  bottom: AppSpacing.x24,
                ),
                children: [
                  if (state.isFromCache && fetchedAt != null)
                    CachedNotice(fetchedAt: fetchedAt),
                  for (final parcel in parcels)
                    _ParcelCard(
                      parcel: parcel,
                      onTap: () => onOpenParcel(parcel.number),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ParcelCard extends StatelessWidget {
  const _ParcelCard({required this.parcel, required this.onTap});

  final ParcelSummary parcel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final (from, to) = (parcel.etaFrom, parcel.etaTo);
    return ContentCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  l10n.parcelNumber(parcel.number),
                  style: context.text.h3,
                ),
              ),
              Flexible(child: OrderStatusChip(status: parcel.status)),
            ],
          ),
          const SizedBox(height: AppSpacing.x16),
          ParcelProgress(stage: parcel.stage, isCompact: true),
          const SizedBox(height: AppSpacing.x16),
          Row(
            children: [
              ThumbStack(urls: parcel.previews, total: parcel.itemCount),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Text(
                  from != null && to != null
                      ? l10n.parcelEta(AppDates.range(l10n, from, to))
                      : l10n.ordersItemCount(parcel.itemCount),
                  textAlign: TextAlign.end,
                  style: context.text.caption.copyWith(color: c.inkSecondary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
