import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/session_data.dart';
import 'package:tmshop/core/auth/session_repository.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/dev/fake_backend/fake_auth_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_wallet_backend.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/features/profile/data/datasources/profile_edit_remote_data_source.dart';
import 'package:tmshop/features/profile/data/repositories/profile_edit_repository_impl.dart';
import 'package:tmshop/features/profile/domain/entities/profile_edit.dart';
import 'package:tmshop/features/profile/domain/repositories/profile_edit_repository.dart';
import 'package:tmshop/features/profile/presentation/bloc/phone_change_cubit.dart';
import 'package:tmshop/features/profile/presentation/bloc/profile_edit_cubit.dart';
import 'package:tmshop/features/profile/presentation/widgets/profile_edit_view.dart';

import '../../helpers/mock_blocs.dart';
import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements ProfileEditRemoteDataSource {}

class _MockSession extends Mock implements SessionRepository {}

class _MockRepository extends Mock implements ProfileEditRepository {}

class _MockEditCubit extends MockCubit<ProfileEditState>
    implements ProfileEditCubit {}

const _aina = UserProfile(
  id: 'u-65123456',
  phone: '65123456',
  firstName: 'Айна',
  lastName: 'Атаева',
  regionId: 'ashgabat',
);

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  setUpAll(() {
    registerFallbackValue(_aina);
    registerFallbackValue(const ProfileDraft());
  });

  group('fake server', () {
    late FakeAuthBackend backend;
    const token = 'fake.65123456';

    setUp(
      () => backend = FakeAuthBackend(FakeWalletBackend(FakeOrdersBackend())),
    );

    test('edits are kept and come back with the profile', () {
      backend.updateProfile('ru', token, {
        'first_name': ' Мая ',
        'last_name': 'Ораз',
        'email': 'maya@example.com',
        'region_id': 'mary',
      });
      final profile = UserProfileModel.fromJson(
        backend.profile(token),
      ).toEntity();
      expect(profile.fullName, 'Мая Ораз');
      expect(profile.email, 'maya@example.com');
      expect(profile.regionId, 'mary');
      expect(
        () => backend.updateProfile('ru', token, {'email': 'nope'}),
        throwsA(isA<ServerException>()),
      );
    });

    test('a new number needs a code; the account stays the same', () {
      expect(
        () => backend.startPhoneChange('ru', token, '65123456'),
        throwsA(isA<ServerException>()),
      );
      final request = backend.startPhoneChange('ru', token, '61550000');
      final id = request['request_id'] as String;
      expect(
        () => backend.confirmPhoneChange('ru', id, '0000'),
        throwsA(isA<ServerException>()),
      );
      backend.confirmPhoneChange('ru', id, FakeAuthBackend.devCode);
      final profile = backend.profile(token);
      expect(profile['phone'], '61550000');
      expect(profile['id'], 'u-65123456');
      expect(profile['balance'], 120, reason: 'same wallet');
      expect(
        () => backend.startPhoneChange('ru', 'fake.65000000', '61550000'),
        throwsA(isA<ServerException>()),
        reason: 'the number is taken now',
      );
    });
  });

  group('ProfileEditRepositoryImpl', () {
    late _MockRemote remote;
    late _MockSession session;
    late ProfileEditRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      session = _MockSession();
      when(() => session.update(any())).thenAnswer((_) async {});
      repository = ProfileEditRepositoryImpl(remote, session);
    });

    test('a saved profile becomes the session profile', () async {
      when(
        () => remote.save('ru', any()),
      ).thenAnswer((_) async => UserProfileModel.fromEntity(_aina));
      final result = await repository.save(
        'ru',
        const ProfileDraft(firstName: ' Айна ', lastName: 'Атаева'),
      );
      expect(result.toNullable(), _aina);
      verify(() => session.update(_aina)).called(1);
      final body =
          verify(() => remote.save('ru', captureAny())).captured.single
              as Map<String, dynamic>;
      expect(body['first_name'], 'Айна');
      expect(body['email'], isNull, reason: 'empty email is removed');
    });

    test('a failure leaves the session alone', () async {
      when(
        () => remote.confirmPhoneChange('ru', 'r', '0000'),
      ).thenThrow(const ServerException(message: 'Неверный код'));
      final result = await repository.confirmPhoneChange('ru', 'r', '0000');
      expect(
        result.getLeft().toNullable(),
        isA<ServerFailure>().having(
          (f) => f.message,
          'message',
          'Неверный код',
        ),
      );
      verifyNever(() => session.update(any()));
    });
  });

  group('cubits', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    test('«Сохранить» needs a real, valid change', () async {
      when(
        () => repository.save('ru', any()),
      ).thenAnswer((_) async => right(_aina));
      final cubit = ProfileEditCubit(repository)..start(_aina);
      expect(cubit.state.canSave, isFalse);

      cubit.change(cubit.state.draft.copyWith(firstName: 'Айна  '));
      expect(cubit.state.canSave, isFalse, reason: 'only spaces');

      cubit.change(cubit.state.draft.copyWith(email: 'bad'));
      expect(cubit.state.canSave, isFalse, reason: 'bad email');

      cubit.change(cubit.state.draft.copyWith(email: 'a@b.tm'));
      expect(cubit.state.canSave, isTrue);
      await cubit.save('ru');
      expect(cubit.state.isChanged, isFalse);
      expect(cubit.state.saved.email, 'a@b.tm');
      await cubit.close();
    });

    test('a failed save keeps the edits', () async {
      when(
        () => repository.save('ru', any()),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = ProfileEditCubit(repository)
        ..start(_aina)
        ..change(const ProfileDraft(firstName: 'Мая'));
      await cubit.save('ru');
      expect(cubit.state.failure, isA<NetworkFailure>());
      expect(cubit.state.isChanged, isTrue);
      await cubit.close();
    });

    test('phone change: number, wrong code, other number, done', () async {
      when(() => repository.startPhoneChange('ru', '61550000')).thenAnswer(
        (_) async => right(
          const PhoneChange(
            requestId: 'r',
            codeLength: 4,
            destination: '+993 61 ** **00',
          ),
        ),
      );
      when(() => repository.confirmPhoneChange('ru', 'r', '0000')).thenAnswer(
        (_) async => left(const ServerFailure(message: 'Неверный код')),
      );
      when(
        () => repository.confirmPhoneChange('ru', 'r', '1234'),
      ).thenAnswer((_) async => right(_aina));
      final cubit = PhoneChangeCubit(repository);
      await cubit.send('ru', '6155');
      verifyNever(() => repository.startPhoneChange(any(), any()));

      await cubit.send('ru', '61550000');
      expect(cubit.state.step, PhoneChangeStep.code);
      await cubit.confirm('ru', '0000');
      expect(cubit.state.failure, isA<ServerFailure>());
      cubit.back();
      expect(cubit.state.step, PhoneChangeStep.phone);
      await cubit.send('ru', '61550000');
      await cubit.confirm('ru', '1234');
      expect(cubit.state.step, PhoneChangeStep.done);
      await cubit.close();
    });
  });

  group('ProfileEditView', () {
    late _MockEditCubit cubit;
    late GlobalCubits cubits;
    late int saved;
    final start = ProfileDraft.of(_aina);

    setUp(() {
      cubit = _MockEditCubit();
      saved = 0;
      when(() => cubit.save(any())).thenAnswer((_) async => right(_aina));
    });

    Future<void> pump(
      WidgetTester tester,
      ProfileEditState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      cubits = GlobalCubits(
        locale: locale,
        auth: const AuthState.signedIn(_aina),
      );
      await pumpView(
        tester,
        ProfileEditView(onSaved: () => saved++),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<ProfileEditCubit>.value(value: cubit)],
      );
    }

    testWidgets('fields, initials, phone; save is off until a change', (
      tester,
    ) async {
      await pump(tester, ProfileEditState(draft: start, saved: start));
      expect(find.text('АА'), findsOneWidget);
      expect(find.text('Айна'), findsOneWidget);
      expect(find.text('+993 65 12 34 56'), findsOneWidget);
      final save = find.widgetWithText(FilledButton, ru.profileEditSave);
      expect(tester.widget<FilledButton>(save).onPressed, isNull);

      await tester.enterText(find.widgetWithText(TextField, 'Айна'), 'Мая');
      verify(() => cubit.change(start.copyWith(firstName: 'Мая'))).called(1);
    });

    testWidgets('a changed profile saves, toasts and leaves', (tester) async {
      final draft = start.copyWith(firstName: 'Мая');
      await pump(tester, ProfileEditState(draft: draft, saved: start));
      await tester.tap(find.text(ru.profileEditSave));
      await tester.pump();
      verify(() => cubit.save('ru')).called(1);
      expect(saved, 1);
      expect(find.text(ru.profileEditSaved), findsOneWidget);
    });

    testWidgets('a bad email is flagged', (tester) async {
      final draft = start.copyWith(email: 'nope');
      await pump(tester, ProfileEditState(draft: draft, saved: start));
      expect(find.text(ru.profileEditBadEmail), findsOneWidget);
    });

    testWidgets('«Изменить» opens the new-number sheet', (tester) async {
      getIt.registerFactory<PhoneChangeCubit>(
        () => PhoneChangeCubit(_MockRepository()),
      );
      addTearDown(getIt.reset);
      await pump(tester, ProfileEditState(draft: start, saved: start));
      await tester.tap(find.text(ru.profileEditChange));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));
      expect(find.text(ru.profileEditPhoneTitle), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          ProfileEditState(draft: start, saved: start),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        expect(find.text(tk.profileEditTitle), findsOneWidget);
        await scrollThrough(tester, find.byType(ListView), steps: 2);
        expect(tester.takeException(), isNull);
      });
    }
  });
}
