import 'package:injectable/injectable.dart';

/// Dev stand-in for GET /config (TZ §8.2).
///
/// Run with `--dart-define=FAKE_APP_ACCESS=update` (or `maintenance`,
/// `blocked`) to see the matching service screen. «Проверить снова» on
/// maintenance succeeds from the second try, so the way back can be seen.
@LazySingleton(env: [Environment.dev])
class FakeConfigBackend {
  FakeConfigBackend([
    @ignoreParam this._mode = const String.fromEnvironment('FAKE_APP_ACCESS'),
  ]);

  String _mode;
  int _maintenanceChecks = 0;

  static const supportPhone = '+993 12 00 00 00';

  Map<String, dynamic> config(String lang) {
    final tk = lang == 'tk';
    final isMaintenance = _mode == 'maintenance' && _maintenanceChecks++ < 1;
    if (_mode == 'maintenance' && !isMaintenance) _mode = '';
    return {
      'min_version': _mode == 'update' ? '99.0.0' : '1.0.0',
      'store_url': 'https://play.google.com/store/apps/details?id=tm.tmshop',
      'is_maintenance': isMaintenance,
      if (isMaintenance)
        'maintenance_message': tk
            ? 'Programmany täzeleýäris. Sagat 14:00-a çenli gaýdyp geleris.'
            : 'Обновляем приложение. Вернёмся к 14:00.',
      'is_account_blocked': _mode == 'blocked',
      'support': {
        'phone': supportPhone,
        'telegram': 'https://t.me/tmshop_support',
        'whatsapp': 'https://wa.me/99312000000',
      },
    };
  }
}
