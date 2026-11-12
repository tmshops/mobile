import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';
import 'fake_orders_backend.dart';
import 'fake_wallet_backend.dart';

/// Dev stand-in for account settings and account deletion (TZ §5.19).
///
/// Dev rules:
/// - every code is [devCode];
/// - Telegram links on the second «Проверить» (the first says the bot
///   has not had the message yet);
/// - deletion is refused while there is a debt (pay it first).
@LazySingleton(env: [Environment.dev])
class FakeSettingsBackend {
  FakeSettingsBackend(this._orders, this._wallet);

  final FakeOrdersBackend _orders;
  final FakeWalletBackend _wallet;

  static const devCode = '1234';
  static const telegramBot = '@tmshop_bot';

  String _codeChannel = 'sms';
  String? _email;
  bool _isTelegramLinked = false;
  int _telegramChecks = 0;
  String? _pendingEmail;
  int _nextRequest = 1;
  final _topics = {
    'orders': true,
    'support': true,
    'promo': true,
    'prices': true,
  };

  static const _required = {'orders', 'support'};

  Map<String, dynamic> settings(String lang) {
    String t(String ru, String tk) => lang == 'tk' ? tk : ru;
    return {
      'code_channel': _codeChannel,
      'channels': [
        {'id': 'sms', 'is_linked': true},
        {'id': 'telegram', 'is_linked': _isTelegramLinked},
        {'id': 'email', 'is_linked': _email != null, 'address': ?_email},
      ],
      'notifications': [
        for (final MapEntry(:key, :value) in _topics.entries)
          {
            'id': key,
            'title': switch (key) {
              'orders' => t('Заказы и посылки', 'Sargytlar we posylkalar'),
              'support' => t('Ответы поддержки', 'Goldawyň jogaplary'),
              'promo' => t('Акции и скидки', 'Aksiýalar we arzanladyşlar'),
              _ => t('Снижение цен', 'Bahalaryň arzanlamagy'),
            },
            'is_required': _required.contains(key),
            'is_on': value,
          },
      ],
    };
  }

  void setCodeChannel(String lang, String channel) {
    final isLinked = switch (channel) {
      'sms' => true,
      'telegram' => _isTelegramLinked,
      'email' => _email != null,
      _ => false,
    };
    if (!isLinked) {
      throw ServerException(
        code: 'channel_not_linked',
        message: lang == 'tk'
            ? 'Ilki bu kanaly baglaň'
            : 'Сначала привяжите этот канал',
      );
    }
    _codeChannel = channel;
  }

  void setNotification(String lang, String id, {required bool isOn}) {
    if (_required.contains(id) && !isOn) {
      throw ServerException(
        code: 'required',
        message: lang == 'tk'
            ? 'Hyzmat habarlaryny öçürip bolmaýar'
            : 'Сервисные уведомления отключить нельзя',
      );
    }
    if (_topics.containsKey(id)) _topics[id] = isOn;
  }

  // ── Linking ───────────────────────────────────────────────────────────

  Map<String, dynamic> startEmailLink(String lang, String email) {
    if (!RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email)) {
      throw ServerException(
        code: 'invalid_email',
        message: lang == 'tk' ? 'E-poçta nädogry' : 'Неверный email',
      );
    }
    _pendingEmail = email;
    return {'request_id': 'link-${_nextRequest++}', 'code_length': 4};
  }

  void confirmEmailLink(String lang, String requestId, String code) {
    _checkCode(lang, code);
    _email = _pendingEmail;
    _codeChannel = 'email';
  }

  Map<String, dynamic> startTelegramLink() => {
    'bot': telegramBot,
    'code': 'TM-${4821 + _nextRequest++}',
  };

  /// `true` once the bot got the code; then Telegram is the channel.
  bool checkTelegramLink() {
    if (++_telegramChecks < 2) return false;
    _isTelegramLinked = true;
    _codeChannel = 'telegram';
    return true;
  }

  // ── Deletion ──────────────────────────────────────────────────────────

  Map<String, dynamic> deletionCheck(String lang) {
    final money = _wallet.summary();
    final debt = money['debt'] as int;
    final active = (_orders.orders(lang, 'active')['orders'] as List).length;
    return {
      'active_orders': active,
      'debt': debt,
      'balance': money['balance'],
      'can_delete': debt == 0,
      if (debt > 0) 'block_reason': _blocked(lang),
    };
  }

  Map<String, dynamic> requestDeletionCode() => {
    'request_id': 'del-${_nextRequest++}',
    'code_length': 4,
  };

  void deleteAccount(String lang, String requestId, String code) {
    _checkCode(lang, code);
    if (_wallet.summary()['debt'] != 0) {
      throw ServerException(code: 'has_debt', message: _blocked(lang));
    }
  }

  static String _blocked(String lang) => lang == 'tk'
      ? 'Hasaby pozmazdan öň bergini üzüň'
      : 'Сначала погасите долг — потом аккаунт можно удалить';

  static void _checkCode(String lang, String code) {
    if (code != devCode) {
      throw ServerException(
        code: 'wrong_code',
        message: lang == 'tk' ? 'Kod nädogry' : 'Неверный код',
      );
    }
  }
}
