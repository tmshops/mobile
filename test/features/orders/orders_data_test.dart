import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_checkout_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/checkout/data/models/checkout_mappers.dart';
import 'package:tmshop/features/orders/data/datasources/orders_data_sources.dart';
import 'package:tmshop/features/orders/data/models/orders_mappers.dart';
import 'package:tmshop/features/orders/data/models/orders_models.dart';
import 'package:tmshop/features/orders/data/repositories/orders_repository_impl.dart';
import 'package:tmshop/features/orders/domain/entities/order.dart';
import 'package:tmshop/features/orders/domain/entities/order_status.dart';

import '../../helpers/checkout_fixtures.dart';
import '../../helpers/orders_fixtures.dart';

class _MockRemote extends Mock implements OrdersRemoteDataSource {}

void main() {
  group('fake orders server through the real parsers', () {
    for (final lang in ['ru', 'tk']) {
      test('every seeded order and parcel parses ($lang)', () {
        final backend = FakeOrdersBackend();
        for (final tab in OrderTab.values) {
          final list = OrdersResponseModel.fromJson(
            backend.orders(lang, orderTabParam(tab)),
          );
          for (final summary in list.orders) {
            final order = OrderDetailsModel.fromJson(
              backend.order(lang, summary.number),
            ).toEntity();
            expect(order.status.code, isNot(StatusCode.unknown));
            expect(order.items, isNotEmpty);
          }
        }
        final parcels = ParcelsResponseModel.fromJson(backend.parcels(lang));
        expect(parcels.parcels, hasLength(5));
        for (final p in parcels.parcels) {
          final parcel = ParcelDetailsModel.fromJson(
            backend.parcel(lang, p.number),
          ).toEntity();
          expect(parcel.stageDates[parcel.stage], isNotNull);
        }
      });
    }

    test('tabs split by status; the order status is the earliest item', () {
      final active = sampleOrders('ru', OrderTab.active);
      expect(active.map((o) => o.number), containsAll(['10231', '10228']));
      expect(sampleOrders('ru', OrderTab.completed).single.number, '10219');
      expect(
        sampleOrders('ru', OrderTab.cancelled).single.status.code,
        StatusCode.cancelled,
      );
      expect(sampleOrder('ru', '10231').status.code, StatusCode.problem);
    });

    test('money: total = parts, paid + due = total', () {
      final m = sampleOrder('ru', '10225').money;
      expect(
        m.items +
            m.chinaDelivery +
            m.internationalDelivery +
            m.courier +
            m.services -
            m.discount,
        m.total,
      );
      expect(m.paid + m.due, m.total);
      expect(m.isEstimate, isTrue);
    });

    test('cancel only before purchase; afterwards the server refuses', () {
      final backend = FakeOrdersBackend();
      final cancelled = OrderDetailsModel.fromJson(
        backend.cancel('ru', '10228', 'other'),
      ).toEntity();
      expect(cancelled.status.code, StatusCode.cancelled);
      expect(cancelled.canCancel, isFalse);

      final bought = sampleOrder('ru', '10231', backend: backend);
      expect(bought.canCancel, isFalse);
      expect(bought.cancelNote, isNotNull);
      expect(
        () => backend.cancel('ru', '10231', 'other'),
        throwsA(isA<ServerException>()),
      );
    });

    test('a problem decision clears the problem', () {
      final backend = FakeOrdersBackend();
      final problem = sampleOrder(
        'ru',
        '10231',
        backend: backend,
      ).problems.single;
      expect(problem.problem!.actions.where((a) => a.isPrimary), hasLength(1));
      final after = OrderDetailsModel.fromJson(
        backend.resolveProblem('ru', '10231', problem.id, 'refund'),
      ).toEntity();
      expect(after.problems, isEmpty);
      expect(
        after.items.firstWhere((i) => i.id == problem.id).status.code,
        StatusCode.cancelled,
      );
    });

    test('repeat skips products that left the store', () {
      final repeated = RepeatResponseModel.fromJson(
        FakeOrdersBackend().repeat('ru', '10219'),
      ).toEntity();
      expect(repeated.lines, hasLength(1));
      expect(repeated.unavailable, 1);
    });

    test('«Отправить сейчас» moves a forming parcel on', () {
      final backend = FakeOrdersBackend();
      final parcel = ParcelDetailsModel.fromJson(
        backend.sendNow('ru', 'P-5525'),
      ).toEntity();
      expect(parcel.status.code, StatusCode.awaitingSurcharge);
      expect(parcel.surcharge, isNotNull);
      expect(
        () => backend.sendNow('ru', 'P-5525'),
        throwsA(isA<ServerException>()),
      );
    });

    test('surcharge = weight × rate − paid, rounded up', () {
      final s = sampleParcel('ru', 'P-5518').surcharge!;
      expect(s.deliveryCost, (s.weightGrams * s.ratePerKg / 1000).ceil());
      expect(s.amount, s.deliveryCost - s.paid);
    });

    test('an order placed and paid in checkout shows up in orders', () {
      var now = DateTime(2026, 11, 12, 12);
      final orders = FakeOrdersBackend(now: () => now);
      final checkout = FakeCheckoutBackend(now: () => now, orders: orders);
      final total = samplePreview('ru', backend: checkout).summary.total;
      final placed = checkout.placeOrder(
        'ru',
        CheckoutRequest.body(
          regionId: 'ashgabat',
          lines: checkoutLines('ru'),
          draft: readyDraft,
          expectedTotal: total,
        ),
        'key',
      );
      final number = (placed['order'] as Map)['number'] as String;
      final paymentId = (placed['order'] as Map)['payment_id'] as String;

      final waiting = OrderDetailsModel.fromJson(
        orders.order('ru', number),
      ).toEntity();
      expect(waiting.status.code, StatusCode.awaitingPayment);
      expect(waiting.canPay, isTrue);
      expect(waiting.money.total, total);

      now = now.add(const Duration(seconds: 5));
      checkout.paymentStatus('ru', paymentId);
      final paid = OrderDetailsModel.fromJson(
        orders.order('ru', number),
      ).toEntity();
      expect(paid.status.code, StatusCode.paid);
      expect(paid.money.due, paid.money.total - paid.money.paid);
    });

    test('an unknown status keeps its server title', () {
      const model = StatusModel(code: 'lost_in_space', title: 'Где-то');
      expect(
        model.toEntity(),
        const Status(code: StatusCode.unknown, title: 'Где-то'),
      );
    });
  });

  group('OrdersRepositoryImpl', () {
    late Directory dir;
    late _MockRemote remote;
    late OrdersRepositoryImpl repository;
    final backend = FakeOrdersBackend();
    final at = DateTime(2026, 11, 12, 9);

    setUp(() async {
      dir = await Directory.systemTemp.createTemp('orders_test');
      Hive.init(dir.path);
      final box = await Hive.openLazyBox<String>('account');
      remote = _MockRemote();
      repository = OrdersRepositoryImpl(
        remote,
        OrdersLocalDataSource(box),
        now: () => at,
      );
    });

    tearDown(() async {
      await Hive.close();
      await dir.delete(recursive: true);
    });

    test('offline: the last copy, marked with its time', () async {
      when(() => remote.orders(any(), any())).thenAnswer(
        (_) async =>
            OrdersResponseModel.fromJson(backend.orders('ru', 'active')),
      );
      final fresh = await repository.orders(
        languageCode: 'ru',
        tab: OrderTab.active,
      );
      expect(fresh.getRight().toNullable()?.isFromCache, isFalse);

      when(
        () => remote.orders(any(), any()),
      ).thenThrow(const NetworkException());
      final cached = (await repository.orders(
        languageCode: 'ru',
        tab: OrderTab.active,
      )).getRight().toNullable();
      expect(cached?.isFromCache, isTrue);
      expect(cached?.fetchedAt, at);
      expect(cached?.data, fresh.getRight().toNullable()?.data);
    });

    test('offline without a copy is a NetworkFailure', () async {
      when(() => remote.parcels(any())).thenThrow(const NetworkException());
      final result = await repository.parcels(languageCode: 'ru');
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });

    test('a server error is not hidden behind the copy', () async {
      when(
        () => remote.order(any(), any()),
      ).thenThrow(const ServerException(code: 'not_found', message: 'Нет'));
      final result = await repository.order(languageCode: 'ru', number: '1');
      expect(
        result.getLeft().toNullable(),
        isA<ServerFailure>().having((f) => f.message, 'message', 'Нет'),
      );
    });

    test('a change updates the device copy', () async {
      when(() => remote.cancel(any(), any(), any())).thenAnswer(
        (_) async => OrderDetailsModel.fromJson(
          FakeOrdersBackend().cancel('ru', '10228', 'other'),
        ),
      );
      await repository.cancel(
        languageCode: 'ru',
        number: '10228',
        reasonId: 'other',
      );

      when(
        () => remote.order(any(), any()),
      ).thenThrow(const NetworkException());
      final cached = await repository.order(
        languageCode: 'ru',
        number: '10228',
      );
      expect(
        cached.getRight().toNullable()?.data.status.code,
        StatusCode.cancelled,
      );
    });
  });
}
