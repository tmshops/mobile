import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/session_data.dart';
import 'package:tmshop/core/auth/session_repository.dart';
import 'package:tmshop/core/auth/token_storage.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/dev/fake_backend/fake_auth_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_wallet_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';

class _MemoryTokens implements TokenStorage {
  SessionTokens? tokens;

  @override
  Future<SessionTokens?> read() async => tokens;

  @override
  Future<void> write(SessionTokens value) async => tokens = value;

  @override
  Future<void> clear() async => tokens = null;
}

class _MockRemote extends Mock implements SessionRemoteDataSource {}

class _MockSession extends Mock implements SessionRepository {}

const _profile = UserProfile(
  id: 'u-65123456',
  phone: '65123456',
  firstName: 'Айна',
  lastName: 'Атаева',
  balance: 120,
);
const _tokens = SessionTokens(access: 'fake.65123456', refresh: 'r');

void main() {
  group('SessionRepositoryImpl', () {
    late Directory dir;
    late LazyBox<String> box;
    late _MemoryTokens tokens;
    late _MockRemote remote;
    late SessionRepositoryImpl repository;

    setUp(() async {
      dir = await Directory.systemTemp.createTemp('session_test');
      Hive.init(dir.path);
      box = await Hive.openLazyBox<String>('account');
      tokens = _MemoryTokens();
      remote = _MockRemote();
      when(() => remote.revoke(any())).thenAnswer((_) async {});
      repository = SessionRepositoryImpl(remote, tokens, box);
    });

    tearDown(() async {
      await Hive.close();
      await dir.delete(recursive: true);
    });

    test('a started session is restored offline on the next launch', () async {
      await repository.start(_tokens, _profile);

      final next = SessionRepositoryImpl(remote, tokens, box);
      expect(await next.restore(), _profile);
      verifyNever(() => remote.profile(any(), any()));
    });

    test('without tokens the app opens as a guest', () async {
      await box.put('profile', '{}');
      expect(await repository.restore(), isNull);
    });

    test('a dead session signs out and wipes personal data', () async {
      await repository.start(_tokens, _profile);
      await box.put('orders:active:ru', '{}');
      when(
        () => remote.profile(any(), any()),
      ).thenThrow(const ServerException(code: 'unauthorized'));
      final changes = <UserProfile?>[];
      repository.changes.listen(changes.add);

      final result = await repository.refresh('ru');

      expect(result.getLeft().toNullable(), isA<ServerFailure>());
      expect(tokens.tokens, isNull);
      expect(box.keys, isEmpty);
      await pumpEventQueue();
      expect(changes, [null]);
    });

    test('offline refresh keeps the session', () async {
      await repository.start(_tokens, _profile);
      when(
        () => remote.profile(any(), any()),
      ).thenThrow(const NetworkException());

      final result = await repository.refresh('ru');

      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
      expect(tokens.tokens, isNotNull);
    });

    test('sign-out works offline too', () async {
      await repository.start(_tokens, _profile);
      when(() => remote.revoke(any())).thenThrow(const NetworkException());
      await repository.signOut();
      expect(tokens.tokens, isNull);
      expect(await repository.restore(), isNull);
    });
  });

  group('AuthCubit', () {
    late _MockSession session;

    setUp(() {
      session = _MockSession();
      when(() => session.changes).thenAnswer((_) => const Stream.empty());
      when(
        () => session.refresh(any()),
      ).thenAnswer((_) async => right(_profile));
    });

    blocTest<AuthCubit, AuthState>(
      'no saved session → guest, without asking the server',
      setUp: () => when(() => session.restore()).thenAnswer((_) async => null),
      build: () => AuthCubit(session),
      act: (cubit) => cubit.restore('ru'),
      expect: () => const [AuthState.guest()],
      verify: (_) => verifyNever(() => session.refresh(any())),
    );

    blocTest<AuthCubit, AuthState>(
      'follows the session: signed in, then signed out',
      setUp: () => when(
        () => session.changes,
      ).thenAnswer((_) => Stream.fromIterable(const [_profile, null])),
      build: () => AuthCubit(session),
      expect: () => const [AuthState.signedIn(_profile), AuthState.guest()],
    );

    blocTest<AuthCubit, AuthState>(
      'a saved session is refreshed in the background',
      setUp: () =>
          when(() => session.restore()).thenAnswer((_) async => _profile),
      build: () => AuthCubit(session),
      act: (cubit) => cubit.restore('tk'),
      verify: (_) => verify(() => session.refresh('tk')).called(1),
    );
  });

  group('FakeAuthBackend', () {
    test('right code signs in; wrong ones count down to a new code', () {
      final backend = FakeAuthBackend(FakeWalletBackend(FakeOrdersBackend()));
      final request = backend.requestCode('ru', '65123456');
      final id = request['request_id'] as String;

      expect(
        () => backend.verify('ru', id, '0000'),
        throwsA(
          isA<ServerException>()
              .having((e) => e.code, 'code', 'invalid_code')
              .having((e) => e.message, 'message', contains('2')),
        ),
      );
      final ok = backend.verify('ru', id, FakeAuthBackend.devCode);
      expect((ok['profile'] as Map)['first_name'], 'Айна');
      expect(
        () => backend.verify('ru', id, FakeAuthBackend.devCode),
        throwsA(
          isA<ServerException>().having((e) => e.code, 'code', 'code_expired'),
        ),
      );
    });

    test('a new code waits 60 s; blocked phones are refused', () {
      var now = DateTime(2026, 11, 12, 10);
      final backend = FakeAuthBackend(
        FakeWalletBackend(FakeOrdersBackend()),
        now: () => now,
      );
      backend.requestCode('tk', '65000001');
      expect(
        () => backend.requestCode('tk', '65000001'),
        throwsA(
          isA<ServerException>().having(
            (e) => e.code,
            'code',
            'too_many_requests',
          ),
        ),
      );
      now = now.add(FakeAuthBackend.resendAfter);
      expect(backend.requestCode('tk', '65000001'), isNotNull);
      expect(
        () => backend.requestCode('ru', '65129999'),
        throwsA(
          isA<ServerException>().having((e) => e.code, 'code', 'blocked'),
        ),
      );
    });

    test('the profile parses into the entity', () {
      final model = UserProfileModel.fromJson(
        FakeAuthBackend(
          FakeWalletBackend(FakeOrdersBackend()),
        ).profile('fake.61127777'),
      );
      final profile = model.toEntity();
      expect(profile.isWholesale, isTrue);
      expect(profile.debt, greaterThan(0));
      expect(profile.hasName, isFalse);
      expect(UserProfileModel.fromEntity(profile), model);
    });
  });

  test('initials and full name skip missing parts', () {
    expect(_profile.initials, 'АА');
    expect(
      const UserProfile(id: '1', phone: '1', lastName: 'Атаев').fullName,
      'Атаев',
    );
    expect(const UserProfile(id: '1', phone: '1').initials, isEmpty);
  });
}
