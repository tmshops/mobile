import 'package:flutter/material.dart';

import '../../theme/theme.dart';

/// Round radio indicator for custom radio cards and rows (the stock
/// `Radio` needs a group widget around it).
class RadioMark extends StatelessWidget {
  const RadioMark({required this.isSelected, super.key});

  final bool isSelected;

  static const double _outer = 22;
  static const double _inner = 10;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return AnimatedContainer(
      duration: AppMotion.of(context, AppMotion.fast),
      width: _outer,
      height: _outer,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? c.primary : c.inkTertiary,
          width: AppSizes.selectedBorder,
        ),
      ),
      child: isSelected
          ? Container(
              width: _inner,
              height: _inner,
              decoration: BoxDecoration(
                color: c.primary,
                shape: BoxShape.circle,
              ),
            )
          : null,
    );
  }
}
