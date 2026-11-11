import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/product/domain/repositories/product_repository.dart';
import 'package:tmshop/features/product/domain/usecases/fetch_product_use_case.dart';
import 'package:tmshop/features/product/domain/usecases/get_delivery_quotes_use_case.dart';
import 'package:tmshop/features/product/domain/usecases/get_recent_product_use_case.dart';

import '../../../helpers/product_fixtures.dart';

class _MockRepository extends Mock implements ProductRepository {}

void main() {
  late _MockRepository repository;
  final details = sampleProduct('ru', clothingId);

  setUp(() => repository = _MockRepository());

  test('GetRecentProductUseCase reads memory', () {
    when(() => repository.getRecent('ru', clothingId)).thenReturn(details);
    expect(GetRecentProductUseCase(repository)('ru', clothingId), details);
  });

  test('FetchProductUseCase delegates', () async {
    when(
      () => repository.fetch(languageCode: 'tk', id: clothingId),
    ).thenAnswer((_) async => left(const NetworkFailure()));
    final result = await FetchProductUseCase(repository)(
      languageCode: 'tk',
      id: clothingId,
    );
    expect(result.getLeft().toNullable(), isA<NetworkFailure>());
  });

  test('GetDeliveryQuotesUseCase passes the region', () async {
    final quotes = sampleDelivery('ru', clothingId, 'mary');
    when(
      () => repository.getDelivery(
        languageCode: 'ru',
        id: clothingId,
        regionId: 'mary',
      ),
    ).thenAnswer((_) async => right(quotes));
    final result = await GetDeliveryQuotesUseCase(repository)(
      languageCode: 'ru',
      id: clothingId,
      regionId: 'mary',
    );
    expect(result, right(quotes));
  });
}
