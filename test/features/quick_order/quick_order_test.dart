import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/session_repository.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/features/quick_order/data/datasources/quick_order_remote_data_source.dart';
import 'package:tmshop/features/quick_order/data/repositories/quick_order_repository_impl.dart';
import 'package:tmshop/features/quick_order/domain/entities/quick_order.dart';
import 'package:tmshop/features/quick_order/domain/repositories/quick_order_repository.dart';
import 'package:tmshop/features/quick_order/presentation/bloc/quick_order_cubit.dart';
import 'package:tmshop/features/quick_order/presentation/widgets/quick_order_sheet.dart';

import '../../helpers/mock_blocs.dart';
import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements QuickOrderRemoteDataSource {}

class _MockSession extends Mock implements SessionRepository {}

class _MockRepository extends Mock implements QuickOrderRepository {}

class _MockCubit extends MockCubit<QuickOrderState>
    implements QuickOrderCubit {}

const _line = CartItem(
  productId: 'p1',
  skuId: 'p1-black',
  title: 'Рюкзак',
  imageUrl: '',
  price: 1216,
  quantity: 1,
  comment: 'проверьте цвет',
);

const _code = QuickOrderCode(
  requestId: 'req-1',
  codeLength: 4,
  destination: '+993 65 ** **56',
);

const _profileJson = {
  'id': 'u-65123456',
  'phone': '65123456',
  'first_name': '',
  'last_name': '',
  'region_id': 'ashgabat',
  'balance': 0,
  'debt': 0,
  'bonuses': 0,
  'is_wholesale': false,
};

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  setUpAll(() {
    registerFallbackValue(const SessionTokens(access: '', refresh: ''));
    registerFallbackValue(const UserProfile(id: '', phone: ''));
    registerFallbackValue(<CartItem>[]);
  });

  group('fake server', () {
    test('a quick order shows in «Мои заказы» and can be cancelled', () {
      final orders = FakeOrdersBackend();
      final number = orders.recordQuickOrder([
        {'product_id': 'p1', 'quantity': 2},
      ]);
      final order = orders.order('ru', number);
      expect((order['status'] as Map)['code'], 'quick_order');
      expect(order['can_cancel'], isTrue);
      expect(order['receiving'], 'Уточнит оператор');
      final active = orders.orders('ru', 'active')['orders'] as List;
      expect(active.map((o) => (o as Map)['number']), contains(number));
      expect(orders.recordQuickOrder(const []), isNot(number));
    });
  });

  group('QuickOrderRepositoryImpl', () {
    late _MockRemote remote;
    late _MockSession session;
    late QuickOrderRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      session = _MockSession();
      when(() => session.start(any(), any())).thenAnswer((_) async {});
      repository = QuickOrderRepositoryImpl(remote, session);
    });

    test('a guest is signed in and gets the order number', () async {
      when(
        () => remote.placeAsGuest(
          'ru',
          requestId: 'req-1',
          code: '1234',
          lines: any(named: 'lines'),
        ),
      ).thenAnswer(
        (_) async => {
          'order_number': '20001',
          'access_token': 'a',
          'refresh_token': 'r',
          'profile': _profileJson,
        },
      );
      final result = await repository.confirmAsGuest(
        'ru',
        requestId: 'req-1',
        code: '1234',
        lines: const [_line],
      );
      expect(result.toNullable(), '20001');
      final started = verify(
        () => session.start(captureAny(), captureAny()),
      ).captured;
      expect((started[0] as SessionTokens).access, 'a');
      expect((started[1] as UserProfile).phone, '65123456');
      final body =
          verify(
                () => remote.placeAsGuest(
                  'ru',
                  requestId: 'req-1',
                  code: '1234',
                  lines: captureAny(named: 'lines'),
                ),
              ).captured.single
              as List<Map<String, dynamic>>;
      expect(body.single, {
        'product_id': 'p1',
        'sku_id': 'p1-black',
        'quantity': 1,
        'comment': 'проверьте цвет',
      });
    });

    test('a wrong code leaves the session alone', () async {
      when(
        () => remote.placeAsGuest(
          'ru',
          requestId: any(named: 'requestId'),
          code: any(named: 'code'),
          lines: any(named: 'lines'),
        ),
      ).thenThrow(
        const ServerException(code: 'invalid_code', message: 'Неверный код'),
      );
      final result = await repository.confirmAsGuest(
        'ru',
        requestId: 'req-1',
        code: '0000',
        lines: const [_line],
      );
      expect(
        result.getLeft().toNullable(),
        isA<ServerFailure>().having(
          (f) => f.message,
          'message',
          'Неверный код',
        ),
      );
      verifyNever(() => session.start(any(), any()));
    });

    test('offline is a network failure', () async {
      when(() => remote.place('ru', any())).thenThrow(const NetworkException());
      final result = await repository.place('ru', const [_line]);
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  group('QuickOrderCubit', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    blocTest<QuickOrderCubit, QuickOrderState>(
      'guest: phone → code → done',
      build: () {
        when(
          () => repository.requestCode('ru', '65123456'),
        ).thenAnswer((_) async => right(_code));
        when(
          () => repository.confirmAsGuest(
            'ru',
            requestId: 'req-1',
            code: '1234',
            lines: const [_line],
          ),
        ).thenAnswer((_) async => right('20001'));
        return QuickOrderCubit(repository);
      },
      act: (cubit) async {
        await cubit.requestCode('ru', '6512');
        await cubit.requestCode('ru', '65123456');
        await cubit.confirmCode('ru', '1234', const [_line]);
      },
      expect: () => [
        const QuickOrderState(isBusy: true),
        const QuickOrderState(step: QuickOrderStep.code, code: _code),
        const QuickOrderState(
          step: QuickOrderStep.code,
          code: _code,
          isBusy: true,
        ),
        const QuickOrderState(step: QuickOrderStep.done, orderNumber: '20001'),
      ],
      verify: (_) =>
          verify(() => repository.requestCode(any(), any())).called(1),
    );

    blocTest<QuickOrderCubit, QuickOrderState>(
      'a wrong code stays on the code step; typing clears the error',
      build: () {
        when(
          () => repository.confirmAsGuest(
            'ru',
            requestId: 'req-1',
            code: '0000',
            lines: any(named: 'lines'),
          ),
        ).thenAnswer((_) async => left(const ServerFailure(message: 'Нет')));
        return QuickOrderCubit(repository);
      },
      seed: () => const QuickOrderState(step: QuickOrderStep.code, code: _code),
      act: (cubit) async {
        await cubit.confirmCode('ru', '0000', const [_line]);
        cubit.codeEdited();
      },
      skip: 1,
      expect: () => [
        const QuickOrderState(
          step: QuickOrderStep.code,
          code: _code,
          failure: ServerFailure(message: 'Нет'),
        ),
        const QuickOrderState(step: QuickOrderStep.code, code: _code),
      ],
    );

    blocTest<QuickOrderCubit, QuickOrderState>(
      'signed in: one tap places the order',
      build: () {
        when(
          () => repository.place('ru', const [_line]),
        ).thenAnswer((_) async => right('20002'));
        return QuickOrderCubit(repository);
      },
      act: (cubit) => cubit.place('ru', const [_line]),
      expect: () => [
        const QuickOrderState(isBusy: true),
        const QuickOrderState(step: QuickOrderStep.done, orderNumber: '20002'),
      ],
    );

    blocTest<QuickOrderCubit, QuickOrderState>(
      '«Другой номер» goes back to the phone',
      build: () => QuickOrderCubit(repository),
      seed: () => const QuickOrderState(step: QuickOrderStep.code, code: _code),
      act: (cubit) => cubit.back(),
      expect: () => [const QuickOrderState()],
    );
  });

  group('QuickOrderSheet', () {
    late _MockCubit cubit;

    setUp(() {
      cubit = _MockCubit();
      when(() => cubit.requestCode(any(), any())).thenAnswer((_) async {});
      when(() => cubit.place(any(), any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      QuickOrderState state, {
      AuthState auth = const AuthState.guest(),
      List<CartItem> lines = const [_line],
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      await pumpView(
        tester,
        Scaffold(body: QuickOrderSheet(lines: lines)),
        cubits: GlobalCubits(locale: locale, auth: auth),
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<QuickOrderCubit>.value(value: cubit)],
      );
    }

    testWidgets('guest: summary, phone, then «Получить код»', (tester) async {
      await pump(tester, const QuickOrderState());
      expect(find.text(ru.quickOrderTitle), findsOneWidget);
      expect(find.text(ru.quickOrderText), findsOneWidget);
      expect(find.text('Рюкзак'), findsOneWidget);
      expect(find.text(MoneyFormat.tmt(ru, 1216)), findsOneWidget);
      final getCode = find.widgetWithText(FilledButton, ru.quickOrderGetCode);
      expect(tester.widget<FilledButton>(getCode).onPressed, isNull);

      await tester.enterText(find.byType(TextField), '65123456');
      await tester.pump();
      await tester.tap(getCode);
      verify(() => cubit.requestCode('ru', '65123456')).called(1);
    });

    testWidgets('several lines read as «N товаров · сумма»', (tester) async {
      await pump(
        tester,
        const QuickOrderState(),
        lines: [
          _line,
          _line.copyWith(skuId: 'p1-red', quantity: 2),
        ],
      );
      expect(
        find.text(ru.quickOrderLines(3, MoneyFormat.tmt(ru, 3648))),
        findsOneWidget,
      );
    });

    testWidgets('signed in: the phone is shown, one tap confirms', (
      tester,
    ) async {
      await pump(
        tester,
        const QuickOrderState(),
        auth: const AuthState.signedIn(UserProfile(id: 'u', phone: '65123456')),
      );
      expect(find.byType(TextField), findsNothing);
      expect(find.text('+993 65 12 34 56'), findsOneWidget);
      await tester.tap(find.text(ru.quickOrderConfirm));
      verify(() => cubit.place('ru', const [_line])).called(1);
    });

    testWidgets('code step shows where the code went and the error', (
      tester,
    ) async {
      await pump(
        tester,
        const QuickOrderState(
          step: QuickOrderStep.code,
          code: _code,
          failure: ServerFailure(message: 'Неверный код'),
        ),
      );
      expect(find.text(ru.quickOrderCodeSent('+993 65 ** **56')), findsOne);
      expect(find.text('Неверный код'), findsOneWidget);
      expect(find.text(ru.quickOrderOtherNumber), findsOneWidget);
    });

    testWidgets('done: number, next step and both buttons', (tester) async {
      await pump(
        tester,
        const QuickOrderState(step: QuickOrderStep.done, orderNumber: '20001'),
      );
      await tester.pump(const Duration(seconds: 1));
      expect(find.text(ru.quickOrderDoneTitle('20001')), findsOneWidget);
      expect(find.text(ru.quickOrderDoneText), findsOneWidget);
      expect(find.text(ru.quickOrderToOrder), findsOneWidget);
      expect(find.text(ru.quickOrderContinue), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      for (final step in QuickOrderStep.values) {
        testWidgets(
          '${step.name} fits in Turkmen at 1.3× on ${width.toInt()} dp',
          (tester) async {
            await pump(
              tester,
              QuickOrderState(
                step: step,
                code: _code,
                orderNumber: step == QuickOrderStep.done ? '20001' : null,
              ),
              locale: AppLocales.tk,
              textScale: 1.3,
              width: width,
            );
            await tester.pump(const Duration(seconds: 1));
            expect(find.text(tk.quickOrderTitle), findsOneWidget);
            expect(tester.takeException(), isNull);
          },
        );
      }
    }
  });

  group('showQuickOrderSheet', () {
    // The thumbnail shimmers forever: step time instead of settling.
    Future<void> settle(WidgetTester tester) async {
      await tester.pump();
      await tester.pump(const Duration(seconds: 1));
    }

    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      getIt.registerFactory<QuickOrderCubit>(() => QuickOrderCubit(repository));
      when(
        () => repository.place('ru', const [_line]),
      ).thenAnswer((_) async => right('20002'));
    });

    tearDown(getIt.reset);

    Future<List<QuickOrderResult?>> pump(WidgetTester tester) async {
      final results = <QuickOrderResult?>[];
      await pumpView(
        tester,
        Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () async => results.add(
                await showQuickOrderSheet(context, lines: const [_line]),
              ),
              child: const Text('open'),
            ),
          ),
        ),
        cubits: GlobalCubits(
          auth: const AuthState.signedIn(
            UserProfile(id: 'u', phone: '65123456'),
          ),
        ),
      );
      await tester.tap(find.text('open'));
      await settle(tester);
      await tester.tap(find.text(ru.quickOrderConfirm));
      await settle(tester);
      return results;
    }

    testWidgets('«К заказу» reports the order to open', (tester) async {
      final results = await pump(tester);
      await tester.tap(find.text(ru.quickOrderToOrder));
      await settle(tester);
      expect(results, [(orderNumber: '20002', wantsOrder: true)]);
    });

    testWidgets('closing after the order still reports it as placed', (
      tester,
    ) async {
      final results = await pump(tester);
      await tester.tap(find.text(ru.quickOrderContinue));
      await settle(tester);
      expect(results, [(orderNumber: '20002', wantsOrder: false)]);
    });

    testWidgets('closing before the order reports nothing', (tester) async {
      final results = <QuickOrderResult?>[];
      await pumpView(
        tester,
        Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () async => results.add(
                await showQuickOrderSheet(context, lines: const [_line]),
              ),
              child: const Text('open'),
            ),
          ),
        ),
      );
      await tester.tap(find.text('open'));
      await settle(tester);
      await tester.tap(find.byTooltip(ru.actionClose));
      await settle(tester);
      expect(results, [null]);
    });
  });
}
