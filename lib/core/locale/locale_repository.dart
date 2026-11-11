import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../database/hive_registry.dart';

/// Saved interface language. Kept in `core` because the language is used by
/// every feature (TZ §3: LocaleCubit is a global bloc).
abstract interface class LocaleRepository {
  /// `null` when the user has not chosen yet (first launch).
  String? get savedLanguageCode;

  Future<void> saveLanguageCode(String code);
}

@LazySingleton(as: LocaleRepository)
class LocaleRepositoryImpl implements LocaleRepository {
  const LocaleRepositoryImpl(@Named(HiveBoxes.settings) this._box);

  final Box<String> _box;

  @override
  String? get savedLanguageCode => _box.get(SettingsKeys.languageCode);

  @override
  Future<void> saveLanguageCode(String code) =>
      _box.put(SettingsKeys.languageCode, code);
}
