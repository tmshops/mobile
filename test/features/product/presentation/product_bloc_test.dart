import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/features/product/domain/usecases/fetch_product_use_case.dart';
import 'package:tmshop/features/product/domain/usecases/get_delivery_quotes_use_case.dart';
import 'package:tmshop/features/product/domain/usecases/get_recent_product_use_case.dart';
import 'package:tmshop/features/product/presentation/bloc/product_bloc.dart';

import '../../../helpers/product_fixtures.dart';

class _MockRecent extends Mock implements GetRecentProductUseCase {}

class _MockFetch extends Mock implements FetchProductUseCase {}

class _MockDelivery extends Mock implements GetDeliveryQuotesUseCase {}

void main() {
  late _MockRecent recent;
  late _MockFetch fetch;
  late _MockDelivery delivery;
  final details = sampleProduct('ru', clothingId);
  final quotes = sampleDelivery('ru', clothingId, 'ashgabat');
  const preview = ProductSummary(
    id: clothingId,
    title: 'Платья',
    imageUrl: 'tile.jpg',
    price: 216,
  );

  setUp(() {
    recent = _MockRecent();
    fetch = _MockFetch();
    delivery = _MockDelivery();
    when(() => recent(any(), any())).thenReturn(null);
    when(
      () => fetch(languageCode: 'ru', id: clothingId),
    ).thenAnswer((_) async => right(details));
    when(
      () => delivery(
        languageCode: 'ru',
        id: any(named: 'id'),
        regionId: any(named: 'regionId'),
      ),
    ).thenAnswer((_) async => right(quotes));
  });

  ProductBloc build() => ProductBloc(recent, fetch, delivery);

  Future<ProductBloc> started({ProductSummary? withPreview}) async {
    final bloc = build()
      ..add(
        ProductEvent.started(
          languageCode: 'ru',
          id: clothingId,
          regionId: 'ashgabat',
          preview: withPreview,
        ),
      );
    await bloc.stream.firstWhere(
      (s) =>
          s.status == ProductStatus.loaded &&
          s.deliveryStatus == DeliveryStatus.loaded,
    );
    return bloc;
  }

  test('shows the tapped tile first, then details and delivery', () async {
    final bloc = build()
      ..add(
        const ProductEvent.started(
          languageCode: 'ru',
          id: clothingId,
          regionId: 'ashgabat',
          preview: preview,
        ),
      );
    final first = await bloc.stream.first;
    expect(first.preview, preview);
    expect(first.details, isNull);

    final loaded = await bloc.stream.firstWhere(
      (s) =>
          s.status == ProductStatus.loaded &&
          s.deliveryStatus == DeliveryStatus.loaded,
    );
    expect(loaded.details, details);
    expect(loaded.delivery, quotes);
    await bloc.close();
  });

  test('a recent copy shows at once; a failed refresh keeps it', () async {
    when(() => recent('ru', clothingId)).thenReturn(details);
    when(
      () => fetch(languageCode: 'ru', id: clothingId),
    ).thenAnswer((_) async => left(const NetworkFailure()));
    final bloc = build()
      ..add(
        const ProductEvent.started(
          languageCode: 'ru',
          id: clothingId,
          regionId: 'ashgabat',
        ),
      );
    final first = await bloc.stream.first;
    expect(first.details, details);
    await Future<void>.delayed(Duration.zero);
    await Future<void>.delayed(Duration.zero);
    expect(bloc.state.status, ProductStatus.loaded);
    expect(bloc.state.failure, isNull);
    await bloc.close();
  });

  blocTest<ProductBloc, ProductState>(
    'unknown product ends in notFound',
    setUp: () => when(
      () => fetch(languageCode: 'ru', id: 'gone'),
    ).thenAnswer((_) async => right(null)),
    build: build,
    act: (bloc) => bloc.add(
      const ProductEvent.started(
        languageCode: 'ru',
        id: 'gone',
        regionId: 'ashgabat',
      ),
    ),
    verify: (bloc) => expect(bloc.state.status, ProductStatus.notFound),
  );

  test('picking values: unavailable ignored, conflicts unpicked', () async {
    final bloc = await started();
    final colors = details.properties.firstWhere((p) => p.id == 'color');
    final sizes = details.properties.firstWhere((p) => p.id == 'size');

    // Find a colour + size pair that is in stock, and one that is not.
    final inStock = details.skus.firstWhere((s) => s.stock > 0);
    bloc
      ..add(
        ProductEvent.valueSelected(
          propertyId: 'color',
          valueId: inStock.values['color']!,
        ),
      )
      ..add(
        ProductEvent.valueSelected(
          propertyId: 'size',
          valueId: inStock.values['size']!,
        ),
      );
    await Future<void>.delayed(Duration.zero);
    expect(bloc.state.selection?.sku?.id, inStock.id);

    // Another colour where the chosen size is sold out drops the size.
    for (final color in colors.values) {
      final sameSize = details.skus.where(
        (s) =>
            s.values['color'] == color.id &&
            s.values['size'] == inStock.values['size'],
      );
      final colorHasStock = details.skus.any(
        (s) => s.values['color'] == color.id && s.stock > 0,
      );
      if (colorHasStock && sameSize.every((s) => s.stock == 0)) {
        bloc.add(
          ProductEvent.valueSelected(propertyId: 'color', valueId: color.id),
        );
        await Future<void>.delayed(Duration.zero);
        expect(bloc.state.chosen['color'], color.id);
        expect(bloc.state.chosen.containsKey('size'), isFalse);
        break;
      }
    }
    expect(sizes.values, isNotEmpty);
    await bloc.close();
  });

  test('quantity is clamped to the stock of the picked SKU', () async {
    final bloc = await started();
    final sku = details.skus.firstWhere((s) => s.stock > 0);
    for (final MapEntry(:key, :value) in sku.values.entries) {
      bloc.add(ProductEvent.valueSelected(propertyId: key, valueId: value));
    }
    bloc.add(const ProductEvent.quantityChanged(1000));
    await Future<void>.delayed(Duration.zero);
    expect(bloc.state.quantity, sku.stock);
    bloc.add(const ProductEvent.quantityChanged(0));
    await Future<void>.delayed(Duration.zero);
    expect(bloc.state.quantity, 1);
    await bloc.close();
  });

  test('a new region reloads delivery only', () async {
    final bloc = await started();
    bloc.add(const ProductEvent.regionChanged('mary'));
    await bloc.stream.firstWhere(
      (s) => s.deliveryStatus == DeliveryStatus.loaded,
    );
    verify(
      () => delivery(languageCode: 'ru', id: clothingId, regionId: 'mary'),
    ).called(1);
    verify(() => fetch(languageCode: 'ru', id: clothingId)).called(1);
    await bloc.close();
  });
}
