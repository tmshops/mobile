import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Two-to-four equal segments, e.g. «Курьер / Самовывоз». The selected one
/// is a white pill on the surface track. Labels wrap rather than clip.
class AppSegmentedControl<T> extends StatelessWidget {
  const AppSegmentedControl({
    required this.segments,
    required this.selected,
    required this.onChanged,
    super.key,
  });

  final List<(T value, String label)> segments;
  final T selected;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: c.surface,
        borderRadius: AppRadii.buttonBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.x4),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final (value, label) in segments)
                Expanded(
                  child: _Segment(
                    label: label,
                    isSelected: value == selected,
                    onTap: () => onChanged(value),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return Semantics(
      button: true,
      selected: isSelected,
      inMutuallyExclusiveGroup: true,
      label: label,
      excludeSemantics: true,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: AnimatedContainer(
          duration: AppMotion.of(context, AppMotion.fast),
          constraints: const BoxConstraints(minHeight: AppSizes.buttonMedium),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x8,
            vertical: AppSpacing.x4,
          ),
          decoration: BoxDecoration(
            color: isSelected ? c.background : Colors.transparent,
            borderRadius: AppRadii.inputBorder,
            boxShadow: isSelected ? context.shadows.floating : null,
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: (isSelected ? context.text.bodyStrong : context.text.body)
                .copyWith(color: isSelected ? c.ink : c.inkSecondary),
          ),
        ),
      ),
    );
  }
}
