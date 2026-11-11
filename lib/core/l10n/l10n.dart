import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localizations.dart';

export 'app_localizations.dart';

extension L10nX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

/// Locale setup shared by the app and widget tests.
abstract final class AppLocales {
  static const ru = Locale('ru');
  static const tk = Locale('tk');

  /// Default when the device language is neither Russian nor Turkmen (TZ §4).
  static const fallback = tk;

  static const supported = AppLocalizations.supportedLocales;

  static const List<LocalizationsDelegate<Object>> delegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    // Flutter ships no Turkmen strings for its own widgets (date picker,
    // copy/paste menu). These fill the gap with Russian, which Turkmen users
    // read. They come after the global delegates so they only apply when no
    // native translation exists.
    _FallbackDelegate<MaterialLocalizations>(
      GlobalMaterialLocalizations.delegate,
    ),
    _FallbackDelegate<WidgetsLocalizations>(
      GlobalWidgetsLocalizations.delegate,
    ),
    _FallbackDelegate<CupertinoLocalizations>(
      GlobalCupertinoLocalizations.delegate,
    ),
  ];

  static Locale resolve(Locale? device, Iterable<Locale> supported) {
    final code = device?.languageCode;
    return supported.firstWhere(
      (l) => l.languageCode == code,
      orElse: () => fallback,
    );
  }
}

class _FallbackDelegate<T> extends LocalizationsDelegate<T> {
  const _FallbackDelegate(this._source);

  final LocalizationsDelegate<T> _source;

  @override
  bool isSupported(Locale locale) =>
      locale.languageCode == AppLocales.tk.languageCode;

  @override
  Future<T> load(Locale locale) => _source.load(AppLocales.ru);

  @override
  bool shouldReload(_FallbackDelegate<T> old) => false;
}
