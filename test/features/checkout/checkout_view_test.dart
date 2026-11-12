import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/di/injection.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/money_format.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/checkout/domain/entities/checkout.dart';
import 'package:tmshop/features/checkout/presentation/bloc/checkout_bloc.dart';
import 'package:tmshop/features/checkout/presentation/bloc/payment_cubit.dart';
import 'package:tmshop/features/checkout/presentation/pages/payment_page.dart';
import 'package:tmshop/features/checkout/presentation/widgets/checkout_view.dart';

import '../../helpers/checkout_fixtures.dart';
import '../../helpers/pump_view.dart';

class _MockCheckoutBloc extends MockBloc<CheckoutEvent, CheckoutState>
    implements CheckoutBloc {}

class _MockPaymentCubit extends MockCubit<PaymentState>
    implements PaymentCubit {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final preview = samplePreview('ru');
  final ready = CheckoutState(
    draft: readyDraft.copyWith(deliveryType: preview.deliveryType),
    preview: preview,
    isPreviewLoading: false,
  );

  setUpAll(() => registerFallbackValue(const CheckoutEvent.previewRetried()));

  group('CheckoutView', () {
    late _MockCheckoutBloc bloc;

    setUp(() => bloc = _MockCheckoutBloc());

    Future<void> pump(
      WidgetTester tester,
      CheckoutState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) {
      when(() => bloc.state).thenReturn(state);
      return pumpView(
        tester,
        CheckoutView(onReadOffer: () {}),
        providers: [BlocProvider<CheckoutBloc>.value(value: bloc)],
        locale: locale,
        textScale: textScale,
        width: width,
      );
    }

    PrimaryButton payButton(WidgetTester tester) =>
        tester.widget<PrimaryButton>(find.byType(PrimaryButton));

    testWidgets('before the first preview: skeleton, pay disabled', (
      tester,
    ) async {
      await pump(tester, const CheckoutState(draft: readyDraft));
      expect(find.byType(Shimmer), findsOneWidget);
      expect(payButton(tester).onPressed, isNull);
    });

    testWidgets('card: «Оплатить» shows the amount due now and submits', (
      tester,
    ) async {
      await pump(tester, ready);
      final label = ru.checkoutPay(MoneyFormat.tmt(ru, preview.summary.payNow));
      expect(payButton(tester).label, label);

      await tester.tap(find.byType(PrimaryButton));
      verify(() => bloc.add(const CheckoutEvent.submitted())).called(1);
    });

    testWidgets('cash: the button only places the order', (tester) async {
      await pump(
        tester,
        ready.copyWith(
          draft: ready.draft.copyWith(payment: PaymentMethod.cash),
        ),
      );
      expect(payButton(tester).label, ru.checkoutPlace);
    });

    testWidgets('problems stay hidden until «Оплатить» is tried', (
      tester,
    ) async {
      final unready = ready.copyWith(
        draft: ready.draft.copyWith(
          recipient: const Recipient(),
          hasConsent: false,
        ),
      );
      await pump(tester, unready);
      expect(find.text(ru.checkoutRecipientError), findsNothing);
    });

    testWidgets('after «Оплатить» each problem is shown at its card', (
      tester,
    ) async {
      final tried = ready.copyWith(
        showProblems: true,
        draft: ready.draft.copyWith(
          recipient: const Recipient(),
          hasConsent: false,
        ),
      );
      await pump(tester, tried);
      expect(find.text(ru.checkoutRecipientError), findsOneWidget);
      await scrollThrough(tester, find.byType(Scrollable).first);
      expect(find.text(ru.checkoutConsentError), findsOneWidget);
    });

    testWidgets('a changed total asks to confirm the new amount', (
      tester,
    ) async {
      await pump(tester, ready.copyWith(status: CheckoutStatus.priceChanged));
      expect(find.text(ru.checkoutPriceChanged), findsOneWidget);
      expect(
        payButton(tester).label,
        ru.checkoutConfirmNew(MoneyFormat.tmt(ru, preview.summary.payNow)),
      );
      expect(payButton(tester).onPressed, isNotNull);
    });

    testWidgets('a failed first preview offers a retry', (tester) async {
      await pump(
        tester,
        const CheckoutState(
          isPreviewLoading: false,
          previewFailure: NetworkFailure(),
        ),
      );
      expect(find.byType(FailureView), findsOneWidget);
      expect(payButton(tester).onPressed, isNull);
    });

    testWidgets('a failed recalculation keeps the form with a notice', (
      tester,
    ) async {
      await pump(
        tester,
        ready.copyWith(previewFailure: const NetworkFailure()),
      );
      expect(find.byType(FailureView), findsNothing);
      expect(find.text(ru.checkoutPreviewError), findsOneWidget);
    });

    testWidgets('a failed submit is toasted', (tester) async {
      whenListen(
        bloc,
        Stream.value(ready.copyWith(submitFailure: const NetworkFailure())),
        initialState: ready,
      );
      await pumpView(
        tester,
        CheckoutView(onReadOffer: () {}),
        providers: [BlocProvider<CheckoutBloc>.value(value: bloc)],
      );
      await tester.pump();
      expect(find.text(ru.checkoutSubmitError), findsOneWidget);
    });

    testWidgets('choosing pickup edits the draft', (tester) async {
      await pump(tester, ready);
      await tester.tap(find.text(ru.checkoutPickup));
      final event =
          verify(() => bloc.add(captureAny())).captured.single
              as CheckoutDraftChanged;
      expect(event.draft.method, ReceivingMethod.pickup);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          ready.copyWith(
            showProblems: true,
            draft: ready.draft.copyWith(hasConsent: false),
          ),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await scrollThrough(tester, find.byType(Scrollable).first);
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('PaymentPage', () {
    late _MockPaymentCubit cubit;
    late int toOrder;

    const card = PlacedOrder(
      number: 'TM-7',
      payNow: 1216,
      payment: PaymentMethod.card,
      paymentId: 'p1',
    );

    setUp(() {
      cubit = _MockPaymentCubit();
      toOrder = 0;
      when(
        () => cubit.check(
          languageCode: any(named: 'languageCode'),
          paymentId: any(named: 'paymentId'),
        ),
      ).thenAnswer((_) async {});
      when(
        () => cubit.retry(
          languageCode: any(named: 'languageCode'),
          orderNumber: any(named: 'orderNumber'),
        ),
      ).thenAnswer((_) async {});
      getIt.registerFactory<PaymentCubit>(() => cubit);
    });

    tearDown(getIt.reset);

    Future<void> pump(WidgetTester tester, PlacedOrder order) async {
      await pumpView(
        tester,
        PaymentPage(order: order, onHome: () {}, onOrder: () => toOrder++),
      );
      await tester.pump(const Duration(seconds: 1));
    }

    testWidgets('cash goes straight to success with «оплатите в офисе»', (
      tester,
    ) async {
      await pump(
        tester,
        const PlacedOrder(
          number: 'TM-1',
          payNow: 100,
          payment: PaymentMethod.cash,
        ),
      );
      expect(find.text(ru.paymentSuccessTitle), findsOneWidget);
      expect(find.text(ru.paymentCashNext), findsOneWidget);
      verifyNever(
        () => cubit.check(
          languageCode: any(named: 'languageCode'),
          paymentId: any(named: 'paymentId'),
        ),
      );

      await tester.tap(find.text(ru.paymentToOrder));
      expect(toOrder, 1);
    });

    testWidgets('card: checks the payment and shows the wait', (tester) async {
      when(() => cubit.state).thenReturn(const PaymentState.checking());
      await pump(tester, card);
      expect(find.text(ru.paymentChecking), findsOneWidget);
      verify(() => cubit.check(languageCode: 'ru', paymentId: 'p1')).called(1);
    });

    testWidgets('card paid: success', (tester) async {
      when(() => cubit.state).thenReturn(const PaymentState.paid());
      await pump(tester, card);
      expect(find.text(ru.paymentSuccessTitle), findsOneWidget);
    });

    testWidgets('refused: server reason and «Повторить оплату»', (
      tester,
    ) async {
      when(
        () => cubit.state,
      ).thenReturn(const PaymentState.failed(reason: 'Отказ банка'));
      await pump(tester, card);
      expect(find.text(ru.paymentFailedTitle), findsOneWidget);
      expect(find.text('Отказ банка'), findsOneWidget);

      await tester.tap(find.text(ru.paymentRetry));
      verify(
        () => cubit.retry(languageCode: 'ru', orderNumber: 'TM-7'),
      ).called(1);
    });

    testWidgets('no answer in time says the bank has not replied', (
      tester,
    ) async {
      when(() => cubit.state).thenReturn(const PaymentState.failed());
      await pump(tester, card);
      expect(find.text(ru.paymentTimeout), findsOneWidget);
    });
  });
}
