import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';

/// Dev stand-in for sign-in by phone and the profile API (TZ §5.2, §7.2).
///
/// Dev rules, so every screen state can be tried:
/// - the code is always [devCode];
/// - a phone ending in [blockedSuffix] belongs to a blocked customer;
/// - a phone ending in [debtSuffix] owes a surcharge;
/// - a phone starting with [wholesalePrefix] is in the wholesale group.
///
/// Tokens carry the phone, so a session survives an app restart even
/// though this server forgets everything.
@LazySingleton(env: [Environment.dev])
class FakeAuthBackend {
  FakeAuthBackend({@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now;

  final DateTime Function() _now;

  static const devCode = '1234';
  static const codeLength = 4;
  static const blockedSuffix = '9999';
  static const debtSuffix = '7777';
  static const wholesalePrefix = '61';
  static const resendAfter = Duration(seconds: 60);
  static const codeLifetime = Duration(minutes: 5);
  static const attempts = 3;

  static const _tokenPrefix = 'fake.';
  static const _knownPhone = '65123456';

  final _requests = <String, _CodeRequest>{};
  final _lastSentAt = <String, DateTime>{};
  int _nextRequest = 1;

  Map<String, dynamic> requestCode(String lang, String phone) {
    String t(String ru, String tm) => lang == 'tk' ? tm : ru;
    if (phone.endsWith(blockedSuffix)) {
      throw ServerException(
        code: 'blocked',
        message: t(
          'Ваш аккаунт заблокирован. Свяжитесь с поддержкой: +993 12 00 00 00',
          'Hasabyňyz petiklendi. Goldaw bilen habarlaşyň: +993 12 00 00 00',
        ),
      );
    }
    final sentAt = _lastSentAt[phone];
    final now = _now();
    if (sentAt != null && now.difference(sentAt) < resendAfter) {
      final wait = (resendAfter - now.difference(sentAt)).inSeconds;
      throw ServerException(
        code: 'too_many_requests',
        message: t(
          'Новый код можно запросить через $wait сек',
          'Täze kody $wait sekuntdan soň sorap bilersiňiz',
        ),
      );
    }
    final id = 'req-${_nextRequest++}';
    _requests[id] = _CodeRequest(
      phone: phone,
      expiresAt: now.add(codeLifetime),
    );
    _lastSentAt[phone] = now;
    return {
      'request_id': id,
      'code_length': codeLength,
      'channel': 'sms',
      'destination': '+993 ${phone.substring(0, 2)} ** **${phone.substring(6)}',
      'resend_after': resendAfter.inSeconds,
    };
  }

  Map<String, dynamic> verify(String lang, String requestId, String code) {
    String t(String ru, String tm) => lang == 'tk' ? tm : ru;
    final request = _requests[requestId];
    final expired = ServerException(
      code: 'code_expired',
      message: t(
        'Код больше не действует. Запросите новый',
        'Kod indi işlemeýär. Täzesini soraň',
      ),
    );
    if (request == null || _now().isAfter(request.expiresAt)) {
      _requests.remove(requestId);
      throw expired;
    }
    if (code != devCode) {
      request.attemptsLeft--;
      if (request.attemptsLeft <= 0) {
        _requests.remove(requestId);
        throw expired;
      }
      final left = request.attemptsLeft;
      throw ServerException(
        code: 'invalid_code',
        message: t(
          'Неверный код. ${_ruAttempts(left)}',
          'Kod nädogry. Ýene $left synanyşyk galdy',
        ),
      );
    }
    _requests.remove(requestId);
    return {
      'access_token': '$_tokenPrefix${request.phone}',
      'refresh_token': '$_tokenPrefix${request.phone}.refresh',
      'profile': _profile(request.phone),
    };
  }

  Map<String, dynamic> profile(String accessToken) {
    if (!accessToken.startsWith(_tokenPrefix)) {
      throw const ServerException(code: 'unauthorized');
    }
    return _profile(accessToken.substring(_tokenPrefix.length));
  }

  static Map<String, dynamic> _profile(String phone) {
    final isKnown = phone == _knownPhone;
    return {
      'id': 'u-$phone',
      'phone': phone,
      'first_name': isKnown ? 'Айна' : '',
      'last_name': isKnown ? 'Атаева' : '',
      'region_id': 'ashgabat',
      'balance': isKnown ? 120 : 0,
      'debt': phone.endsWith(debtSuffix) ? 86 : 0,
      'bonuses': isKnown ? 35 : 0,
      'is_wholesale': phone.startsWith(wholesalePrefix),
    };
  }

  static String _ruAttempts(int n) => switch (n) {
    1 => 'Осталась 1 попытка',
    _ => 'Осталось $n попытки',
  };
}

class _CodeRequest {
  _CodeRequest({required this.phone, required this.expiresAt});

  final String phone;
  final DateTime expiresAt;
  int attemptsLeft = FakeAuthBackend.attempts;
}
