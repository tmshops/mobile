import '../l10n/app_localizations.dart';

/// Formatting for TMT amounts and compact counters.
///
/// Written by hand because `intl` has no Turkmen number data. Both languages
/// group thousands with a space and use a comma as the decimal separator.
abstract final class MoneyFormat {
  /// Non-breaking space, so «1 216 TMT» never wraps inside the number.
  static const _groupSeparator = ' ';
  static const _groupSize = 3;
  static const _thousand = 1000;
  static const _million = 1000000;

  /// `1216` → `1 216` (no decimals, TMT has none in this app).
  static String group(int value) {
    final digits = value.abs().toString();
    final buffer = StringBuffer(value < 0 ? '-' : '');
    for (var i = 0; i < digits.length; i++) {
      final fromEnd = digits.length - i;
      if (i > 0 && fromEnd % _groupSize == 0) buffer.write(_groupSeparator);
      buffer.write(digits[i]);
    }
    return buffer.toString();
  }

  /// `1216` → `1 216 TMT`.
  static String tmt(AppLocalizations l10n, int value) =>
      l10n.priceTmt(group(value));

  /// `1250` → `1,2 тыс.` / `1,2 müň`; values below 1000 stay as they are.
  static String compact(AppLocalizations l10n, int value) {
    if (value < _thousand) return value.toString();
    if (value < _million) {
      return l10n.compactThousands(_oneDecimal(value / _thousand));
    }
    return l10n.compactMillions(_oneDecimal(value / _million));
  }

  static String _oneDecimal(double value) {
    // Truncate rather than round so «999 950» never shows as «1000 тыс.».
    final tenths = (value * 10).floor();
    final whole = tenths ~/ 10;
    final fraction = tenths % 10;
    return fraction == 0 ? '$whole' : '$whole,$fraction';
  }
}
