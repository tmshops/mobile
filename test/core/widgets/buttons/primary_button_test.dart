import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  Widget button({required bool isLoading, VoidCallback? onPressed}) => Center(
    child: PrimaryButton(
      label: 'Купить сейчас',
      isExpanded: false,
      isLoading: isLoading,
      onPressed: onPressed,
    ),
  );

  testWidgets('loading keeps the width and blocks taps', (tester) async {
    var taps = 0;
    await tester.pumpApp(button(isLoading: false, onPressed: () => taps++));
    final idleWidth = tester.getSize(find.byType(PrimaryButton)).width;

    await tester.pumpApp(button(isLoading: true, onPressed: () => taps++));
    expect(tester.getSize(find.byType(PrimaryButton)).width, idleWidth);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.tap(find.byType(PrimaryButton), warnIfMissed: false);
    expect(taps, 0);
  });

  testWidgets('is at least 52 dp tall and calls back', (tester) async {
    var taps = 0;
    await tester.pumpApp(button(isLoading: false, onPressed: () => taps++));
    expect(
      tester.getSize(find.byType(PrimaryButton)).height,
      greaterThanOrEqualTo(52),
    );
    await tester.tap(find.byType(PrimaryButton));
    expect(taps, 1);
  });
}
