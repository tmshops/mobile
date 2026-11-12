import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/wallet/domain/entities/wallet.dart';
import 'package:tmshop/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:tmshop/features/wallet/presentation/bloc/balance_cubit.dart';
import 'package:tmshop/features/wallet/presentation/bloc/surcharges_cubit.dart';
import 'package:tmshop/features/wallet/presentation/bloc/wallet_payment_cubit.dart';

import '../../helpers/wallet_fixtures.dart';

class _MockRepository extends Mock implements WalletRepository {}

void main() {
  late _MockRepository repository;

  setUp(() {
    repository = _MockRepository();
    when(() => repository.summary()).thenAnswer(
      (_) async => right(const WalletSummary(balance: 120, debt: 86)),
    );
  });

  group('BalanceCubit', () {
    test('loads summary and the first page, then more', () async {
      when(
        () => repository.operations('ru'),
      ).thenAnswer((_) async => right(operationsPage(0, 3, next: '3')));
      when(
        () => repository.operations('ru', cursor: '3'),
      ).thenAnswer((_) async => right(operationsPage(3, 2)));
      final cubit = BalanceCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.summary?.debt, 86);
      expect(cubit.state.operations, hasLength(3));
      expect(cubit.state.hasMore, isTrue);

      await cubit.loadMore('ru');
      expect(cubit.state.operations.map((o) => o.id), [
        'op0',
        'op1',
        'op2',
        'op3',
        'op4',
      ]);
      expect(cubit.state.hasMore, isFalse);
      await cubit.loadMore('ru');
      verify(() => repository.operations('ru', cursor: '3')).called(1);
      await cubit.close();
    });

    test('a failed next page keeps the list', () async {
      when(
        () => repository.operations('ru'),
      ).thenAnswer((_) async => right(operationsPage(0, 2, next: '2')));
      when(
        () => repository.operations('ru', cursor: '2'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = BalanceCubit(repository);
      await cubit.load('ru');
      await cubit.loadMore('ru');
      expect(cubit.state.operations, hasLength(2));
      expect(cubit.state.moreFailure, isA<NetworkFailure>());
      expect(cubit.state.isLoadingMore, isFalse);
      await cubit.close();
    });

    test('a failed first load fails; a failed refresh keeps', () async {
      when(
        () => repository.operations('ru'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = BalanceCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.failure, isA<NetworkFailure>());

      when(
        () => repository.operations('ru'),
      ).thenAnswer((_) async => right(operationsPage(0, 1)));
      await cubit.load('ru');
      when(
        () => repository.operations('ru'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      await cubit.load('ru');
      expect(cubit.state.failure, isNull);
      expect(cubit.state.operations, hasLength(1));
      await cubit.close();
    });
  });

  group('SurchargesCubit', () {
    setUp(() {
      when(
        () => repository.surcharges('ru'),
      ).thenAnswer((_) async => right([weightBill, priceBill]));
      when(
        () => repository.refunds('ru'),
      ).thenAnswer((_) async => right(sampleRefunds));
    });

    test('loads bills, refunds and the balance', () async {
      final cubit = SurchargesCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.surcharges, [weightBill, priceBill]);
      expect(cubit.state.refunds, sampleRefunds);
      expect(cubit.state.balance, 120);
      await cubit.close();
    });

    test('paid from the balance: the bill goes, the balance drops', () async {
      when(
        () => repository.paySurcharge('ru', weightBill.id, PayMethod.balance),
      ).thenAnswer((_) async => right(const PaymentStart.paid()));
      final cubit = SurchargesCubit(repository);
      await cubit.load('ru');
      final result = await cubit.pay('ru', weightBill, PayMethod.balance);
      expect(result.toNullable(), const PaymentStart.paid());
      expect(cubit.state.surcharges, [priceBill]);
      expect(cubit.state.balance, 120 - weightBill.amount);
      expect(cubit.state.payingId, isNull);
      await cubit.close();
    });

    test('by card the bill stays until the payment is checked', () async {
      when(
        () => repository.paySurcharge('ru', weightBill.id, PayMethod.card),
      ).thenAnswer((_) async => right(const PaymentStart.card('p1')));
      final cubit = SurchargesCubit(repository);
      await cubit.load('ru');
      final result = await cubit.pay('ru', weightBill, PayMethod.card);
      expect(result.toNullable(), const PaymentStart.card('p1'));
      expect(cubit.state.surcharges, hasLength(2));
      await cubit.close();
    });

    test('a failed load says so', () async {
      when(
        () => repository.refunds('ru'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final cubit = SurchargesCubit(repository);
      await cubit.load('ru');
      expect(cubit.state.failure, isA<NetworkFailure>());
      expect(cubit.state.isLoading, isFalse);
      await cubit.close();
    });
  });

  group('WalletPaymentCubit', () {
    const topUp = WalletPayment.topUp(paymentId: 'p1', amount: 300);

    WalletPaymentCubit build() =>
        WalletPaymentCubit(repository, interval: Duration.zero);

    test('pending, then paid', () async {
      var calls = 0;
      when(() => repository.paymentStatus('ru', 'p1')).thenAnswer(
        (_) async => right(
          WalletPaymentCheck(
            status: ++calls < 3
                ? WalletPaymentStatus.pending
                : WalletPaymentStatus.paid,
          ),
        ),
      );
      final cubit = build();
      await cubit.check('ru', topUp);
      expect(cubit.state, const WalletPaymentState.paid());
      expect(calls, 3);
      await cubit.close();
    });

    test('a refusal keeps the bank text; unknown payments fail', () async {
      when(() => repository.paymentStatus('ru', 'p1')).thenAnswer(
        (_) async => right(
          const WalletPaymentCheck(
            status: WalletPaymentStatus.failed,
            reason: 'Отклонено',
          ),
        ),
      );
      final cubit = build();
      await cubit.check('ru', topUp);
      expect(cubit.state, const WalletPaymentState.failed(reason: 'Отклонено'));

      when(
        () => repository.paymentStatus('ru', 'p1'),
      ).thenAnswer((_) async => right(null));
      await cubit.check('ru', topUp);
      expect(cubit.state, const WalletPaymentState.failed());
      await cubit.close();
    });

    test('retry starts a new payment of the same kind', () async {
      when(
        () => repository.topUp('ru', 300),
      ).thenAnswer((_) async => right('p2'));
      when(() => repository.paymentStatus('ru', 'p2')).thenAnswer(
        (_) async =>
            right(const WalletPaymentCheck(status: WalletPaymentStatus.paid)),
      );
      final cubit = build();
      final next = await cubit.retry('ru', topUp);
      expect(next, const WalletPayment.topUp(paymentId: 'p2', amount: 300));
      expect(cubit.state, const WalletPaymentState.paid());

      when(
        () => repository.paySurcharge('ru', 's1', PayMethod.card),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final failed = await cubit.retry(
        'ru',
        const WalletPayment.surcharge(
          paymentId: 'p3',
          amount: 52,
          surchargeId: 's1',
        ),
      );
      expect(failed, isNull);
      expect(
        cubit.state,
        const WalletPaymentState.failed(failure: NetworkFailure()),
      );
      await cubit.close();
    });
  });
}
