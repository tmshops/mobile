import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_checkout_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/checkout/data/datasources/checkout_data_sources.dart';
import 'package:tmshop/features/checkout/data/models/checkout_mappers.dart';
import 'package:tmshop/features/checkout/data/models/checkout_models.dart';
import 'package:tmshop/features/checkout/data/repositories/checkout_repository_impl.dart';
import 'package:tmshop/features/checkout/domain/entities/checkout.dart';

import '../../helpers/cart_fixtures.dart';
import '../../helpers/checkout_fixtures.dart';

class _MockRemote extends Mock implements CheckoutRemoteDataSource {}

class _MockLocal extends Mock implements CheckoutLocalDataSource {}

void main() {
  group('fake checkout server (dev data)', () {
    test('pay now + pay later = total; courier and services add up', () {
      final base = samplePreview('ru');
      final s = base.summary;
      expect(s.payNow + s.payLater, s.total);
      expect(s.payLater, s.internationalEstimate + s.courier);

      final withServices = samplePreview(
        'ru',
        draft: readyDraft.copyWith(serviceIds: {'photo', 'packing'}),
      );
      expect(withServices.summary.services, 15 + 25);

      final pickup = samplePreview(
        'ru',
        draft: readyDraft.copyWith(method: ReceivingMethod.pickup),
      );
      expect(pickup.summary.courier, 0);
    });

    test('truck needs 500 TMT; batteries cannot fly', () {
      final cheap = [sampleLine('ru', 'clothes-women-dresses-1')];
      final preview = samplePreview('ru', lines: cheap);
      final truck = preview.deliveryOptions.firstWhere(
        (o) => o.type == CheckoutDeliveryType.truck,
      );
      if (preview.summary.items < 500) {
        expect(truck.unavailableReason, isNotNull);
      }

      final battery = samplePreview(
        'ru',
        lines: [sampleLine('ru', 'el-phone-powerbanks-2')],
      );
      expect(battery.selectedDelivery?.type, CheckoutDeliveryType.express);
    });

    test('the same Idempotency-Key never creates a second order', () {
      final backend = FakeCheckoutBackend();
      final total = samplePreview('ru', backend: backend).summary.total;
      final body = CheckoutRequest.body(
        regionId: 'ashgabat',
        lines: checkoutLines('ru'),
        draft: readyDraft,
        expectedTotal: total,
      );
      final first = backend.placeOrder('ru', body, 'key-1');
      final again = backend.placeOrder('ru', body, 'key-1');
      final other = backend.placeOrder('ru', body, 'key-2');
      expect(again['order'], first['order']);
      expect(
        (other['order'] as Map)['number'],
        isNot((first['order'] as Map)['number']),
      );
    });

    test('a different total comes back as price_changed', () {
      final response = FakeCheckoutBackend().placeOrder(
        'ru',
        CheckoutRequest.body(
          regionId: 'ashgabat',
          lines: checkoutLines('ru'),
          draft: readyDraft,
          expectedTotal: 1,
        ),
        'k',
      );
      final result = PlaceOrderResponseModel.fromJson(response).toEntity();
      expect(result, isA<OrderPriceChanged>());
    });

    test('payment is pending, then paid; a 0000 phone fails', () {
      var now = DateTime(2026, 11, 11, 12);
      final backend = FakeCheckoutBackend(now: () => now);
      String pay(String phone) {
        final draft = readyDraft.copyWith(
          recipient: validRecipient.copyWith(phone: phone),
        );
        final total = samplePreview(
          'ru',
          draft: draft,
          backend: backend,
        ).summary.total;
        final response = backend.placeOrder(
          'ru',
          CheckoutRequest.body(
            regionId: 'ashgabat',
            lines: checkoutLines('ru'),
            draft: draft,
            expectedTotal: total,
          ),
          phone,
        );
        return (response['order'] as Map)['payment_id'] as String;
      }

      final ok = pay('65123456');
      final bad = pay('65120000');
      expect(backend.paymentStatus('ru', ok)?['status'], 'pending');
      now = now.add(const Duration(seconds: 2));
      expect(backend.paymentStatus('ru', ok)?['status'], 'paid');
      expect(backend.paymentStatus('tk', bad)?['status'], 'failed');
      expect(
        backend.paymentStatus('tk', bad)?['reason'],
        'Bank tölegi kabul etmedi',
      );
    });
  });

  group('CheckoutRequest.body', () {
    test('sends only what the receiving method needs', () {
      final courier = CheckoutRequest.body(
        regionId: 'mary',
        lines: checkoutLines('ru'),
        draft: readyDraft,
      );
      expect(courier['address'], isNotNull);
      expect(courier.containsKey('pickup_point_id'), isFalse);

      final pickup = CheckoutRequest.body(
        regionId: 'mary',
        lines: checkoutLines('ru'),
        draft: readyDraft.copyWith(
          method: ReceivingMethod.pickup,
          pickupPointId: 'mary-1',
        ),
      );
      expect(pickup['pickup_point_id'], 'mary-1');
      expect(pickup.containsKey('address'), isFalse);
    });
  });

  group('CheckoutRepositoryImpl', () {
    late _MockRemote remote;
    late _MockLocal local;
    late CheckoutRepositoryImpl repository;

    setUpAll(() {
      registerFallbackValue(const Recipient());
      registerFallbackValue(const CourierAddress());
      registerFallbackValue(<String, dynamic>{});
    });

    setUp(() {
      remote = _MockRemote();
      local = _MockLocal();
      repository = CheckoutRepositoryImpl(remote, local);
    });

    test('a failing save does not block the order', () async {
      when(() => local.write(any(), any())).thenThrow(const CacheException());
      await expectLater(
        repository.save(validRecipient, const CourierAddress()),
        completes,
      );
    });

    test('offline preview is a NetworkFailure', () async {
      when(
        () => remote.preview(any(), any()),
      ).thenThrow(const NetworkException());
      final result = await repository.preview(
        languageCode: 'ru',
        regionId: 'ashgabat',
        lines: checkoutLines('ru'),
        draft: readyDraft,
      );
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });

    test('the idempotency key reaches the API', () async {
      when(() => remote.placeOrder(any(), any(), any())).thenAnswer(
        (_) async => const PlaceOrderResponseModel(
          status: 'created',
          order: PlacedOrderModel(number: '1', payNow: 10, payment: 'cash'),
        ),
      );
      await repository.placeOrder(
        languageCode: 'ru',
        regionId: 'ashgabat',
        lines: checkoutLines('ru'),
        draft: readyDraft,
        expectedTotal: 10,
        idempotencyKey: 'abc',
      );
      verify(() => remote.placeOrder('ru', any(), 'abc')).called(1);
    });
  });
}
