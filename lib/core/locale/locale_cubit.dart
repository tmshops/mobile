import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../l10n/l10n.dart';
import 'locale_repository.dart';

/// Current interface language. Starts from the saved choice, else the
/// device language, else Turkmen (TZ §5.1).
@lazySingleton
class LocaleCubit extends Cubit<Locale> {
  LocaleCubit(this._repository)
    : super(_initial(_repository.savedLanguageCode));

  final LocaleRepository _repository;

  static Locale _initial(String? saved) {
    if (saved != null) {
      return AppLocales.resolve(Locale(saved), AppLocales.supported);
    }
    return AppLocales.resolve(
      PlatformDispatcher.instance.locale,
      AppLocales.supported,
    );
  }

  Future<void> select(Locale locale) async {
    if (locale == state) return;
    emit(locale);
    await _repository.saveLanguageCode(locale.languageCode);
  }

  /// RU ↔ TK, for the Home header toggle.
  Future<void> toggle() =>
      select(state == AppLocales.ru ? AppLocales.tk : AppLocales.ru);
}
