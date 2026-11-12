import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/external_links.dart';

import '../../helpers/pump_view.dart';

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);

  /// Pumps a button that runs [action] and taps it.
  Future<void> tap(
    WidgetTester tester,
    Future<void> Function(BuildContext context) action,
  ) async {
    await pumpView(
      tester,
      Scaffold(
        body: Builder(
          builder: (context) => TextButton(
            onPressed: () => action(context),
            child: const Text('go'),
          ),
        ),
      ),
    );
    await tester.tap(find.text('go'));
    await tester.pump();
  }

  testWidgets('phone, mail, link: the right kind of link', (tester) async {
    final opened = mockExternalLinks();
    await tap(tester, (c) => ExternalLinks.call(c, '+993 (12) 00-00-01'));
    await tap(tester, (c) => ExternalLinks.email(c, 'support@tmshop.tm'));
    await tap(tester, (c) => ExternalLinks.url(c, 'https://t.me/tmshop'));

    expect(opened.map((u) => u.toString()), [
      'tel:+99312000001',
      'mailto:support@tmshop.tm',
      'https://t.me/tmshop',
    ]);
  });

  testWidgets('an address opens the maps app of the platform', (tester) async {
    final opened = mockExternalLinks();
    await tap(tester, (c) => ExternalLinks.map(c, 'Битарап, 18'));
    expect(opened.single.scheme, 'geo');
    expect(opened.single.queryParameters['q'], 'Битарап, 18');

    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    await tap(tester, (c) => ExternalLinks.map(c, 'Битарап, 18'));
    debugDefaultTargetPlatformOverride = null;
    expect(opened.last.host, 'maps.apple.com');
  });

  testWidgets('nothing can open it: copied, with a toast', (tester) async {
    final copied = mockClipboard();
    mockExternalLinks(canOpen: false);
    await tap(tester, (c) => ExternalLinks.call(c, '+993 12 00 00 01'));

    expect(copied, ['+993 12 00 00 01']);
    expect(find.text(ru.externalCopied('+993 12 00 00 01')), findsOneWidget);
  });

  testWidgets('a link without a scheme is only copied', (tester) async {
    final copied = mockClipboard();
    final opened = mockExternalLinks();
    await tap(tester, (c) => ExternalLinks.url(c, 'tmshop.tm'));

    expect(opened, isEmpty);
    expect(copied, ['tmshop.tm']);
  });
}
