import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/home/domain/repositories/home_repository.dart';
import 'package:tmshop/features/home/domain/usecases/fetch_home_use_case.dart';
import 'package:tmshop/features/home/domain/usecases/get_cached_home_use_case.dart';
import 'package:tmshop/features/home/domain/usecases/get_recommendations_use_case.dart';

import '../../../../helpers/home_fixtures.dart';

class _MockRepository extends Mock implements HomeRepository {}

void main() {
  late _MockRepository repository;

  setUp(() => repository = _MockRepository());

  test('GetCachedHomeUseCase delegates to the repository', () async {
    final content = sampleHome('ru', isFromCache: true);
    when(
      () => repository.getCachedHome('ru'),
    ).thenAnswer((_) async => right(content));
    expect(await GetCachedHomeUseCase(repository)('ru'), right(content));
  });

  test('FetchHomeUseCase delegates to the repository', () async {
    when(
      () => repository.fetchHome('tk'),
    ).thenAnswer((_) async => left(const NetworkFailure()));
    final result = await FetchHomeUseCase(repository)('tk');
    expect(result.getLeft().toNullable(), isA<NetworkFailure>());
  });

  test('GetRecommendationsUseCase passes the cursor through', () async {
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
