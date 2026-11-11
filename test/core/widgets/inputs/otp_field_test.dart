import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  testWidgets('fills boxes and completes once at full length', (tester) async {
    final completed = <String>[];
    await tester.pumpApp(OtpField(length: 4, onCompleted: completed.add));

    await tester.enterText(find.byType(TextField), '12');
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(completed, isEmpty);

    await tester.enterText(find.byType(TextField), '1234');
    await tester.pump();
    expect(completed, ['1234']);
  });

  testWidgets('pasted text keeps only the first N digits', (tester) async {
    final completed = <String>[];
    await tester.pumpApp(OtpField(length: 4, onCompleted: completed.add));

    // Formatters run on enterText the same way they run on paste.
    await tester.enterText(find.byType(TextField), '98-76-54');
    await tester.pump();
    expect(completed, ['9876']);
  });

  testWidgets('shakes when an error appears', (tester) async {
    Widget field({required bool hasError}) =>
        OtpField(onCompleted: (_) {}, hasError: hasError);

    await tester.pumpApp(field(hasError: false));
    await tester.pumpApp(field(hasError: true));
    await tester.pump(const Duration(milliseconds: 100));

    final transform = tester.widget<Transform>(
      find
          .descendant(
            of: find.byType(OtpField),
            matching: find.byType(Transform),
          )
          .first,
    );
    expect(transform.transform.getTranslation().x, isNot(0));
  });
}
