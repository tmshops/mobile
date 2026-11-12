import '../l10n/app_localizations.dart';

/// Dates as the UI shows them: «24 ноября» / «24-nji noýabr» (UI_DESIGN §8).
///
/// Written by hand because `intl` has no Turkmen date data. The words come
/// from the ARB files; only the Turkmen ordinal ending is chosen here.
abstract final class AppDates {
  static const _months = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'aug',
    'sep',
    'oct',
    'nov',
    'dec',
  ];

  /// «24 ноября».
  static String dayMonth(AppLocalizations l10n, DateTime date) => l10n
      .dateDayMonth('${date.day}', _ending(date.day), _months[date.month - 1]);

  /// «Сегодня», «Вчера» or «24 ноября», judged by [now]'s calendar day.
  static String dayLabel(AppLocalizations l10n, DateTime date, DateTime now) {
    final day = DateTime(date.year, date.month, date.day);
    final today = DateTime(now.year, now.month, now.day);
    // Rounded: a daylight-saving day is 23 or 25 hours long.
    final days = (today.difference(day).inHours / Duration.hoursPerDay).round();
    return switch (days) {
      0 => l10n.dateToday,
      1 => l10n.dateYesterday,
      _ => dayMonth(l10n, date),
    };
  }

  /// «24 ноября, 14:30».
  static String dayMonthTime(AppLocalizations l10n, DateTime date) =>
      l10n.dateDayMonthTime(dayMonth(l10n, date), time(date));

  /// «24–28 ноября», or «30 ноября – 3 декабря» across months.
  static String range(AppLocalizations l10n, DateTime from, DateTime to) {
    if (from.year == to.year && from.month == to.month) {
      return from.day == to.day
          ? dayMonth(l10n, to)
          : l10n.dateRangeSameMonth('${from.day}', dayMonth(l10n, to));
    }
    return l10n.dateRange(dayMonth(l10n, from), dayMonth(l10n, to));
  }

  /// «14:30».
  static String time(DateTime date) =>
      '${date.hour.toString().padLeft(2, '0')}:'
      '${date.minute.toString().padLeft(2, '0')}';

  /// Turkmen ordinal ending by vowel harmony of the number's last word:
  /// 6 (alty), 9 (dokuz), 10 (on), 30 (otuz) take «-njy»; the rest «-nji».
  /// Russian text ignores it.
  static String _ending(int day) {
    final last = day % 10;
    final isBack = last == 0
        ? const {10, 30}.contains(day)
        : const {6, 9}.contains(last);
    return isBack ? 'back' : 'front';
  }
}
