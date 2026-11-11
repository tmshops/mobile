import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';

extension PumpAppX on WidgetTester {
  /// Pumps [child] inside the real theme and localisations.
  Future<void> pumpApp(
    Widget child, {
    Locale locale = AppLocales.ru,
    double textScale = 1,
    Size size = const Size(360, 800),
  }) async {
    view.physicalSize = size * view.devicePixelRatio;
    addTearDown(view.resetPhysicalSize);
    await pumpWidget(
      MaterialApp(
        theme: AppTheme.light(),
        locale: locale,
        localizationsDelegates: AppLocales.delegates,
        supportedLocales: AppLocales.supported,
        builder: (context, app) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(textScale)),
          child: app!,
        ),
        home: Scaffold(body: child),
      ),
    );
  }
}
