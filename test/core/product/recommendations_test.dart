import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/product/data/product_page_model.dart';
import 'package:tmshop/core/product/data/product_summary_model.dart';
import 'package:tmshop/core/product/data/recommendations_repository_impl.dart';
import 'package:tmshop/core/product/domain/recommendations_repository.dart';

import '../../helpers/home_fixtures.dart';

class _MockRemote extends Mock implements RecommendationsRemoteDataSource {}

class _MockRepository extends Mock implements RecommendationsRepository {}

void main() {
  group('RecommendationsRepositoryImpl', () {
    late _MockRemote remote;
    late RecommendationsRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = RecommendationsRepositoryImpl(remote);
    });

    test('maps the page', () async {
      when(
        () => remote.getRecommendations(languageCode: 'ru', cursor: '1'),
      ).thenAnswer(
        (_) async => const ProductPageModel(
          items: [
            ProductSummaryModel(id: 'a', title: 'A', imageUrl: 'u', price: 1),
          ],
          nextCursor: '2',
        ),
      );
      final page = (await repository.getRecommendations(
        languageCode: 'ru',
        cursor: '1',
      )).getOrElse((_) => throw StateError('left'));
      expect(page.items.single.id, 'a');
      expect(page.nextCursor, '2');
    });

    test('offline becomes NetworkFailure', () async {
      when(
        () => remote.getRecommendations(languageCode: 'ru'),
      ).thenThrow(const NetworkException());
      final result = await repository.getRecommendations(languageCode: 'ru');
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  test('GetRecommendationsUseCase passes the cursor through', () async {
    final repository = _MockRepository();
    final page = samplePage('ru');
    when(
      () => repository.getRecommendations(languageCode: 'ru', cursor: '3'),
    ).thenAnswer((_) async => right(page));
    final result = await GetRecommendationsUseCase(repository)(
      languageCode: 'ru',
      cursor: '3',
    );
    expect(result, right(page));
  });
}
