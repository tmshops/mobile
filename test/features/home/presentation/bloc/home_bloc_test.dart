import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/home/domain/usecases/fetch_home_use_case.dart';
import 'package:tmshop/features/home/domain/usecases/get_cached_home_use_case.dart';
import 'package:tmshop/features/home/presentation/bloc/home_bloc.dart';

import '../../../../helpers/home_fixtures.dart';

class _MockGetCached extends Mock implements GetCachedHomeUseCase {}

class _MockFetch extends Mock implements FetchHomeUseCase {}

void main() {
  late _MockGetCached getCached;
  late _MockFetch fetch;
  final cached = sampleHome('ru', isFromCache: true);
  final fresh = sampleHome('ru');
  const offline = NetworkFailure();

  setUp(() {
    getCached = _MockGetCached();
    fetch = _MockFetch();
  });

  HomeBloc build() => HomeBloc(getCached, fetch);

  blocTest<HomeBloc, HomeState>(
    'shows the cache at once, then the fresh content',
    setUp: () {
      when(() => getCached('ru')).thenAnswer((_) async => right(cached));
      when(() => fetch('ru')).thenAnswer((_) async => right(fresh));
    },
    build: build,
    act: (bloc) => bloc.add(const HomeEvent.started('ru')),
    expect: () => [
      HomeState.loaded(content: cached, isRefreshing: true),
      HomeState.loaded(content: fresh),
    ],
  );

  blocTest<HomeBloc, HomeState>(
    'without cache: skeleton, then failure',
    setUp: () {
      when(() => getCached('ru')).thenAnswer((_) async => right(null));
      when(() => fetch('ru')).thenAnswer((_) async => left(offline));
    },
    build: build,
    act: (bloc) => bloc.add(const HomeEvent.started('ru')),
    expect: () => [const HomeState.loading(), const HomeState.failure(offline)],
  );

  blocTest<HomeBloc, HomeState>(
    'keeps the cache when the download fails',
    setUp: () {
      when(() => getCached('ru')).thenAnswer((_) async => right(cached));
      when(() => fetch('ru')).thenAnswer((_) async => left(offline));
    },
    build: build,
    act: (bloc) => bloc.add(const HomeEvent.started('ru')),
    expect: () => [
      HomeState.loaded(content: cached, isRefreshing: true),
      HomeState.loaded(content: cached, refreshFailure: offline),
    ],
  );

  blocTest<HomeBloc, HomeState>(
    'a broken cache falls back to downloading',
    setUp: () {
      when(
        () => getCached('ru'),
      ).thenAnswer((_) async => left(const CacheFailure()));
      when(() => fetch('ru')).thenAnswer((_) async => right(fresh));
    },
    build: build,
    act: (bloc) => bloc.add(const HomeEvent.started('ru')),
    expect: () => [const HomeState.loading(), HomeState.loaded(content: fresh)],
  );

  blocTest<HomeBloc, HomeState>(
    'retry from the failure state shows the skeleton again',
    setUp: () {
      when(() => getCached('ru')).thenAnswer((_) async => right(null));
      when(() => fetch('ru')).thenAnswer((_) async => left(offline));
    },
    build: build,
    act: (bloc) async {
      bloc.add(const HomeEvent.started('ru'));
      await Future<void>.delayed(Duration.zero);
      when(() => fetch('ru')).thenAnswer((_) async => right(fresh));
      bloc.add(const HomeEvent.refreshed());
    },
    expect: () => [
      const HomeState.loading(),
      const HomeState.failure(offline),
      const HomeState.loading(),
      HomeState.loaded(content: fresh),
    ],
  );

  blocTest<HomeBloc, HomeState>(
    'refresh keeps content on screen while it runs',
    setUp: () {
      when(() => fetch('ru')).thenAnswer((_) async => right(fresh));
      when(() => getCached('ru')).thenAnswer((_) async => right(null));
    },
    build: build,
    act: (bloc) async {
      bloc.add(const HomeEvent.started('ru'));
      await Future<void>.delayed(Duration.zero);
      bloc.add(const HomeEvent.refreshed());
    },
    skip: 2,
    expect: () => [
      HomeState.loaded(content: fresh, isRefreshing: true),
      HomeState.loaded(content: fresh),
    ],
  );

  blocTest<HomeBloc, HomeState>(
    'refresh before any start does nothing',
    build: build,
    act: (bloc) => bloc.add(const HomeEvent.refreshed()),
    expect: () => const <HomeState>[],
  );
}
