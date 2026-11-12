import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/external_links.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/info.dart';
import '../bloc/info_cubits.dart';
import 'info_common.dart';

/// «Пункты выдачи»: points grouped by region, each with address, hours,
/// phone and «Маршрут». Expects [PickupPointsCubit].
class PickupPointsView extends StatelessWidget {
  const PickupPointsView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<PickupPointsCubit>();
    return Scaffold(
      backgroundColor: c.surface,
      appBar: AppBar(
        backgroundColor: c.surface,
        title: Text(InfoTopic.pickupPoints.title(l10n)),
      ),
      body: BlocBuilder<PickupPointsCubit, InfoState<List<PickupPointInfo>>>(
        builder: (context, state) => InfoBody<List<PickupPointInfo>>(
          isLoading: state.isLoading,
          data: state.data,
          failure: state.failure,
          onRefresh: () =>
              cubit.load(context.read<LocaleCubit>().state.languageCode),
          builder: (context, points) => points.isEmpty
              ? ListView(
                  children: [
                    EmptyState(
                      icon: AppIcons.mapPin,
                      title: l10n.infoPointsEmpty,
                    ),
                  ],
                )
              : ListView(
                  padding: const EdgeInsets.only(
                    top: AppSpacing.x8,
                    bottom: AppSpacing.section,
                  ),
                  children: [
                    for (final (region, inRegion) in pickupPointsByRegion(
                      points,
                    )) ...[
                      GroupHeader(region),
                      for (final point in inRegion)
                        _PointCard(key: ValueKey(point.id), point: point),
                    ],
                  ],
                ),
        ),
      ),
    );
  }
}

class _PointCard extends StatelessWidget {
  const _PointCard({required this.point, super.key});

  final PickupPointInfo point;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ContentCard(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.x16,
        AppSpacing.x16,
        AppSpacing.x16,
        AppSpacing.x8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(point.name, style: context.text.h3),
          const SizedBox(height: AppSpacing.x4),
          InfoLine(icon: AppIcons.mapPin, text: point.address),
          InfoLine(icon: AppIcons.clock, text: point.hours),
          InfoLine(
            icon: AppIcons.phone,
            text: point.phone,
            semanticsHint: l10n.infoCall,
            onTap: () => ExternalLinks.call(context, point.phone),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TertiaryButton(
              label: l10n.infoRoute,
              icon: AppIcons.map,
              onPressed: () => ExternalLinks.map(context, point.address),
            ),
          ),
        ],
      ),
    );
  }
}
