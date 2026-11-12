import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../domain/entities/order_status.dart';

/// Horizontal mini progress of a parcel's main path (UI_DESIGN §7.12):
/// passed stages filled, the current one orange with a halo.
class ParcelProgress extends StatelessWidget {
  const ParcelProgress({
    required this.stage,
    this.isCompact = false,
    super.key,
  });

  final ParcelStage stage;

  /// Smaller dots for list cards.
  final bool isCompact;

  static const double _dot = 28;
  static const double _compactDot = 20;
  static const double _line = 2;

  static IconData iconOf(ParcelStage stage) => switch (stage) {
    ParcelStage.forming => AppIcons.forming,
    ParcelStage.surcharge => AppIcons.scales,
    ParcelStage.inTransit => AppIcons.inTransit,
    ParcelStage.customs => AppIcons.customs,
    ParcelStage.arrived => AppIcons.arrived,
    ParcelStage.handover => AppIcons.handover,
    ParcelStage.delivered => AppIcons.statusDelivered,
  };

  static String labelOf(AppLocalizations l10n, ParcelStage stage) =>
      switch (stage) {
        ParcelStage.forming => l10n.parcelStageForming,
        ParcelStage.surcharge => l10n.parcelStageSurcharge,
        ParcelStage.inTransit => l10n.parcelStageInTransit,
        ParcelStage.customs => l10n.parcelStageCustoms,
        ParcelStage.arrived => l10n.parcelStageArrived,
        ParcelStage.handover => l10n.parcelStageHandover,
        ParcelStage.delivered => l10n.parcelStageDelivered,
      };

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final size = isCompact ? _compactDot : _dot;
    final current = stage.index;
    return Semantics(
      label: l10n.parcelProgressSpoken(
        '${current + 1}',
        '${ParcelStage.values.length}',
        labelOf(l10n, stage),
      ),
      excludeSemantics: true,
      child: Row(
        children: [
          for (final s in ParcelStage.values) ...[
            if (s.index > 0)
              Expanded(
                child: Container(
                  height: _line,
                  color: s.index <= current ? c.primary : c.divider,
                ),
              ),
            _StageDot(
              icon: iconOf(s),
              size: size,
              isDone: s.index < current,
              isCurrent: s.index == current,
            ),
          ],
        ],
      ),
    );
  }
}

class _StageDot extends StatelessWidget {
  const _StageDot({
    required this.icon,
    required this.size,
    required this.isDone,
    required this.isCurrent,
  });

  final IconData icon;
  final double size;
  final bool isDone;
  final bool isCurrent;

  static const double _iconRatio = 0.55;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final background = isCurrent
        ? c.primary
        : isDone
        ? c.primarySoft
        : c.surface;
    final foreground = isCurrent
        ? c.onPrimary
        : isDone
        ? c.primary
        : c.inkTertiary;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: background,
        shape: BoxShape.circle,
        boxShadow: isCurrent
            ? [
                BoxShadow(
                  color: c.primary.withValues(alpha: AppOpacity.tint * 2),
                  spreadRadius: AppSpacing.x4,
                ),
              ]
            : null,
      ),
      child: Icon(icon, size: size * _iconRatio, color: foreground),
    );
  }
}
