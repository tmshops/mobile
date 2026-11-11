import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/widgets/widgets.dart';

import '../../../helpers/pump_app.dart';

void main() {
  test('formatClock pads and drops whole days', () {
    expect(
      CountdownTimer.formatClock(
        const Duration(hours: 4, minutes: 5, seconds: 9),
      ),
      '04:05:09',
    );
    expect(
      CountdownTimer.formatClock(const Duration(days: 2, hours: 1)),
      '01:00:00',
    );
  });

  testWidgets('shows days, ticks and finishes once', (tester) async {
    final start = DateTime(2026, 11, 11, 12);
    var now = start;
    var finished = 0;
    await tester.pumpApp(
      CountdownTimer(
        endsAt: start.add(const Duration(days: 1, seconds: 2)),
        now: () => now,
        onFinished: () => finished++,
      ),
      locale: AppLocales.tk,
    );
    expect(find.text('1 g 00:00:02'), findsOneWidget);

    now = start.add(const Duration(days: 1, seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('00:00:01'), findsOneWidget);

    now = start.add(const Duration(days: 1, seconds: 5));
    await tester.pump(const Duration(seconds: 1));
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('00:00:00'), findsOneWidget);
    expect(finished, 1);

    await tester.pumpWidget(const SizedBox());
  });
}
