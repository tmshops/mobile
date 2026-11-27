import 'package:flutter/material.dart';

/// Round tick for list selection (cart lines, sellers, «Выбрать все»).
/// A stock [Checkbox] with a circle shape, so taps, semantics and the
/// tristate «some» mark behave as usual.
class RoundCheckbox extends StatelessWidget {
  const RoundCheckbox({
    required this.value,
    required this.onChanged,
    this.isTristate = false,
    this.semanticLabel,
    super.key,
  });

  /// `null` means «some» and needs [isTristate].
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final bool isTristate;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) => Checkbox(
    value: value,
    tristate: isTristate,
    onChanged: onChanged,
    semanticLabel: semanticLabel,
    shape: const CircleBorder(),
  );
}
