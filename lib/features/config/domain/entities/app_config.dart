import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';

/// Support contacts from the config, for screens that must work even when
/// the rest of the app is closed (blocked account, maintenance).
@freezed
abstract class SupportContacts with _$SupportContacts {
  const factory SupportContacts({
    /// Display form, e.g. «+993 12 00 00 00».
    required String phone,
    String? telegram,
    String? whatsapp,
  }) = _SupportContacts;
}

/// The part of the server config (TZ §8.2) that decides whether the app
/// may be used at all.
@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    /// Oldest app version the API still serves, e.g. «1.2.0».
    required String minVersion,

    /// Store page of this app for this platform.
    required String storeUrl,
    required SupportContacts support,
    @Default(false) bool isMaintenance,

    /// Server text such as «Вернёмся к 14:00»; the app has its own default.
    String? maintenanceMessage,

    /// The signed-in customer is blocked (TZ §5.2, §8.1: 403 blocked).
    @Default(false) bool isAccountBlocked,
  }) = _AppConfig;

  const AppConfig._();

  /// Whether [version] («major.minor.patch») may still be used.
  bool supports(String version) => compareVersions(version, minVersion) >= 0;
}

/// What the customer may do with the app right now. The order is the
/// priority: an old app cannot even show maintenance correctly.
enum AppAccess { open, updateRequired, maintenance, blocked }

extension AppConfigAccessX on AppConfig {
  AppAccess accessFor(String version) {
    if (!supports(version)) return AppAccess.updateRequired;
    if (isMaintenance) return AppAccess.maintenance;
    if (isAccountBlocked) return AppAccess.blocked;
    return AppAccess.open;
  }
}

/// Compares dotted versions numerically: «1.10.0» is newer than «1.9.2».
/// Missing parts count as 0; a build suffix («+12», «-beta») is ignored.
int compareVersions(String a, String b) {
  List<int> parts(String v) => [
    for (final p in v.split(RegExp('[+-]')).first.split('.'))
      int.tryParse(p.trim()) ?? 0,
  ];
  final (x, y) = (parts(a), parts(b));
  final length = x.length > y.length ? x.length : y.length;
  for (var i = 0; i < length; i++) {
    final diff = (i < x.length ? x[i] : 0) - (i < y.length ? y[i] : 0);
    if (diff != 0) return diff.sign;
  }
  return 0;
}
