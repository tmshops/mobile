import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/auth/domain/entities/code_request.dart';
import 'package:tmshop/features/auth/domain/repositories/login_repository.dart';
import 'package:tmshop/features/auth/domain/usecases/login_use_cases.dart';
import 'package:tmshop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:tmshop/features/auth/presentation/widgets/login_view.dart';

import '../../helpers/pump_view.dart';

class _MockRequest extends Mock implements RequestCodeUseCase {}

class _MockVerify extends Mock implements VerifyCodeUseCase {}

class _MockLoginBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

final _request = CodeRequest(
  id: 'req-1',
  codeLength: 4,
  channel: CodeChannel.sms,
  destination: '+993 65 ** **56',
  resendAt: DateTime.now().add(const Duration(seconds: 60)),
);
const _profile = UserProfile(id: 'u', phone: '65123456');
const _wrongCode = ServerFailure(
  code: LoginErrorCodes.invalidCode,
  message: 'Неверный код. Осталось 2 попытки',
);

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);

  group('LoginBloc', () {
    late _MockRequest request;
    late _MockVerify verifyCode;

    setUp(() {
      request = _MockRequest();
      verifyCode = _MockVerify();
      when(
        () => request(
          languageCode: any(named: 'languageCode'),
          phone: any(named: 'phone'),
        ),
      ).thenAnswer((_) async => right(_request));
      when(
        () => verifyCode(
          languageCode: any(named: 'languageCode'),
          requestId: any(named: 'requestId'),
          code: any(named: 'code'),
        ),
      ).thenAnswer((_) async => right(_profile));
    });

    LoginBloc build() => LoginBloc(request, verifyCode);

    blocTest<LoginBloc, LoginState>(
      'without a full phone and consent only errors are shown',
      build: build,
      act: (bloc) => bloc
        ..add(const LoginEvent.phoneChanged('6512'))
        ..add(const LoginEvent.codeRequested(languageCode: 'ru')),
      verify: (bloc) {
        expect(bloc.state.showErrors, isTrue);
        expect(bloc.state.step, LoginStep.phone);
        verifyNever(
          () => request(
            languageCode: any(named: 'languageCode'),
            phone: any(named: 'phone'),
          ),
        );
      },
    );

    Future<void> toCode(LoginBloc bloc) async {
      bloc
        ..add(const LoginEvent.phoneChanged('65123456'))
        ..add(const LoginEvent.consentChanged(hasConsent: true))
        ..add(const LoginEvent.codeRequested(languageCode: 'ru'));
      await bloc.stream.firstWhere((s) => s.step == LoginStep.code);
    }

    blocTest<LoginBloc, LoginState>(
      'phone → code → signed in',
      build: build,
      act: (bloc) async {
        await toCode(bloc);
        bloc.add(
          const LoginEvent.codeSubmitted(languageCode: 'ru', code: '1234'),
        );
      },
      verify: (bloc) {
        expect(bloc.state.isDone, isTrue);
        verify(
          () =>
              verifyCode(languageCode: 'ru', requestId: 'req-1', code: '1234'),
        ).called(1);
      },
    );

    blocTest<LoginBloc, LoginState>(
      'a wrong code shows the server text; typing clears it',
      setUp: () => when(
        () => verifyCode(
          languageCode: any(named: 'languageCode'),
          requestId: any(named: 'requestId'),
          code: any(named: 'code'),
        ),
      ).thenAnswer((_) async => left(_wrongCode)),
      build: build,
      act: (bloc) async {
        await toCode(bloc);
        bloc.add(
          const LoginEvent.codeSubmitted(languageCode: 'ru', code: '0000'),
        );
        await bloc.stream.firstWhere((s) => s.failure != null);
        bloc.add(const LoginEvent.codeEdited());
      },
      verify: (bloc) {
        expect(bloc.state.failure, isNull);
        expect(bloc.state.isDone, isFalse);
      },
    );

    blocTest<LoginBloc, LoginState>(
      'an expired code is not sent again',
      build: build,
      seed: () => LoginState(
        phone: '65123456',
        step: LoginStep.code,
        request: _request,
        failure: const ServerFailure(code: LoginErrorCodes.codeExpired),
      ),
      act: (bloc) => bloc
        ..add(const LoginEvent.codeEdited())
        ..add(const LoginEvent.codeSubmitted(languageCode: 'ru', code: '1234')),
      verify: (bloc) {
        expect(bloc.state.isCodeExpired, isTrue);
        verifyNever(
          () => verifyCode(
            languageCode: any(named: 'languageCode'),
            requestId: any(named: 'requestId'),
            code: any(named: 'code'),
          ),
        );
      },
    );

    blocTest<LoginBloc, LoginState>(
      '«Изменить номер» goes back with the number kept',
      build: build,
      act: (bloc) async {
        await toCode(bloc);
        bloc.add(const LoginEvent.phoneEditRequested());
      },
      verify: (bloc) {
        expect(bloc.state.step, LoginStep.phone);
        expect(bloc.state.phone, '65123456');
      },
    );
  });

  group('LoginView', () {
    late _MockLoginBloc bloc;
    late int google;

    setUp(() {
      bloc = _MockLoginBloc();
      google = 0;
    });

    Future<void> pump(
      WidgetTester tester,
      LoginState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) {
      when(() => bloc.state).thenReturn(state);
      return pumpView(
        tester,
        LoginView(onReadPolicy: () {}, onGoogle: () => google++),
        providers: [BlocProvider<LoginBloc>.value(value: bloc)],
        locale: locale,
        textScale: textScale,
        width: width,
      );
    }

    testWidgets('phone step: errors after trying, Google is offered', (
      tester,
    ) async {
      await pump(tester, const LoginState(phone: '6512', showErrors: true));
      expect(find.text(ru.loginTitle), findsOneWidget);
      expect(find.text(ru.loginPhoneError), findsOneWidget);
      expect(find.text(ru.loginConsentError), findsOneWidget);

      await tester.tap(find.text(ru.loginGetCode));
      verify(
        () => bloc.add(const LoginEvent.codeRequested(languageCode: 'ru')),
      ).called(1);

      await tester.ensureVisible(find.text(ru.loginGoogle));
      await tester.tap(find.text(ru.loginGoogle));
      expect(google, 1);
    });

    testWidgets('code step: where it went, the timer, the error', (
      tester,
    ) async {
      await pump(
        tester,
        LoginState(
          phone: '65123456',
          step: LoginStep.code,
          request: _request,
          failure: _wrongCode,
        ),
      );
      expect(
        find.text(ru.loginCodeSent('sms', _request.destination)),
        findsOneWidget,
      );
      expect(find.byType(OtpField), findsOneWidget);
      expect(find.text(_wrongCode.message!), findsOneWidget);
      expect(find.textContaining(ru.loginResendIn('').trim()), findsOneWidget);

      await tester.tap(find.text(ru.loginChangePhone));
      verify(() => bloc.add(const LoginEvent.phoneEditRequested())).called(1);
    });

    testWidgets('a blocked customer sees the server message', (tester) async {
      await pump(
        tester,
        const LoginState(
          phone: '65129999',
          failure: ServerFailure(
            code: LoginErrorCodes.blocked,
            message: 'Свяжитесь с поддержкой',
          ),
        ),
      );
      expect(find.text(ru.loginBlockedTitle), findsOneWidget);
      expect(find.text('Свяжитесь с поддержкой'), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          const LoginState(phone: '6512', showErrors: true),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await scrollThrough(tester, find.byType(Scrollable).first);
        expect(tester.takeException(), isNull);

        await pump(
          tester,
          LoginState(step: LoginStep.code, request: _request),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        expect(tester.takeException(), isNull);
      });
    }
  });
}
