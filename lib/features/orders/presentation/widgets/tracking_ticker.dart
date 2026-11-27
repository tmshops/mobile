import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/app_dates.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/orders_feed.dart';

/// Latest move of what is on its way: photo, status, time, text and
/// «Смотреть». With several updates it turns to the next one every few
/// seconds (UI_DESIGN §7.11).
class TrackingTicker extends StatefulWidget {
  const TrackingTicker({
    required this.updates,
    required this.onOpen,
    this.now = DateTime.now,
    super.key,
  });

  final List<TrackingUpdate> updates;
  final ValueChanged<TrackingUpdate> onOpen;

  /// Clock for «today»: the time alone, otherwise the date.
  final DateTime Function() now;

  static const period = Duration(seconds: 3);

  @override
  State<TrackingTicker> createState() => _TrackingTickerState();
}

class _TrackingTickerState extends State<TrackingTicker> {
  Timer? _timer;
  int _index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _restart();
  }

  @override
  void didUpdateWidget(TrackingTicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_index >= widget.updates.length) _index = 0;
    if (oldWidget.updates.length != widget.updates.length) _restart();
  }

  void _restart() {
    _timer?.cancel();
    _timer = null;
    // A screen reader user moves at their own pace: keep the line still.
    if (widget.updates.length < 2 ||
        MediaQuery.accessibleNavigationOf(context)) {
      return;
    }
    _timer = Timer.periodic(TrackingTicker.period, (_) {
      setState(() => _index = (_index + 1) % widget.updates.length);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.updates.isEmpty) return const SizedBox.shrink();
    final update = widget.updates[_index];
    return AnimatedSwitcher(
      duration: AppMotion.of(context, AppMotion.slow),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: Tween(
            begin: const Offset(0, 0.4),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
      ),
      child: _TrackingRow(
        key: ValueKey('${update.kind.name}:${update.number}:$_index'),
        update: update,
        now: widget.now(),
        onOpen: () => widget.onOpen(update),
      ),
    );
  }
}

class _TrackingRow extends StatelessWidget {
  const _TrackingRow({
    required this.update,
    required this.now,
    required this.onOpen,
    super.key,
  });

  final TrackingUpdate update;
  final DateTime now;
  final VoidCallback onOpen;

  static const double _image = 48;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    final at = update.at;
    final isToday =
        at.year == now.year && at.month == now.month && at.day == now.day;
    final when = isToday ? AppDates.time(at) : AppDates.dayMonth(l10n, at);
    // White on the grey profile card.
    return Material(
      color: c.background,
      borderRadius: AppRadii.imageBorder,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onOpen,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.x8),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: AppRadii.badgeBorder,
                child: SizedBox.square(
                  dimension: _image,
                  child: AppNetworkImage(url: update.imageUrl),
                ),
              ),
              const SizedBox(width: AppSpacing.x12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: update.status.title,
                            style: context.text.bodyStrong,
                          ),
                          TextSpan(
                            text: '  $when',
                            style: context.text.caption.copyWith(
                              color: c.inkSecondary,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      update.text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.x8),
              _OpenPill(label: l10n.ordersTrackingOpen),
            ],
          ),
        ),
      ),
    );
  }
}

/// Outlined orange pill; the whole row is the tap target.
class _OpenPill extends StatelessWidget {
  const _OpenPill({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return ExcludeSemantics(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x12,
          vertical: AppSpacing.x4,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: c.primary),
          borderRadius: AppRadii.chipBorder,
        ),
        child: Text(
          label,
          style: context.text.caption.copyWith(
            color: c.primaryPressed,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
