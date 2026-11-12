import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart' show right;
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/auth/auth_cubit.dart';
import 'package:tmshop/core/auth/user_profile.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/features/wallet/domain/entities/wallet.dart';
import 'package:tmshop/features/wallet/presentation/bloc/balance_cubit.dart';
import 'package:tmshop/features/wallet/presentation/bloc/surcharges_cubit.dart';
import 'package:tmshop/features/wallet/presentation/bloc/wallet_payment_cubit.dart';
import 'package:tmshop/features/wallet/presentation/pages/wallet_payment_page.dart';
import 'package:tmshop/features/wallet/presentation/widgets/balance_view.dart';
import 'package:tmshop/features/wallet/presentation/widgets/surcharges_view.dart';

import '../../helpers/mock_blocs.dart';
import '../../helpers/pump_view.dart';
import '../../helpers/wallet_fixtures.dart';

class _MockBalanceCubit extends MockCubit<BalanceState>
    implements BalanceCubit {}

class _MockSurchargesCubit extends MockCubit<SurchargesState>
    implements SurchargesCubit {}

class _MockPaymentCubit extends MockCubit<WalletPaymentState>
    implements WalletPaymentCubit {}

const _customer = AuthState.signedIn(UserProfile(id: 'u', phone: '65123456'));

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  setUpAll(() {
    registerFallbackValue(PayMethod.card);
    registerFallbackValue(weightBill);
    registerFallbackValue(const WalletPayment.topUp(paymentId: '', amount: 0));
  });

  /// Lets sheets, dialogs and toasts finish their animation.
  Future<void> settle(WidgetTester tester) async {
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
  }

  group('BalanceView', () {
    late _MockBalanceCubit cubit;
    late GlobalCubits cubits;
    late List<Object> events;

    final loaded = BalanceState(
      summary: const WalletSummary(balance: 120, debt: 86),
      operations: operationsPage(0, 4).items,
      isLoading: false,
    );

    setUp(() {
      cubit = _MockBalanceCubit();
      events = [];
      when(() => cubit.load(any())).thenAnswer((_) async {});
      when(() => cubit.loadMore(any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      BalanceState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      cubits = GlobalCubits(locale: locale, auth: _customer);
      await pumpView(
        tester,
        BalanceView(
          onPayDebt: () => events.add('debt'),
          onOpenOrder: events.add,
          onOpenPayment: (payment) async => events.add(payment),
          now: walletNow,
        ),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<BalanceCubit>.value(value: cubit)],
      );
    }

    testWidgets('hero, debt and operations by day', (tester) async {
      await pump(tester, loaded);
      expect(find.text(MoneyFormat.tmt(ru, 120)), findsOneWidget);
      expect(find.text(ru.walletDebt(MoneyFormat.tmt(ru, 86))), findsOneWidget);
      expect(find.text(ru.dateToday), findsOneWidget);
      expect(find.text(ru.dateYesterday), findsOneWidget);
      expect(find.text('+${MoneyFormat.tmt(ru, 100)}'), findsNWidgets(2));
      expect(find.text('−${MoneyFormat.tmt(ru, 52)}'), findsNWidgets(2));

      await tester.tap(find.text(ru.walletPayDebt));
      await tester.tap(find.text('Доплата по заказу №10225').first);
      expect(events, ['debt', '10225']);
    });

    testWidgets('no debt, no debt row; empty history says so', (tester) async {
      await pump(
        tester,
        const BalanceState(
          summary: WalletSummary(balance: 0, debt: 0),
          isLoading: false,
        ),
      );
      expect(find.text(ru.walletPayDebt), findsNothing);
      expect(find.text(ru.walletNoOperations), findsOneWidget);
    });

    testWidgets('top-up: range check, quick amount, card payment', (
      tester,
    ) async {
      await pump(tester, loaded);
      when(() => cubit.topUp('ru', 300)).thenAnswer((_) async => right('p9'));
      await tester.tap(find.text(ru.walletTopUp));
      await settle(tester);

      await tester.enterText(find.byType(TextField), '5');
      await tester.pump();
      final range = ru.walletTopUpRange(
        MoneyFormat.group(10),
        MoneyFormat.group(10000),
      );
      expect(find.text(range), findsWidgets);
      final button = find.widgetWithText(FilledButton, ru.walletTopUpByCard);
      expect(tester.widget<FilledButton>(button).onPressed, isNull);

      await tester.tap(find.text(MoneyFormat.tmt(ru, 300)));
      await tester.pump();
      await tester.tap(find.text(ru.walletTopUpByCard));
      await settle(tester);

      expect(events, [const WalletPayment.topUp(paymentId: 'p9', amount: 300)]);
      verify(() => cubit.load('ru')).called(1);
      verify(() => cubits.auth.refresh('ru')).called(1);
    });

    testWidgets('a failed next page offers «Повторить»', (tester) async {
      await pump(
        tester,
        loaded.copyWith(nextCursor: '4', moreFailure: const NetworkFailure()),
      );
      await scrollThrough(tester, find.byType(CustomScrollView), steps: 2);
      expect(find.text(ru.walletLoadMoreFailed), findsOneWidget);
      // No automatic retry loop after a failure.
      verifyNever(() => cubit.loadMore(any()));
      await tester.tap(find.text(ru.actionRetry));
      verify(() => cubit.loadMore('ru')).called(1);
    });

    testWidgets('offline first load shows the offline state', (tester) async {
      await pump(
        tester,
        const BalanceState(isLoading: false, failure: NetworkFailure()),
      );
      expect(find.text(ru.offlineTitle), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          loaded,
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        expect(find.text(tk.walletTopUp), findsOneWidget);
        await scrollThrough(tester, find.byType(CustomScrollView), steps: 3);
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('SurchargesView', () {
    late _MockSurchargesCubit cubit;
    late GlobalCubits cubits;
    late List<Object> events;

    SurchargesState ready({int balance = 120}) => SurchargesState(
      isLoading: false,
      surcharges: [weightBill, priceBill],
      refunds: sampleRefunds,
      balance: balance,
    );

    setUp(() {
      cubit = _MockSurchargesCubit();
      events = [];
      when(() => cubit.load(any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      SurchargesState state, {
      String? payParcel,
      Stream<SurchargesState>? states,
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      if (states != null) {
        whenListen(cubit, states, initialState: state);
      } else {
        when(() => cubit.state).thenReturn(state);
      }
      cubits = GlobalCubits(locale: locale, auth: _customer);
      await pumpView(
        tester,
        SurchargesView(
          onOpenOrder: (n) => events.add('order $n'),
          onOpenParcel: (n) => events.add('parcel $n'),
          onOpenPayment: (payment) async => events.add(payment),
          payParcel: payParcel,
        ),
        cubits: cubits,
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<SurchargesCubit>.value(value: cubit)],
      );
    }

    testWidgets('bills with links, calculation and deadline', (tester) async {
      await pump(tester, ready());
      expect(find.text(weightBill.title), findsOneWidget);
      expect(find.text('2,35 кг'), findsOneWidget);
      expect(find.textContaining('Оплатить до'), findsOneWidget);
      await tester.tap(find.text(ru.parcelNumber('P-5518')));
      await tester.tap(find.text(ru.orderNumber('10225')));
      expect(events, ['parcel P-5518', 'order 10225']);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('pay from the balance with a toast', (tester) async {
      await pump(tester, ready());
      when(
        () => cubit.pay('ru', weightBill, PayMethod.balance),
      ).thenAnswer((_) async => right(const PaymentStart.paid()));
      final pay = ru.checkoutPay(MoneyFormat.tmt(ru, 52));
      await tester.tap(find.text(pay));
      await settle(tester);
      expect(find.text(ru.walletPayTitle), findsOneWidget);
      await tester.tap(find.text(pay).last);
      await settle(tester);

      verify(() => cubit.pay('ru', weightBill, PayMethod.balance)).called(1);
      expect(find.text(ru.walletSurchargePaid), findsOneWidget);
      verify(() => cubits.auth.refresh('ru')).called(1);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('a short balance leaves only the card', (tester) async {
      await pump(tester, ready(balance: 10));
      when(
        () => cubit.pay('ru', weightBill, PayMethod.card),
      ).thenAnswer((_) async => right(const PaymentStart.card('p1')));
      final pay = ru.checkoutPay(MoneyFormat.tmt(ru, 52));
      await tester.tap(find.text(pay));
      await settle(tester);
      expect(
        find.text(ru.walletNotEnough(MoneyFormat.tmt(ru, 10))),
        findsOneWidget,
      );
      await tester.tap(find.text(ru.walletPayFromBalance));
      await tester.tap(find.text(pay).last);
      await settle(tester);

      expect(events, [
        WalletPayment.surcharge(
          paymentId: 'p1',
          amount: 52,
          surchargeId: weightBill.id,
        ),
      ]);
      verify(() => cubit.load('ru')).called(1);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('from a parcel, its payment opens once loaded', (tester) async {
      final states = StreamController<SurchargesState>();
      addTearDown(states.close);
      await pump(
        tester,
        const SurchargesState(),
        payParcel: 'P-5518',
        states: states.stream,
      );
      expect(find.text(ru.walletPayTitle), findsNothing);
      states.add(ready());
      await settle(tester);
      expect(find.text(ru.walletPayTitle), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    });

    testWidgets('refunds tab: amount, where and status', (tester) async {
      await pump(tester, ready());
      await tester.tap(find.text(ru.walletTabRefunds));
      await tester.pump();
      expect(find.text('+${MoneyFormat.tmt(ru, 210)}'), findsOneWidget);
      expect(find.text(ru.walletRefundPaid), findsOneWidget);
      expect(find.text(ru.walletRefundApproved), findsOneWidget);
      await tester.tap(find.text('Возврат за заказ №10212'));
      expect(events, ['order 10212']);
    });

    testWidgets('nothing to pay, no refunds', (tester) async {
      await pump(tester, const SurchargesState(isLoading: false));
      expect(find.text(ru.walletNoSurchargesTitle), findsOneWidget);
      await tester.tap(find.text(ru.walletTabRefunds));
      await tester.pump();
      expect(find.text(ru.walletNoRefundsTitle), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          ready(),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await scrollThrough(tester, find.byType(ListView), steps: 3);
        await tester.tap(find.text(tk.walletTabRefunds));
        await tester.pump();
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      });
    }
  });

  group('WalletPaymentPage', () {
    late _MockPaymentCubit cubit;
    const payment = WalletPayment.topUp(paymentId: 'p1', amount: 300);

    setUp(() {
      cubit = _MockPaymentCubit();
      when(() => cubit.check(any(), any())).thenAnswer((_) async {});
      when(() => cubit.retry(any(), any())).thenAnswer((_) async => null);
      getIt.registerFactory<WalletPaymentCubit>(() => cubit);
    });

    tearDown(getIt.reset);

    testWidgets('paid: title, amount, «Готово»', (tester) async {
      when(() => cubit.state).thenReturn(const WalletPaymentState.paid());
      var done = 0;
      await pumpView(
        tester,
        WalletPaymentPage(payment: payment, onDone: () => done++),
      );
      await settle(tester);
      expect(find.text(ru.walletTopUpDone), findsOneWidget);
      await tester.tap(find.text(ru.walletDone));
      expect(done, 1);
      verify(() => cubit.check('ru', payment)).called(1);
    });

    testWidgets('failed: bank text and «Повторить оплату»', (tester) async {
      when(
        () => cubit.state,
      ).thenReturn(const WalletPaymentState.failed(reason: 'Отклонено'));
      await pumpView(
        tester,
        WalletPaymentPage(payment: payment, onDone: () {}),
      );
      expect(find.text('Отклонено'), findsOneWidget);
      expect(find.text(ru.walletPaymentFailedText), findsOneWidget);
      await tester.tap(find.text(ru.paymentRetry));
      verify(() => cubit.retry('ru', payment)).called(1);
    });

    testWidgets('timeout says the balance will update by itself', (
      tester,
    ) async {
      when(() => cubit.state).thenReturn(const WalletPaymentState.failed());
      await pumpView(
        tester,
        WalletPaymentPage(payment: payment, onDone: () {}),
      );
      expect(find.text(ru.walletPaymentTimeout), findsOneWidget);
    });
  });
}
