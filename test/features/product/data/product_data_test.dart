import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/product/data/datasources/product_remote_data_source.dart';
import 'package:tmshop/features/product/data/models/product_mappers.dart';
import 'package:tmshop/features/product/data/models/product_models.dart';
import 'package:tmshop/features/product/data/repositories/product_repository_impl.dart';
import 'package:tmshop/features/product/domain/entities/product_details.dart';

import '../../../helpers/home_fixtures.dart';
import '../../../helpers/product_fixtures.dart';

class _MockRemote extends Mock implements ProductRemoteDataSource {}

void main() {
  group('fake product backend (dev data)', () {
    test('details match the list tile the user tapped', () {
      final tile = FakeCatalogBackend().productBase('ru', clothingId)?.summary;
      final details = sampleProduct('ru', clothingId);
      expect(details.title, tile?['title']);
      expect(details.price, tile?['price']);
      expect(details.media.first.imageUrl, tile?['image_url']);
    });

    test('home products resolve too; unknown ids do not', () {
      expect(sampleProduct('tk', 'p3').title, isNotEmpty);
      expect(() => sampleProduct('ru', 'nope-1'), throwsArgumentError);
    });

    test('batteries cannot fly; unknown delivery types are skipped', () {
      final quotes = sampleDelivery('ru', batteryId, 'ashgabat');
      expect(quotes.map((q) => q.type), [
        DeliveryType.express,
        DeliveryType.air,
        DeliveryType.truck,
      ]);
      expect(quotes[1].unavailableReason, isNotNull);
    });

    test('regions further away take longer', () {
      String term(String region) =>
          sampleDelivery('ru', clothingId, region).first.term;
      expect(term('ashgabat'), isNot(term('balkan')));
    });
  });

  group('ProductDetailsModel → ProductDetails', () {
    test('skips unknown media and keeps known variant data', () {
      final model = sampleProductModel('ru', clothingId);
      final details = sampleProduct('ru', clothingId);
      expect(model.media.length, details.media.length + 1);
      expect(details.properties.map((p) => p.id), ['color', 'size']);
      expect(details.sizeChart?.rows, isNotEmpty);
      expect(details.skus, isNotEmpty);
    });

    test('drops SKUs pointing at unknown values', () {
      final model = sampleProductModel('ru', clothingId).copyWith(
        skus: const [
          SkuModel(id: 'bad', values: {'color': 'purple'}, price: 1, stock: 1),
        ],
      );
      expect(model.toEntity(fetchedAt: fixtureNow).skus, isEmpty);
    });

    test('promo end moves onto the device clock', () {
      final endsAt = DateTime.utc(2026, 11, 12);
      final model = sampleProductModel('ru', clothingId).copyWith(
        serverTime: fixtureNow.toUtc().add(const Duration(minutes: 5)),
        promoEndsAt: endsAt,
      );
      expect(
        model.toEntity(fetchedAt: fixtureNow).promoEndsAt,
        endsAt.toLocal().subtract(const Duration(minutes: 5)),
      );
    });
  });

  group('ProductRepositoryImpl', () {
    late _MockRemote remote;
    late ProductRepositoryImpl repository;
    final model = sampleProductModel('ru', clothingId);

    setUp(() {
      remote = _MockRemote();
      repository = ProductRepositoryImpl(remote, now: () => fixtureNow);
    });

    test('keeps recently fetched products in memory, per language', () async {
      when(
        () => remote.getProduct('ru', clothingId),
      ).thenAnswer((_) async => model);
      expect(repository.getRecent('ru', clothingId), isNull);
      await repository.fetch(languageCode: 'ru', id: clothingId);
      expect(repository.getRecent('ru', clothingId)?.id, clothingId);
      expect(repository.getRecent('tk', clothingId), isNull);
    });

    test('404 is Right(null); offline is NetworkFailure', () async {
      when(() => remote.getProduct('ru', 'gone')).thenAnswer((_) async => null);
      final gone = await repository.fetch(languageCode: 'ru', id: 'gone');
      expect(gone.getOrElse((_) => throw StateError('left')), isNull);

      when(
        () => remote.getProduct('ru', 'x'),
      ).thenThrow(const NetworkException());
      final offline = await repository.fetch(languageCode: 'ru', id: 'x');
      expect(offline.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });
}
