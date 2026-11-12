/// Turkmen phone numbers for display.
abstract final class PhoneFormat {
  static const _countryCode = '+993';
  static const _nationalLength = 8;

  /// `65123456` → `+993 65 12 34 56`; anything else is returned as is.
  static String national(String digits) {
    if (digits.length != _nationalLength) return digits;
    return '$_countryCode ${digits.substring(0, 2)} ${digits.substring(2, 4)} '
        '${digits.substring(4, 6)} ${digits.substring(6)}';
  }
}
