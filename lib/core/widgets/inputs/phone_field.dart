import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';
import 'app_text_field.dart';

/// Turkmen mobile number: fixed `+993` prefix and an `XX XXXXXX` mask.
///
/// [onChanged] receives only the 8 national digits, without spaces.
class PhoneField extends StatelessWidget {
  const PhoneField({
    this.controller,
    this.onChanged,
    this.errorText,
    this.isEnabled = true,
    this.autofocus = false,
    super.key,
  });

  /// Holds the formatted text («65 123456»).
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? errorText;
  final bool isEnabled;
  final bool autofocus;

  static const countryCode = '+993';

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return AppTextField(
      controller: controller,
      label: context.l10n.phoneLabel,
      hint: TmPhoneFormatter.example,
      errorText: errorText,
      isEnabled: isEnabled,
      autofocus: autofocus,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.done,
      autofillHints: const [AutofillHints.telephoneNumberNational],
      inputFormatters: const [TmPhoneFormatter()],
      onChanged: onChanged == null
          ? null
          : (text) => onChanged?.call(TmPhoneFormatter.digitsOf(text)),
      prefix: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: AppSpacing.x16,
          end: AppSpacing.x8,
        ),
        child: Text(
          countryCode,
          style: context.text.body.copyWith(color: c.inkSecondary),
        ),
      ),
    );
  }
}

/// Keeps up to 8 digits and formats them as `XX XXXXXX`.
class TmPhoneFormatter extends TextInputFormatter {
  const TmPhoneFormatter();

  static const nationalLength = 8;
  static const _operatorLength = 2;
  static const example = '6X XXXXXX';

  static String digitsOf(String text) => text.replaceAll(RegExp(r'\D'), '');

  static String format(String digits) {
    if (digits.length <= _operatorLength) return digits;
    return '${digits.substring(0, _operatorLength)} '
        '${digits.substring(_operatorLength)}';
  }

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var digits = digitsOf(newValue.text);
    // A pasted full number («+993 65 123456») keeps its national part.
    if (digits.length > nationalLength) {
      digits = digits.substring(digits.length - nationalLength);
    }
    final text = format(digits);
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
