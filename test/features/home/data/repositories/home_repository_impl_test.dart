import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/home/data/datasources/home_local_data_source.dart';
import 'package:tmshop/features/home/data/datasources/home_remote_data_source.dart';
import 'package:tmshop/core/product/data/product_summary_model.dart';
import 'package:tmshop/features/home/data/models/home_models.dart';
import 'package:tmshop/features/home/data/repositories/home_repository_impl.dart';

import '../../../../helpers/home_fixtures.dart';

class _MockRemote extends Mock implements HomeRemoteDataSource {}

class _MockLocal extends Mock implements HomeLocalDataSource {}

void main() {
  late _MockRemote remote;
  late _MockLocal local;
  late HomeRepositoryImpl repository;
  final model = sampleHomeModel('ru');

  setUpAll(() {
    registerFallbackValue(CachedHome(response: model, fetchedAt: fixtureNow));
  });

  setUp(() {
    remote = _MockRemote();
    local = _MockLocal();
    repository = HomeRepositoryImpl(remote, local, now: () => fixtureNow);
  });

  group('fetchHome', () {
    test('returns content and saves it to the cache', () async {
      when(() => remote.getHome('ru')).thenAnswer((_) async => model);
      when(() => local.write(any(), any())).thenAnswer((_) async {});

      final result = await repository.fetchHome('ru');

      final content = result.getOrElse((_) => throw StateError('left'));
      expect(content.isFromCache, isFalse);
      expect(content.sections, isNotEmpty);
      final saved =
          verify(() => local.write('ru', captureAny())).captured.single
              as CachedHome;
      expect(saved.fetchedAt, fixtureNow);
    });

    test('still returns content when the cache write fails', () async {
      when(() => remote.getHome('ru')).thenAnswer((_) async => model);
      when(() => local.write(any(), any())).thenThrow(const CacheException());

      final result = await repository.fetchHome('ru');
      expect(result.isRight(), isTrue);
    });

    test('maps network and server errors to failures', () async {
      when(() => remote.getHome('ru')).thenThrow(const NetworkException());
      expect(
        (await repository.fetchHome('ru')).getLeft().toNullable(),
        isA<NetworkFailure>(),
      );

      when(
        () => remote.getHome('ru'),
      ).thenThrow(const ServerException(code: 'x', message: 'Ошибка'));
      final failure = (await repository.fetchHome('ru')).getLeft().toNullable();
      expect(failure, isA<ServerFailure>());
      expect((failure! as ServerFailure).message, 'Ошибка');
      verifyNever(() => local.write(any(), any()));
    });
  });

  group('getCachedHome', () {
    test('returns null when nothing is cached', () async {
      when(() => local.read('tk')).thenAnswer((_) async => null);
      final result = await repository.getCachedHome('tk');
      expect(result.getOrElse((_) => throw StateError('left')), isNull);
    });

    test('marks cached content', () async {
      when(() => local.read('ru')).thenAnswer(
        (_) async => CachedHome(response: model, fetchedAt: fixtureNow),
      );
      final content = (await repository.getCachedHome(
        'ru',
      )).getOrElse((_) => throw StateError('left'));
      expect(content?.isFromCache, isTrue);
    });

    test('maps a broken cache to CacheFailure', () async {
      when(() => local.read('ru')).thenThrow(const CacheException());
      expect(
        (await repository.getCachedHome('ru')).getLeft().toNullable(),
        isA<CacheFailure>(),
      );
    });
  });

  test('getRecommendations maps the page', () async {
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
}
