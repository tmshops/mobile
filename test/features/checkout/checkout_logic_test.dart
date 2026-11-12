import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/cart/cart_cubit.dart';
import 'package:tmshop/core/cart/cart_item.dart';
import 'package:tmshop/core/cart/cart_repository.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/checkout/domain/entities/checkout.dart';
import 'package:tmshop/features/checkout/domain/repositories/checkout_repository.dart';
import 'package:tmshop/features/checkout/domain/usecases/checkout_use_cases.dart';
import 'package:tmshop/features/checkout/presentation/bloc/checkout_bloc.dart';
import 'package:tmshop/features/checkout/presentation/bloc/payment_cubit.dart';

import '../../helpers/checkout_fixtures.dart';

class _MockRepository extends Mock implements CheckoutRepository {}

class _MockCartRepository extends Mock implements CartRepository {}

class _MockLoadSaved extends Mock implements LoadSavedRecipientUseCase {}

class _MockGetPreview extends Mock implements GetCheckoutPreviewUseCase {}

class _MockPlaceOrder extends Mock implements PlaceOrderUseCase {}

class _MockGetStatus extends Mock implements GetPaymentStatusUseCase {}

class _MockRestart extends Mock implements RestartPaymentUseCase {}

const _address = CourierAddress(street: 'ул. Магтымгулы, 10');
const _cashOrder = PlacedOrder(
  number: 'TM-1',
  payNow: 100,
  payment: PaymentMethod.cash,
);

void main() {
  final lines = checkoutLines('ru');
  final preview = samplePreview('ru');

  setUpAll(() {
    registerFallbackValue(const CheckoutDraft());
    registerFallbackValue(const Recipient());
    registerFallbackValue(const CourierAddress());
    registerFallbackValue(<CartItem>[]);
  });

  group('PlaceOrderUseCase', () {
    test('saves the recipient and address before placing', () async {
      final repository = _MockRepository();
      when(() => repository.save(any(), any())).thenAnswer((_) async {});
      when(
        () => repository.placeOrder(
          languageCode: any(named: 'languageCode'),
          regionId: any(named: 'regionId'),
          lines: any(named: 'lines'),
          draft: any(named: 'draft'),
          expectedTotal: any(named: 'expectedTotal'),
          idempotencyKey: any(named: 'idempotencyKey'),
          promoCode: any(named: 'promoCode'),
        ),
      ).thenAnswer(
        (_) async => right(const PlaceOrderResult.placed(_cashOrder)),
      );

      final result = await PlaceOrderUseCase(repository)(
        languageCode: 'ru',
        regionId: 'ashgabat',
        lines: lines,
        draft: readyDraft,
        expectedTotal: 100,
        idempotencyKey: 'k',
      );

      expect(result.getRight().toNullable(), isA<OrderPlaced>());
      verifyInOrder([
        () => repository.save(readyDraft.recipient, readyDraft.address),
        () => repository.placeOrder(
          languageCode: 'ru',
          regionId: 'ashgabat',
          lines: lines,
          draft: readyDraft,
          expectedTotal: 100,
          idempotencyKey: 'k',
        ),
      ]);
    });
  });

  group('CheckoutBloc', () {
    late _MockLoadSaved loadSaved;
    late _MockGetPreview getPreview;
    late _MockPlaceOrder placeOrder;

    When<Future<Either<Failure, CheckoutPreview>>> whenPreview() => when(
      () => getPreview(
        languageCode: any(named: 'languageCode'),
        regionId: any(named: 'regionId'),
        lines: any(named: 'lines'),
        draft: any(named: 'draft'),
        promoCode: any(named: 'promoCode'),
      ),
    );

    When<Future<Either<Failure, PlaceOrderResult>>> whenPlace() => when(
      () => placeOrder(
        languageCode: any(named: 'languageCode'),
        regionId: any(named: 'regionId'),
        lines: any(named: 'lines'),
        draft: any(named: 'draft'),
        expectedTotal: any(named: 'expectedTotal'),
        idempotencyKey: any(named: 'idempotencyKey'),
        promoCode: any(named: 'promoCode'),
      ),
    );

    List<String> placedKeys() => verify(
      () => placeOrder(
        languageCode: any(named: 'languageCode'),
        regionId: any(named: 'regionId'),
        lines: any(named: 'lines'),
        draft: any(named: 'draft'),
        expectedTotal: any(named: 'expectedTotal'),
        idempotencyKey: captureAny(named: 'idempotencyKey'),
        promoCode: any(named: 'promoCode'),
      ),
    ).captured.cast<String>();

    CheckoutBloc build() => CheckoutBloc(loadSaved, getPreview, placeOrder);

    const started = CheckoutEvent.started(
      languageCode: 'ru',
      regionId: 'ashgabat',
      lines: [],
      promoCode: 'TM10',
    );

    /// Started, previewed, and with consent given: ready to submit.
    Future<CheckoutBloc> ready() async {
      final bloc = build()..add(started);
      await bloc.stream.firstWhere((s) => s.preview != null);
      bloc.add(
        CheckoutEvent.draftChanged(bloc.state.draft.copyWith(hasConsent: true)),
      );
      await bloc.stream.first;
      return bloc;
    }

    setUp(() {
      loadSaved = _MockLoadSaved();
      getPreview = _MockGetPreview();
      placeOrder = _MockPlaceOrder();
      when(
        () => loadSaved(),
      ).thenAnswer((_) async => (validRecipient, _address));
      whenPreview().thenAnswer((_) async => right(preview));
    });

    blocTest<CheckoutBloc, CheckoutState>(
      'nothing saved on the device: the profile fills the recipient',
      setUp: () => when(
        () => loadSaved(),
      ).thenAnswer((_) async => (const Recipient(), _address)),
      build: build,
      act: (bloc) => bloc.add(
        const CheckoutEvent.started(
          languageCode: 'ru',
          regionId: 'ashgabat',
          lines: [],
          profileRecipient: validRecipient,
        ),
      ),
      verify: (bloc) => expect(bloc.state.draft.recipient, validRecipient),
    );

    blocTest<CheckoutBloc, CheckoutState>(
      'start fills the saved recipient and previews at once',
      build: build,
      act: (bloc) => bloc.add(started),
      verify: (bloc) {
        final state = bloc.state;
        expect(state.draft.recipient, validRecipient);
        expect(state.draft.address, _address);
        expect(state.preview, preview);
        expect(state.isPreviewLoading, isFalse);
        // The shown choice follows the type the server priced.
        expect(state.draft.deliveryType, preview.deliveryType);
        verify(
          () => getPreview(
            languageCode: 'ru',
            regionId: 'ashgabat',
            lines: const [],
            draft: any(named: 'draft'),
            promoCode: 'TM10',
          ),
        ).called(1);
      },
    );

    blocTest<CheckoutBloc, CheckoutState>(
      'a failed preview is kept for «Повторить»; retry clears it',
      setUp: () =>
          whenPreview().thenAnswer((_) async => left(const NetworkFailure())),
      build: build,
      act: (bloc) async {
        bloc.add(started);
        await bloc.stream.firstWhere((s) => s.previewFailure != null);
        whenPreview().thenAnswer((_) async => right(preview));
        bloc.add(const CheckoutEvent.previewRetried());
      },
      verify: (bloc) {
        expect(bloc.state.previewFailure, isNull);
        expect(bloc.state.preview, preview);
      },
    );

    blocTest<CheckoutBloc, CheckoutState>(
      'typing a comment does not ask the server again',
      build: build,
      act: (bloc) async {
        bloc.add(started);
        await bloc.stream.firstWhere((s) => s.preview != null);
        bloc.add(
          CheckoutEvent.draftChanged(bloc.state.draft.copyWith(comment: 'x')),
        );
      },
      wait: CheckoutBloc.debounce * 2,
      verify: (bloc) {
        expect(bloc.state.draft.comment, 'x');
        verify(
          () => getPreview(
            languageCode: any(named: 'languageCode'),
            regionId: any(named: 'regionId'),
            lines: any(named: 'lines'),
            draft: any(named: 'draft'),
            promoCode: any(named: 'promoCode'),
          ),
        ).called(1);
      },
    );

    blocTest<CheckoutBloc, CheckoutState>(
      'typing while the first preview loads does not leave it loading',
      setUp: () => whenPreview().thenAnswer((_) async {
        await Future<void>.delayed(const Duration(milliseconds: 50));
        return right(preview);
      }),
      build: build,
      act: (bloc) async {
        bloc.add(started);
        await bloc.stream.firstWhere((s) => s.draft.recipient.isValid);
        bloc.add(
          CheckoutEvent.draftChanged(bloc.state.draft.copyWith(comment: 'a')),
        );
      },
      wait: CheckoutBloc.debounce * 2,
      verify: (bloc) {
        expect(bloc.state.isPreviewLoading, isFalse);
        expect(bloc.state.preview, preview);
        expect(bloc.state.draft.comment, 'a');
      },
    );

    blocTest<CheckoutBloc, CheckoutState>(
      'quick price edits are debounced into one preview of the last draft',
      build: build,
      act: (bloc) async {
        bloc.add(started);
        await bloc.stream.firstWhere((s) => s.preview != null);
        final draft = bloc.state.draft;
        bloc
          ..add(
            CheckoutEvent.draftChanged(draft.copyWith(serviceIds: {'photo'})),
          )
          ..add(
            CheckoutEvent.draftChanged(
              draft.copyWith(serviceIds: {'photo', 'packing'}),
            ),
          );
      },
      wait: CheckoutBloc.debounce * 2,
      verify: (_) {
        final drafts = verify(
          () => getPreview(
            languageCode: any(named: 'languageCode'),
            regionId: any(named: 'regionId'),
            lines: any(named: 'lines'),
            draft: captureAny(named: 'draft'),
            promoCode: any(named: 'promoCode'),
          ),
        ).captured.cast<CheckoutDraft>();
        expect(drafts, hasLength(2));
        expect(drafts.last.serviceIds, {'photo', 'packing'});
      },
    );

    blocTest<CheckoutBloc, CheckoutState>(
      'a new region drops the pickup point and previews for that region',
      build: build,
      act: (bloc) async {
        bloc.add(started);
        await bloc.stream.firstWhere((s) => s.preview != null);
        bloc
          ..add(
            CheckoutEvent.draftChanged(
              bloc.state.draft.copyWith(
                method: ReceivingMethod.pickup,
                pickupPointId: 'ashgabat-1',
              ),
            ),
          )
          ..add(const CheckoutEvent.regionChanged('mary'))
          // The same region again changes nothing.
          ..add(const CheckoutEvent.regionChanged('mary'));
      },
      wait: CheckoutBloc.debounce * 2,
      verify: (bloc) {
        expect(bloc.state.draft.pickupPointId, isNull);
        expect(bloc.state.draft.method, ReceivingMethod.pickup);
        verify(
          () => getPreview(
            languageCode: any(named: 'languageCode'),
            regionId: 'mary',
            lines: any(named: 'lines'),
            draft: any(named: 'draft'),
            promoCode: any(named: 'promoCode'),
          ),
        ).called(1);
      },
    );

    blocTest<CheckoutBloc, CheckoutState>(
      '«Оплатить» with problems only shows them',
      build: build,
      act: (bloc) async {
        bloc.add(started);
        await bloc.stream.firstWhere((s) => s.preview != null);
        bloc.add(const CheckoutEvent.submitted());
      },
      verify: (bloc) {
        expect(bloc.state.showProblems, isTrue);
        expect(bloc.state.problems, [DraftProblem.consent]);
        expect(bloc.state.status, CheckoutStatus.editing);
        verifyNever(
          () => placeOrder(
            languageCode: any(named: 'languageCode'),
            regionId: any(named: 'regionId'),
            lines: any(named: 'lines'),
            draft: any(named: 'draft'),
            expectedTotal: any(named: 'expectedTotal'),
            idempotencyKey: any(named: 'idempotencyKey'),
            promoCode: any(named: 'promoCode'),
          ),
        );
      },
    );

    test('a ready draft is placed once, even on a double tap', () async {
      whenPlace().thenAnswer((_) async {
        await Future<void>.delayed(const Duration(milliseconds: 10));
        return right(const PlaceOrderResult.placed(_cashOrder));
      });
      final bloc = await ready();
      bloc
        ..add(const CheckoutEvent.submitted())
        ..add(const CheckoutEvent.submitted());
      final placed = await bloc.stream.firstWhere(
        (s) => s.status == CheckoutStatus.placed,
      );

      expect(placed.order, _cashOrder);
      expect(placed.canSubmit, isFalse);
      verify(
        () => placeOrder(
          languageCode: 'ru',
          regionId: 'ashgabat',
          lines: const [],
          draft: any(named: 'draft'),
          expectedTotal: preview.summary.total,
          idempotencyKey: any(named: 'idempotencyKey'),
          promoCode: 'TM10',
        ),
      ).called(1);
      await bloc.close();
    });

    test(
      'a retry after a network error reuses the key; an edit does not',
      () async {
        whenPlace().thenAnswer((_) async => left(const NetworkFailure()));
        final bloc = await ready();

        Future<void> submit() async {
          bloc.add(const CheckoutEvent.submitted());
          await bloc.stream.firstWhere((s) => s.submitFailure != null);
        }

        await submit();
        expect(bloc.state.status, CheckoutStatus.editing);
        await submit();
        bloc.add(
          CheckoutEvent.draftChanged(
            bloc.state.draft.copyWith(comment: 'Звонить'),
          ),
        );
        await bloc.stream.first;
        await submit();

        final keys = placedKeys();
        expect(keys, hasLength(3));
        expect(keys[0], keys[1]);
        expect(keys[2], isNot(keys[0]));
        expect(keys[0], matches(RegExp(r'^[0-9a-f]{32}$')));
        await bloc.close();
      },
    );

    test('a changed total waits for confirmation; an edit resets it', () async {
      final fresh = preview.copyWith(
        summary: preview.summary.copyWith(total: preview.summary.total + 50),
      );
      whenPlace().thenAnswer(
        (_) async => right(PlaceOrderResult.priceChanged(fresh)),
      );
      final bloc = await ready();
      bloc.add(const CheckoutEvent.submitted());
      final changed = await bloc.stream.firstWhere(
        (s) => s.status == CheckoutStatus.priceChanged,
      );
      expect(changed.preview, fresh);
      expect(changed.canSubmit, isTrue);

      bloc.add(
        CheckoutEvent.draftChanged(bloc.state.draft.copyWith(comment: 'x')),
      );
      final edited = await bloc.stream.first;
      expect(edited.status, CheckoutStatus.editing);
      await bloc.close();
    });
  });

  group('PaymentCubit', () {
    late _MockGetStatus getStatus;
    late _MockRestart restart;

    void stubStatus(List<Either<Failure, PaymentCheck>> answers) {
      final queue = [...answers];
      when(
        () => getStatus(
          languageCode: any(named: 'languageCode'),
          paymentId: any(named: 'paymentId'),
        ),
      ).thenAnswer(
        (_) async => queue.length > 1 ? queue.removeAt(0) : queue.first,
      );
    }

    setUp(() {
      getStatus = _MockGetStatus();
      restart = _MockRestart();
    });

    blocTest<PaymentCubit, PaymentState>(
      'pending, then paid',
      setUp: () => stubStatus([
        right(const PaymentCheck(status: PaymentStatus.pending)),
        right(const PaymentCheck(status: PaymentStatus.paid)),
      ]),
      build: () => PaymentCubit(getStatus, restart),
      act: (cubit) => cubit.check(languageCode: 'ru', paymentId: 'p1'),
      expect: () => const [PaymentState.checking(), PaymentState.paid()],
    );

    blocTest<PaymentCubit, PaymentState>(
      'a refused payment shows the server reason',
      setUp: () => stubStatus([
        right(
          const PaymentCheck(status: PaymentStatus.failed, reason: 'Отказ'),
        ),
      ]),
      build: () => PaymentCubit(getStatus, restart),
      act: (cubit) => cubit.check(languageCode: 'ru', paymentId: 'p1'),
      expect: () => const [
        PaymentState.checking(),
        PaymentState.failed(reason: 'Отказ'),
      ],
    );

    blocTest<PaymentCubit, PaymentState>(
      'a failed check is not a refused payment',
      setUp: () => stubStatus([left(const NetworkFailure())]),
      build: () => PaymentCubit(getStatus, restart),
      act: (cubit) => cubit.check(languageCode: 'ru', paymentId: 'p1'),
      expect: () => [
        const PaymentState.checking(),
        isA<PaymentFailed>()
            .having((s) => s.failure, 'failure', isA<NetworkFailure>())
            .having((s) => s.reason, 'reason', isNull),
      ],
    );

    blocTest<PaymentCubit, PaymentState>(
      '«Повторить оплату» starts a new payment and checks it',
      setUp: () {
        when(() => restart('TM-1')).thenAnswer((_) async => right('p2'));
        stubStatus([right(const PaymentCheck(status: PaymentStatus.paid))]);
      },
      build: () => PaymentCubit(getStatus, restart),
      act: (cubit) => cubit.retry(languageCode: 'ru', orderNumber: 'TM-1'),
      expect: () => const [PaymentState.checking(), PaymentState.paid()],
      verify: (_) => verify(
        () => getStatus(languageCode: 'ru', paymentId: 'p2'),
      ).called(1),
    );
  });

  group('CartCubit.removeMany', () {
    test('drops the ordered lines and keeps the rest in order', () async {
      final repository = _MockCartRepository();
      when(() => repository.save(any())).thenAnswer((_) async => right(unit));
      final cubit = CartCubit(repository);
      for (final line in lines) {
        await cubit.add(line);
      }
      final keep = cubit.state.items.where((l) => l.key != lines[1].key);

      await cubit.removeMany({lines[1].key});

      expect(cubit.state.items, keep.toList());
      await cubit.close();
    });
  });
}
