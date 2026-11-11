import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/theme.dart';

/// Filled text field with the label above it.
///
/// The label sits outside the field so long Turkmen labels can wrap instead
/// of being cut off inside the border.
class AppTextField extends StatelessWidget {
  const AppTextField({
    this.controller,
    this.focusNode,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.prefix,
    this.suffix,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.autofillHints,
    this.onChanged,
    this.onSubmitted,
    this.isEnabled = true,
    this.autofocus = false,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    super.key,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? label;
  final String? hint;
  final String? helperText;

  /// Non-null puts the field into the error state.
  final String? errorText;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool isEnabled;
  final bool autofocus;
  final int? minLines;
  final int? maxLines;

  /// Shows a «12/500» counter when set.
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final t = context.text;
    final labelText = label;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null) ...[
          Text(labelText, style: t.caption.copyWith(color: c.inkSecondary)),
          const SizedBox(height: AppSpacing.x8),
        ],
        TextField(
          controller: controller,
          focusNode: focusNode,
          enabled: isEnabled,
          autofocus: autofocus,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          inputFormatters: inputFormatters,
          autofillHints: autofillHints,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          style: t.body.copyWith(color: isEnabled ? c.ink : c.inkTertiary),
          decoration: InputDecoration(
            hintText: hint,
            helperText: helperText,
            helperMaxLines: 3,
            errorText: errorText,
            errorMaxLines: 3,
            prefixIcon: prefix,
            suffixIcon: suffix,
            semanticCounterText: '',
          ),
        ),
      ],
    );
  }
}
