import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_wallet_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/wallet/data/datasources/wallet_remote_data_source.dart';
import 'package:tmshop/features/wallet/data/models/wallet_models.dart';
import 'package:tmshop/features/wallet/data/repositories/wallet_repository_impl.dart';
import 'package:tmshop/features/wallet/domain/entities/wallet.dart';

class _MockRemote extends Mock implements WalletRemoteDataSource {}

void main() {
  group('fake wallet server', () {
    late DateTime now;
    late FakeOrdersBackend orders;
    late FakeWalletBackend wallet;

    setUp(() {
      now = DateTime(2026, 11, 12, 12);
      orders = FakeOrdersBackend(now: () => now);
      wallet = FakeWalletBackend(orders, now: () => now);
    });

    test('every account owes the parcel surcharge; 7777 owes more', () {
      expect(wallet.open('65000000'), (balance: 0, debt: 52));
      expect(wallet.open('65127777'), (balance: 0, debt: 86));
      expect(wallet.open(FakeWalletBackend.knownPhone), (
        balance: 120,
        debt: 52,
      ));
      // The named account's history adds up to its balance.
      final items = (wallet.operations('ru', null)['items'] as List)
          .cast<Map<String, dynamic>>();
      expect(items.fold<int>(0, (s, o) => s + (o['amount'] as int)), 120);
      expect(wallet.refunds('ru'), hasLength(3));
    });

    test('paying from the balance settles the bill and the parcel', () {
      wallet.open(FakeWalletBackend.knownPhone);
      final bill = wallet.surcharges('ru').single;
      expect(bill['parcel_number'], 'P-5518');
      expect(wallet.paySurcharge('ru', bill['id'] as String, 'balance'), {
        'status': 'paid',
      });
      expect(wallet.summary(), {'balance': 68, 'debt': 0});
      expect(orders.parcel('ru', 'P-5518')['status']['code'], 'in_transit');
      final last = (wallet.operations('ru', null)['items'] as List).first;
      expect((last as Map)['amount'], -52);
    });

    test('a short balance is refused with server text', () {
      wallet.open('65000000');
      final id = wallet.surcharges('tk').single['id'] as String;
      expect(
        () => wallet.paySurcharge('tk', id, 'balance'),
        throwsA(
          isA<ServerException>().having(
            (e) => e.code,
            'code',
            'insufficient_balance',
          ),
        ),
      );
    });

    test('a card top-up is pending, then paid once', () {
      wallet.open('65000000');
      final id = wallet.topUp('ru', 300)['payment_id'] as String;
      expect(wallet.paymentStatus('ru', id), {'status': 'pending'});
      now = now.add(const Duration(seconds: 2));
      expect(wallet.paymentStatus('ru', id), {'status': 'paid'});
      expect(wallet.paymentStatus('ru', id), {'status': 'paid'});
      expect(wallet.summary()['balance'], 300);
      expect(wallet.paymentStatus('ru', 'nope'), isNull);
    });

    test('limits, the failing amount and a surcharge paid by card', () {
      wallet.open('65000000');
      expect(() => wallet.topUp('ru', 5), throwsA(isA<ServerException>()));
      final bad = wallet.topUp('ru', FakeWalletBackend.failingTopUp);
      final bill = wallet.surcharges('ru').single['id'] as String;
      final card = wallet.paySurcharge('ru', bill, 'card');
      now = now.add(const Duration(seconds: 2));
      expect(
        wallet.paymentStatus('ru', bad['payment_id'] as String)?['status'],
        'failed',
      );
      wallet.paymentStatus('ru', card['payment_id'] as String);
      expect(wallet.summary(), {'balance': 0, 'debt': 0});
    });

    test('operations come in pages of ${FakeWalletBackend.pageSize}', () {
      wallet.open('65000000');
      for (var i = 0; i < FakeWalletBackend.pageSize + 5; i++) {
        final id = wallet.topUp('ru', 10)['payment_id'] as String;
        now = now.add(const Duration(seconds: 2));
        wallet.paymentStatus('ru', id);
      }
      final first = wallet.operations('ru', null);
      expect(first['items'], hasLength(FakeWalletBackend.pageSize));
      final second = wallet.operations('ru', first['next_cursor'] as String);
      expect(second['items'], hasLength(5));
      expect(second['next_cursor'], isNull);
    });
  });

  group('models', () {
    test('unknown operation types read as corrections', () {
      final page = OperationsPageModel.fromJson({
        'items': [
          {
            'id': 'a',
            'type': 'bonus_burn',
            'title': 'x',
            'amount': -5,
            'created_at': '2026-11-12T10:00:00Z',
          },
        ],
      }).toEntity();
      expect(page.items.single.type, OperationType.correction);
      expect(page.nextCursor, isNull);
    });

    test('a refund with an unknown status is skipped', () {
      final refund = RefundModel.fromJson({
        'id': 'r',
        'title': 'x',
        'amount': 10,
        'destination': 'balance',
        'status': 'disputed',
        'created_at': '2026-11-12T10:00:00Z',
      });
      expect(refund.toEntity(), isNull);
    });
  });

  group('WalletRepositoryImpl', () {
    late _MockRemote remote;
    late WalletRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = WalletRepositoryImpl(remote);
    });

    test('a surcharge is paid at once or by card', () async {
      when(
        () => remote.paySurcharge('ru', 's', 'balance'),
      ).thenAnswer((_) async => {'status': 'paid'});
      when(
        () => remote.paySurcharge('ru', 's', 'card'),
      ).thenAnswer((_) async => {'payment_id': 'p1'});
      expect(
        (await repository.paySurcharge(
          'ru',
          's',
          PayMethod.balance,
        )).toNullable(),
        const PaymentStart.paid(),
      );
      expect(
        (await repository.paySurcharge('ru', 's', PayMethod.card)).toNullable(),
        const PaymentStart.card('p1'),
      );
    });

    test('payment status maps; server text survives', () async {
      when(() => remote.paymentStatus('ru', 'p')).thenAnswer(
        (_) async => {'status': 'failed', 'reason': 'Банк отклонил'},
      );
      final check = (await repository.paymentStatus('ru', 'p')).toNullable();
      expect(check?.status, WalletPaymentStatus.failed);
      expect(check?.reason, 'Банк отклонил');

      when(
        () => remote.paySurcharge(any(), any(), any()),
      ).thenThrow(const ServerException(code: 'x', message: 'Нет денег'));
      final failed = await repository.paySurcharge('ru', 's', PayMethod.card);
      expect(
        failed.getLeft().toNullable(),
        isA<ServerFailure>().having((f) => f.message, 'message', 'Нет денег'),
      );
    });

    test('offline is a NetworkFailure', () async {
      when(() => remote.summary()).thenThrow(const NetworkException());
      expect(
        (await repository.summary()).getLeft().toNullable(),
        isA<NetworkFailure>(),
      );
    });
  });
}
