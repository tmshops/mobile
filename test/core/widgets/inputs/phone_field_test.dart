import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  const formatter = TmPhoneFormatter();

  String apply(String input) => formatter
      .formatEditUpdate(TextEditingValue.empty, TextEditingValue(text: input))
      .text;

  group('TmPhoneFormatter', () {
    test('formats as XX XXXXXX', () {
      expect(apply('6'), '6');
      expect(apply('65'), '65');
      expect(apply('651'), '65 1');
      expect(apply('65123456'), '65 123456');
    });

    test('drops non-digits and extra digits', () {
      expect(apply('65-12a3'), '65 123');
      expect(apply('651234567'), '51 234567');
    });

    test('keeps the national part of a pasted full number', () {
      expect(apply('+993 65 123456'), '65 123456');
    });
  });

  testWidgets('reports only digits and shows the +993 prefix', (tester) async {
    String? digits;
    await tester.pumpApp(PhoneField(onChanged: (v) => digits = v));

    expect(find.text(PhoneField.countryCode), findsOneWidget);
    await tester.enterText(find.byType(PhoneField), '65123456');
    expect(digits, '65123456');
    expect(find.text('65 123456'), findsOneWidget);
  });
}
