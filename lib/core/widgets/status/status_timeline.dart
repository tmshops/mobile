import 'package:flutter/material.dart';

import '../../theme/theme.dart';

enum TimelineStepState { done, current, upcoming }

@immutable
class TimelineStep {
  const TimelineStep({
    required this.title,
    required this.state,
    required this.icon,
    this.date,
  });

  final String title;

  /// Already formatted, e.g. «24 ноября, 14:05».
  final String? date;
  final TimelineStepState state;
  final IconData icon;
}

/// Vertical order / parcel progress: done = green, current = orange with a
/// pulsing halo and bold title, upcoming = grey.
class StatusTimeline extends StatelessWidget {
  const StatusTimeline({required this.steps, super.key});

  final List<TimelineStep> steps;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < steps.length; i++)
          _TimelineRow(step: steps[i], isLast: i == steps.length - 1),
      ],
    );
  }
}

class _TimelineRow extends StatelessWidget {
  const _TimelineRow({required this.step, required this.isLast});

  final TimelineStep step;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final date = step.date;
    final titleStyle = switch (step.state) {
      TimelineStepState.done => t.body,
      TimelineStepState.current => t.bodyStrong,
      TimelineStepState.upcoming => t.body.copyWith(color: c.inkTertiary),
    };

    // IntrinsicHeight lets the connector line stretch to the text height,
    // which grows with Turkmen text and large font scales.
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: AppSizes.timelineDot,
            child: Column(
              children: [
                _StepDot(step: step),
                if (!isLast)
                  Expanded(
                    child: Container(
                      width: AppSizes.selectedBorder,
                      margin: const EdgeInsets.symmetric(
                        vertical: AppSpacing.x4,
                      ),
                      color: step.state == TimelineStepState.done
                          ? c.success
                          : c.divider,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.x4,
                bottom: isLast ? 0 : AppSpacing.x20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(step.title, style: titleStyle),
                  if (date != null)
                    Text(
                      date,
                      style: t.caption.copyWith(color: c.inkSecondary),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StepDot extends StatelessWidget {
  const _StepDot({required this.step});

  final TimelineStep step;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return switch (step.state) {
      TimelineStepState.done => _Dot(
        background: c.success,
        icon: AppIcons.check,
        iconColor: c.onPrimary,
      ),
      TimelineStepState.current => _PulsingHalo(
        child: _Dot(
          background: c.primary,
          icon: step.icon,
          iconColor: c.onPrimary,
        ),
      ),
      TimelineStepState.upcoming => _Dot(
        background: c.surface,
        icon: step.icon,
        iconColor: c.inkTertiary,
      ),
    };
  }
}

class _Dot extends StatelessWidget {
  const _Dot({
    required this.background,
    required this.icon,
    required this.iconColor,
  });

  final Color background;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.timelineDot,
      height: AppSizes.timelineDot,
      decoration: BoxDecoration(color: background, shape: BoxShape.circle),
      child: Icon(icon, size: AppSizes.iconSmall, color: iconColor),
    );
  }
}

/// Soft orange ring that breathes around the current step.
class _PulsingHalo extends StatefulWidget {
  const _PulsingHalo({required this.child});

  final Widget child;

  @override
  State<_PulsingHalo> createState() => _PulsingHaloState();
}

class _PulsingHaloState extends State<_PulsingHalo>
    with SingleTickerProviderStateMixin {
  static const double _maxSpread = 6;

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: AppMotion.pulse,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (AppMotion.isReduced(context)) {
      _controller.value = 1;
      _controller.stop();
    } else if (!_controller.isAnimating) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final halo = context.colors.primarySoft;
    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        final spread =
            _maxSpread * Curves.easeInOut.transform(_controller.value);
        return DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: halo, spreadRadius: spread)],
          ),
          child: child,
        );
      },
    );
  }
}
