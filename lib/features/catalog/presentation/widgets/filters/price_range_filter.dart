import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/l10n/l10n.dart';
import '../../../../../core/theme/theme.dart';
import '../../../../../core/widgets/widgets.dart';
import '../../../domain/entities/facet.dart';
import '../../../domain/entities/product_query.dart';

/// Price slider plus «От» / «До» inputs that stay in sync.
///
/// A bound equal to the facet's own min or max is sent as open (`null`),
/// so moving a thumb back to the end removes that part of the filter.
class PriceRangeFilter extends StatefulWidget {
  const PriceRangeFilter({
    required this.facet,
    required this.value,
    required this.onChanged,
    super.key,
  });

  final RangeFacet facet;
  final PriceRange value;
  final ValueChanged<PriceRange> onChanged;

  @override
  State<PriceRangeFilter> createState() => _PriceRangeFilterState();
}

class _PriceRangeFilterState extends State<PriceRangeFilter> {
  late final _minController = TextEditingController();
  late final _maxController = TextEditingController();
  late RangeValues _values;

  double get _lo => widget.facet.min.toDouble();
  double get _hi => widget.facet.max.toDouble();

  @override
  void initState() {
    super.initState();
    _syncFromWidget();
  }

  @override
  void didUpdateWidget(PriceRangeFilter oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Bounds move as other filters change; the picked range follows.
    if (oldWidget.facet != widget.facet || oldWidget.value != widget.value) {
      _syncFromWidget();
    }
  }

  @override
  void dispose() {
    _minController.dispose();
    _maxController.dispose();
    super.dispose();
  }

  void _syncFromWidget() {
    final start = (widget.value.min?.toDouble() ?? _lo).clamp(_lo, _hi);
    final end = (widget.value.max?.toDouble() ?? _hi).clamp(start, _hi);
    _values = RangeValues(start, end);
    _setText(_minController, widget.value.min);
    _setText(_maxController, widget.value.max);
  }

  static void _setText(TextEditingController controller, int? value) {
    final text = value?.toString() ?? '';
    if (controller.text != text) controller.text = text;
  }

  void _emitFromSlider(RangeValues values) {
    final min = values.start.round();
    final max = values.end.round();
    widget.onChanged(
      PriceRange(
        min: min <= widget.facet.min ? null : min,
        max: max >= widget.facet.max ? null : max,
      ),
    );
  }

  void _emitFromFields() {
    int? parse(TextEditingController c) => int.tryParse(c.text.trim());
    final min = parse(_minController);
    final max = parse(_maxController);
    // Typed in reverse order: swap rather than show nothing.
    final swap = min != null && max != null && min > max;
    widget.onChanged(PriceRange(min: swap ? max : min, max: swap ? min : max));
  }

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final l10n = context.l10n;
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: c.primary,
            inactiveTrackColor: c.divider,
            thumbColor: c.primary,
            overlayColor: c.primary.withValues(
              alpha: AppOpacity.pressedOverlay,
            ),
          ),
          child: RangeSlider(
            min: _lo,
            max: _hi,
            values: _values,
            onChanged: (values) {
              setState(() => _values = values);
              _setText(_minController, values.start.round());
              _setText(_maxController, values.end.round());
            },
            onChangeEnd: _emitFromSlider,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: _PriceField(
                controller: _minController,
                label: l10n.filtersPriceFrom,
                hint: '${widget.facet.min}',
                onDone: _emitFromFields,
              ),
            ),
            const SizedBox(width: AppSpacing.x12),
            Expanded(
              child: _PriceField(
                controller: _maxController,
                label: l10n.filtersPriceTo,
                hint: '${widget.facet.max}',
                onDone: _emitFromFields,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PriceField extends StatelessWidget {
  const _PriceField({
    required this.controller,
    required this.label,
    required this.hint,
    required this.onDone,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    return Focus(
      // Apply when the field loses focus, not on every keystroke.
      onFocusChange: (hasFocus) {
        if (!hasFocus) onDone();
      },
      child: AppTextField(
        controller: controller,
        label: label,
        hint: hint,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onSubmitted: (_) => onDone(),
      ),
    );
  }
}
