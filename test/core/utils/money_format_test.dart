import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/app_localizations_ru.dart';
import 'package:tmshop/core/l10n/app_localizations_tk.dart';
import 'package:tmshop/core/utils/money_format.dart';

void main() {
  const nbsp = ' ';
  final ru = AppLocalizationsRu();
  final tk = AppLocalizationsTk();

  group('MoneyFormat.group', () {
    test('groups thousands with a non-breaking space', () {
      expect(MoneyFormat.group(0), '0');
      expect(MoneyFormat.group(216), '216');
      expect(MoneyFormat.group(1216), '1${nbsp}216');
      expect(MoneyFormat.group(1234567), '1${nbsp}234${nbsp}567');
      expect(MoneyFormat.group(-1500), '-1${nbsp}500');
    });
  });

  test('tmt appends the currency', () {
    expect(MoneyFormat.tmt(ru, 1216), '1${nbsp}216 TMT');
  });

  group('MoneyFormat.compact', () {
    test('keeps small numbers', () {
      expect(MoneyFormat.compact(ru, 999), '999');
    });

    test('uses thousands and millions per language', () {
      expect(MoneyFormat.compact(ru, 1250), '1,2 тыс.');
      expect(MoneyFormat.compact(tk, 1250), '1,2 müň');
      expect(MoneyFormat.compact(ru, 3000), '3 тыс.');
      expect(MoneyFormat.compact(ru, 3400000), '3,4 млн');
    });

    test('truncates instead of rounding up', () {
      expect(MoneyFormat.compact(ru, 999950), '999,9 тыс.');
    });
  });
}
