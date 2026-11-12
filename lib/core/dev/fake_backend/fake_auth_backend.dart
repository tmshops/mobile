import 'package:injectable/injectable.dart';

import '../../error/exceptions.dart';
import 'fake_wallet_backend.dart';

/// Dev stand-in for sign-in by phone and the profile API (TZ §5.2, §7.2).
///
/// Dev rules, so every screen state can be tried:
/// - the code is always [devCode];
/// - a phone ending in [blockedSuffix] belongs to a blocked customer;
/// - balance and debt come from [FakeWalletBackend]: every account owes
///   a parcel surcharge, a phone ending in
///   [FakeWalletBackend.debtSuffix] owes more;
/// - a phone starting with [wholesalePrefix] is in the wholesale group.
///
/// Tokens carry the phone, so a session survives an app restart even
/// though this server forgets everything.
@LazySingleton(env: [Environment.dev])
class FakeAuthBackend {
  FakeAuthBackend(this._wallet, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now;

  /// Owns balance and debt, so paying a surcharge shows in the profile.
  final FakeWalletBackend _wallet;
  final DateTime Function() _now;

  static const devCode = '1234';
  static const codeLength = 4;
  static const blockedSuffix = '9999';
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

  // ── Profile edit (TZ §5.14) ───────────────────────────────────────────

  /// Edits by account. The account is the phone the session started with
  /// (it is in the token), so a changed number keeps the same account.
  final _edits = <String, _Edits>{};
  final _phoneChanges = <String, ({String account, String phone})>{};

  /// [body]: `{first_name, last_name, email?, region_id?}`.
  Map<String, dynamic> updateProfile(
    String lang,
    String accessToken,
    Map<String, dynamic> body,
  ) {
    String t(String ru, String tm) => lang == 'tk' ? tm : ru;
    final account = _account(accessToken);
    final first = (body['first_name'] as String? ?? '').trim();
    final last = (body['last_name'] as String? ?? '').trim();
    final email = (body['email'] as String?)?.trim();
    if (first.length > maxNameLength || last.length > maxNameLength) {
      throw ServerException(
        code: 'invalid_name',
        message: t('Слишком длинное имя', 'At gaty uzyn'),
      );
    }
    if (email != null &&
        email.isNotEmpty &&
        !RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email)) {
      throw ServerException(
        code: 'invalid_email',
        message: t('Неверный email', 'E-poçta nädogry'),
      );
    }
    _edits[account] = _editsOf(account)
      ..firstName = first
      ..lastName = last
      ..email = email == null || email.isEmpty ? null : email
      ..regionId = body['region_id'] as String? ?? _editsOf(account).regionId;
    return _profile(account);
  }

  static const maxNameLength = 50;

  /// Sends a code to [phone], the new number.
  Map<String, dynamic> startPhoneChange(
    String lang,
    String accessToken,
    String phone,
  ) {
    String t(String ru, String tm) => lang == 'tk' ? tm : ru;
    final account = _account(accessToken);
    if (phone == _editsOf(account).phone) {
      throw ServerException(
        code: 'same_phone',
        message: t('Это ваш текущий номер', 'Bu siziň häzirki belgiňiz'),
      );
    }
    final isTaken =
        phone == _knownPhone || _edits.values.any((e) => e.phone == phone);
    if (isTaken) {
      throw ServerException(
        code: 'phone_taken',
        message: t(
          'Этот номер уже привязан к другому аккаунту',
          'Bu belgi başga hasaba baglanan',
        ),
      );
    }
    final id = 'chg-${_nextRequest++}';
    _phoneChanges[id] = (account: account, phone: phone);
    return {
      'request_id': id,
      'code_length': codeLength,
      'destination': '+993 ${phone.substring(0, 2)} ** **${phone.substring(6)}',
    };
  }

  Map<String, dynamic> confirmPhoneChange(
    String lang,
    String requestId,
    String code,
  ) {
    final change = _phoneChanges[requestId];
    if (change == null || code != devCode) {
      throw ServerException(
        code: 'invalid_code',
        message: lang == 'tk' ? 'Kod nädogry' : 'Неверный код',
      );
    }
    _phoneChanges.remove(requestId);
    _edits[change.account] = _editsOf(change.account)..phone = change.phone;
    return _profile(change.account);
  }

  String _account(String accessToken) {
    if (!accessToken.startsWith(_tokenPrefix)) {
      throw const ServerException(code: 'unauthorized');
    }
    return accessToken.substring(_tokenPrefix.length);
  }

  _Edits _editsOf(String account) => _edits[account] ?? _Edits.seed(account);

  Map<String, dynamic> _profile(String account) {
    final isKnown = account == _knownPhone;
    final edits = _editsOf(account);
    final wallet = _wallet.open(account);
    return {
      'id': 'u-$account',
      'phone': edits.phone,
      'first_name': edits.firstName,
      'last_name': edits.lastName,
      'email': ?edits.email,
      'region_id': edits.regionId,
      'balance': wallet.balance,
      'debt': wallet.debt,
      'bonuses': isKnown ? 35 : 0,
      'is_wholesale': account.startsWith(wholesalePrefix),
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

class _Edits {
  _Edits.seed(String account)
    : phone = account,
      firstName = account == FakeAuthBackend._knownPhone ? 'Айна' : '',
      lastName = account == FakeAuthBackend._knownPhone ? 'Атаева' : '';

  String phone;
  String firstName;
  String lastName;
  String? email;
  String regionId = 'ashgabat';
}
