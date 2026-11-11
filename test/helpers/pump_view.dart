import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/theme/theme.dart';

import 'mock_blocs.dart';

/// Pumps a feature screen with the real theme, the global cubits mocked,
/// and any feature blocs from [providers].
Future<void> pumpView(
  WidgetTester tester,
  Widget child, {
  List<BlocProvider> providers = const [],
  Locale locale = AppLocales.ru,
  bool isOnline = true,
  double textScale = 1,
  double width = 360,
}) async {
  final cubits = GlobalCubits(locale: locale, isOnline: isOnline);
  tester.view.physicalSize = Size(width, 800) * tester.view.devicePixelRatio;
  addTearDown(tester.view.resetPhysicalSize);
  await tester.pumpWidget(
    MultiBlocProvider(
      providers: [...cubits.providers, ...providers],
      child: MaterialApp(
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
        home: child,
      ),
    ),
  );
  await tester.pump();
}

/// Scrolls [scrollable] in steps so every part gets laid out; a layout
/// overflow anywhere fails the test.
Future<void> scrollThrough(
  WidgetTester tester,
  Finder scrollable, {
  int steps = 10,
}) async {
  for (var i = 0; i < steps; i++) {
    await tester.drag(scrollable, const Offset(0, -600), warnIfMissed: false);
    await tester.pump();
  }
}
