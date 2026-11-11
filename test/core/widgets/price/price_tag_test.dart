import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  test('discount percent is rounded and ignores invalid old prices', () {
    expect(const PriceTag(price: 216, oldPrice: 260).discountPercent, 17);
    expect(const PriceTag(price: 300, oldPrice: 260).discountPercent, isNull);
    expect(const PriceTag(price: 300).discountPercent, isNull);
  });

  testWidgets('shows price, old price and badge', (tester) async {
    await tester.pumpApp(const PriceTag(price: 750, oldPrice: 1000));
    expect(find.text('750 TMT'), findsOneWidget);
    expect(find.text('1 000 TMT'), findsOneWidget);
    expect(find.text('−25%'), findsOneWidget);
  });

  testWidgets('reads as one phrase with Russian plurals', (tester) async {
    await tester.pumpApp(const PriceTag(price: 216, oldPrice: 261));
    expect(
      find.bySemanticsLabel('216 манатов, было 261 манат'),
      findsOneWidget,
    );
  });

  testWidgets('Turkmen phrase', (tester) async {
    await tester.pumpApp(
      const PriceTag(price: 216, oldPrice: 260),
      locale: AppLocales.tk,
    );
    expect(find.bySemanticsLabel('216 manat, öň 260 manat'), findsOneWidget);
  });
}
