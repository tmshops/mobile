import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_cart_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:tmshop/features/cart/data/models/cart_mappers.dart';
import 'package:tmshop/features/cart/data/models/cart_models.dart';
import 'package:tmshop/features/cart/data/repositories/cart_quote_repository_impl.dart';

import '../../helpers/cart_fixtures.dart';

class _MockRemote extends Mock implements CartRemoteDataSource {}

void main() {
  group('fake cart server (dev data)', () {
    test('totals add up over ticked, available lines only', () {
      final lines = sampleCart('ru');
      final quote = sampleQuote('ru', lines);
      final items = lines.fold<int>(
        0,
        (sum, l) => sum + (quote.lines[l.key]?.price ?? 0) * l.quantity,
      );
      final s = quote.summary;
      expect(s.items, items);
      expect(
        s.total,
        s.items + s.chinaDelivery + s.internationalEstimate - s.discount,
      );

      final untickedFirst = [
        lines.first.copyWith(isSelected: false),
        ...lines.skip(1),
      ];
      expect(sampleQuote('ru', untickedFirst).summary.items, lessThan(items));
    });

    test('sellers get China delivery only with ticked lines', () {
      final lines = [
        for (final l in sampleCart('ru')) l.copyWith(isSelected: false),
      ];
      final quote = sampleQuote('ru', lines);
      expect(quote.sellers, isNotEmpty);
      expect(quote.sellers.values.every((s) => s.chinaDelivery == 0), isTrue);
      expect(quote.summary.total, 0);
    });

    test('SALE10 takes 10% off the items; other codes are rejected', () {
      final lines = sampleCart('tk');
      final good = sampleQuote('tk', lines, promo: 'sale10');
      expect(good.promo?.isApplied, isTrue);
      expect(good.summary.discount, (good.summary.items * 0.1).round());

      final bad = sampleQuote('tk', lines, promo: 'NOPE');
      expect(bad.promo?.isApplied, isFalse);
      expect(bad.promo?.message, 'Promokod tapylmady');
      expect(bad.summary.discount, 0);
    });

    test('far regions cost more to fly to', () {
      final lines = sampleCart('ru');
      expect(
        sampleQuote(
          'ru',
          lines,
          region: 'balkan',
        ).summary.internationalEstimate,
        greaterThan(sampleQuote('ru', lines).summary.internationalEstimate),
      );
    });
  });

  group('CartQuoteRepositoryImpl', () {
    late _MockRemote remote;
    late CartQuoteRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = CartQuoteRepositoryImpl(remote);
    });

    test('sends lines with tick and add-time price', () async {
      final line = sampleCart('ru').first.copyWith(isSelected: false);
      when(() => remote.quote(any(), any())).thenAnswer(
        (_) async => CartQuoteModel.fromJson(
          FakeCartBackend().quote(
            'ru',
            CartQuoteRequest.body(lines: [line], regionId: 'mary'),
          ),
        ),
      );
      await repository.quote(
        languageCode: 'ru',
        lines: [line],
        regionId: 'mary',
        promoCode: 'SALE10',
      );
      final body =
          verify(() => remote.quote('ru', captureAny())).captured.single
              as Map<String, dynamic>;
      expect(body['region'], 'mary');
      expect(body['promo_code'], 'SALE10');
      final sent = (body['lines'] as List<dynamic>).single as Map;
      expect(sent['selected'], isFalse);
      expect(sent['price_at_add'], line.price);
    });

    test('offline is NetworkFailure', () async {
      when(
        () => remote.quote(any(), any()),
      ).thenThrow(const NetworkException());
      final offline = await repository.quote(
        languageCode: 'ru',
        lines: sampleCart('ru'),
        regionId: 'ashgabat',
      );
      expect(offline.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });
}
