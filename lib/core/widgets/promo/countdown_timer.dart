import 'dart:async';

import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import '../status/status_tone.dart';

/// Live countdown chip for «Скидки дня» and payment deadlines.
///
/// Shows `04:15:09`, or `2 д 04:15:09` when more than a day is left.
class CountdownTimer extends StatefulWidget {
  const CountdownTimer({
    required this.endsAt,
    this.tone = StatusTone.danger,
    this.onFinished,
    this.now = DateTime.now,
    super.key,
  });

  final DateTime endsAt;
  final StatusTone tone;
  final VoidCallback? onFinished;

  /// Clock override for tests.
  final DateTime Function() now;

  /// `hh:mm:ss`, with days split off by the caller.
  static String formatClock(Duration left) {
    String two(int v) => v.toString().padLeft(2, '0');
    final hours = left.inHours % Duration.hoursPerDay;
    final minutes = left.inMinutes % Duration.minutesPerHour;
    final seconds = left.inSeconds % Duration.secondsPerMinute;
    return '${two(hours)}:${two(minutes)}:${two(seconds)}';
  }

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  static const _tick = Duration(seconds: 1);

  Timer? _timer;
  late Duration _left = _remaining();

  Duration _remaining() {
    final left = widget.endsAt.difference(widget.now());
    return left.isNegative ? Duration.zero : left;
  }

  @override
  void initState() {
    super.initState();
    if (_left > Duration.zero) {
      _timer = Timer.periodic(_tick, (_) => _onTick());
    }
  }

  @override
  void didUpdateWidget(CountdownTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.endsAt == widget.endsAt) return;
    _timer?.cancel();
    _left = _remaining();
    if (_left > Duration.zero) {
      _timer = Timer.periodic(_tick, (_) => _onTick());
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _onTick() {
    final left = _remaining();
    setState(() => _left = left);
    if (left == Duration.zero) {
      _timer?.cancel();
      widget.onFinished?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final clock = CountdownTimer.formatClock(_left);
    final days = _left.inDays;
    final text = days > 0 ? context.l10n.countdownWithDays(days, clock) : clock;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: widget.tone.color(c),
        borderRadius: AppRadii.badgeBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.x8,
          vertical: AppSpacing.x2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(AppIcons.clock, size: AppSizes.iconSmall, color: c.onPrimary),
            const SizedBox(width: AppSpacing.x4),
            // Digits must not wrap; in a tight header they shrink instead.
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  maxLines: 1,
                  style: context.text.bodyStrong.copyWith(
                    color: c.onPrimary,
                    fontWeight: FontWeight.w700,
                    fontFeatures: AppTypography.tabularFigures,
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
