import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/app_localizations_ru.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  final l10n = AppLocalizationsRu();

  Future<List<int>> pumpStepper(
    WidgetTester tester, {
    required int value,
    int max = 3,
  }) async {
    final changes = <int>[];
    await tester.pumpApp(
      StatefulBuilder(
        builder: (context, setState) => QuantityStepper(
          value: value,
          max: max,
          onChanged: (v) => setState(() {
            value = v;
            changes.add(v);
          }),
        ),
      ),
    );
    return changes;
  }

  testWidgets('steps up and down', (tester) async {
    final changes = await pumpStepper(tester, value: 2);
    await tester.tap(find.bySemanticsLabel(l10n.quantityIncrease));
    await tester.pump();
    await tester.tap(find.bySemanticsLabel(l10n.quantityDecrease));
    await tester.pump();
    expect(changes, [3, 2]);
  });

  testWidgets('does not go below min or above max', (tester) async {
    final changes = await pumpStepper(tester, value: 1, max: 1);
    await tester.tap(find.bySemanticsLabel(l10n.quantityDecrease));
    await tester.tap(find.bySemanticsLabel(l10n.quantityIncrease));
    await tester.pump();
    expect(changes, isEmpty);
  });

  testWidgets('long press repeats and stops at max', (tester) async {
    final changes = await pumpStepper(tester, value: 1, max: 4);
    final gesture = await tester.startGesture(
      tester.getCenter(find.bySemanticsLabel(l10n.quantityIncrease)),
    );
    await tester.pump(kLongPressTimeout + const Duration(milliseconds: 50));
    for (var i = 0; i < 10; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    await gesture.up();
    await tester.pump();
    expect(changes, [2, 3, 4]);
  });
}
