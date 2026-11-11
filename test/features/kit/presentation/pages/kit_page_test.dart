import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';
import 'package:tmshop/features/kit/presentation/pages/kit_page.dart';

/// The Kit renders every component, so laying it out at the tightest
/// supported setting (360 dp, Turkmen, 1.3× text) catches overflow in any
/// of them. The test framework fails the test on any layout error and
/// prints the overflowing widget with its owner chain.
void main() {
  Future<void> pumpKit(WidgetTester tester, {required double width}) async {
    tester.view.physicalSize = Size(width, 800) * tester.view.devicePixelRatio;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.light(),
        localizationsDelegates: AppLocales.delegates,
        supportedLocales: AppLocales.supported,
        home: const KitPage(),
      ),
    );
    await tester.pump();
  }

  Future<void> switchToTurkmenLarge(WidgetTester tester) async {
    await tester.tap(find.text('RU'));
    await tester.pump();
    await tester.tap(find.text('1.0×'));
    await tester.pump();
    expect(find.text('TK'), findsOneWidget);
    expect(find.text('1.3×'), findsOneWidget);
  }

  for (final width in [360.0, 412.0]) {
    testWidgets('Kit lays out in RU 1.0× and TK 1.3× at ${width.toInt()} dp', (
      tester,
    ) async {
      await pumpKit(tester, width: width);

      await switchToTurkmenLarge(tester);
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.text('Häzir satyn al'), findsWidgets);

      // Dispose to cancel the countdown, autoplay and shimmer timers.
      await tester.pumpWidget(const SizedBox());
    });
  }
}
