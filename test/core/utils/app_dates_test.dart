import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/app_dates.dart';
import 'package:tmshop/core/utils/phone_format.dart';

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  test('day and month in both languages', () {
    expect(AppDates.dayMonth(ru, DateTime(2026, 11, 24)), '24 ноября');
    expect(AppDates.dayMonth(tk, DateTime(2026, 11, 24)), '24-nji noýabr');
    expect(AppDates.dayMonth(tk, DateTime(2026, 1, 6)), '6-njy ýanwar');
    expect(AppDates.dayMonth(tk, DateTime(2026, 3, 30)), '30-njy mart');
    expect(AppDates.dayMonth(tk, DateTime(2026, 3, 20)), '20-nji mart');
  });

  test('ranges and time', () {
    expect(
      AppDates.range(ru, DateTime(2026, 11, 24), DateTime(2026, 11, 28)),
      '24–28 ноября',
    );
    expect(
      AppDates.range(tk, DateTime(2026, 11, 24), DateTime(2026, 11, 28)),
      '24–28-nji noýabr',
    );
    expect(
      AppDates.range(ru, DateTime(2026, 11, 30), DateTime(2026, 12, 3)),
      '30 ноября – 3 декабря',
    );
    expect(
      AppDates.dayMonthTime(ru, DateTime(2026, 11, 24, 9, 5)),
      '24 ноября, 09:05',
    );
  });

  test('phone for display', () {
    expect(PhoneFormat.national('65123456'), '+993 65 12 34 56');
    expect(PhoneFormat.national('123'), '123');
  });
}
