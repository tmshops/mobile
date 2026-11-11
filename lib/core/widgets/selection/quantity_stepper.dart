import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// − value + control. Buttons disable at [min] / [max]; holding a button
/// repeats the step.
class QuantityStepper extends StatefulWidget {
  const QuantityStepper({
    required this.value,
    required this.onChanged,
    this.min = 1,
    this.max = 99,
    super.key,
  }) : assert(min <= max, 'min must not exceed max');

  final int value;
  final ValueChanged<int> onChanged;
  final int min;
  final int max;

  @override
  State<QuantityStepper> createState() => _QuantityStepperState();
}

class _QuantityStepperState extends State<QuantityStepper> {
  static const _repeatDelay = Duration(milliseconds: 100);
  static const double _valueWidth = 36;

  Timer? _repeat;

  // Tracks the value during a long press, before the parent rebuilds us.
  late int _current = widget.value;

  @override
  void didUpdateWidget(QuantityStepper oldWidget) {
    super.didUpdateWidget(oldWidget);
    _current = widget.value;
  }

  @override
  void dispose() {
    _repeat?.cancel();
    super.dispose();
  }

  bool _canStep(int delta) {
    final next = _current + delta;
    return next >= widget.min && next <= widget.max;
  }

  void _step(int delta) {
    if (!_canStep(delta)) {
      _stopRepeat();
      return;
    }
    _current += delta;
    HapticFeedback.selectionClick();
    widget.onChanged(_current);
  }

  void _startRepeat(int delta) {
    _repeat?.cancel();
    _repeat = Timer.periodic(_repeatDelay, (_) => _step(delta));
  }

  void _stopRepeat() {
    _repeat?.cancel();
    _repeat = null;
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.surface,
        borderRadius: AppRadii.buttonBorder,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _StepButton(
            icon: AppIcons.minus,
            semanticLabel: l10n.quantityDecrease,
            isEnabled: widget.value > widget.min,
            onTap: () => _step(-1),
            onLongPressStart: () => _startRepeat(-1),
            onLongPressEnd: _stopRepeat,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: _valueWidth),
            child: Text(
              '${widget.value}',
              textAlign: TextAlign.center,
              style: context.text.bodyStrong.copyWith(
                fontFeatures: AppTypography.tabularFigures,
              ),
            ),
          ),
          _StepButton(
            icon: AppIcons.plus,
            semanticLabel: l10n.quantityIncrease,
            isEnabled: widget.value < widget.max,
            onTap: () => _step(1),
            onLongPressStart: () => _startRepeat(1),
            onLongPressEnd: _stopRepeat,
          ),
        ],
      ),
    );
  }
}

class _StepButton extends StatelessWidget {
  const _StepButton({
    required this.icon,
    required this.semanticLabel,
    required this.isEnabled,
    required this.onTap,
    required this.onLongPressStart,
    required this.onLongPressEnd,
  });

  final IconData icon;
  final String semanticLabel;
  final bool isEnabled;
  final VoidCallback onTap;
  final VoidCallback onLongPressStart;
  final VoidCallback onLongPressEnd;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      button: true,
      enabled: isEnabled,
      label: semanticLabel,
      excludeSemantics: true,
      child: GestureDetector(
        onLongPressStart: isEnabled ? (_) => onLongPressStart() : null,
        onLongPressEnd: (_) => onLongPressEnd(),
        onLongPressCancel: onLongPressEnd,
        child: InkResponse(
          onTap: isEnabled ? onTap : null,
          radius: AppSizes.touchTarget / 2,
          child: SizedBox.square(
            dimension: AppSizes.touchTarget,
            child: Icon(
              icon,
              size: AppSizes.iconDense,
              color: isEnabled ? c.ink : c.inkTertiary,
            ),
          ),
        ),
      ),
    );
  }
}
