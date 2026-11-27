import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/product/domain/product_page.dart';
import 'package:tmshop/core/product/domain/recommendations_repository.dart';
import 'package:tmshop/core/product/presentation/for_you_bloc.dart';

import '../../helpers/home_fixtures.dart';

class _MockGetRecommendations extends Mock
    implements GetRecommendationsUseCase {}

void main() {
  late _MockGetRecommendations getRecommendations;
  final first = samplePage('ru', next: '1');
  final second = samplePage('ru', from: 4);

  setUp(() => getRecommendations = _MockGetRecommendations());

  void answer(String lang, String? cursor, Either<Failure, ProductPage> r) =>
      when(
        () => getRecommendations(languageCode: lang, cursor: cursor),
      ).thenAnswer((_) async => r);

  ForYouBloc build() => ForYouBloc(getRecommendations);

  blocTest<ForYouBloc, ForYouState>(
    'loads the first page, then appends the next and stops at the end',
    setUp: () {
      answer('ru', null, right(first));
      answer('ru', '1', right(second));
    },
    build: build,
    act: (bloc) async {
      bloc.add(const ForYouEvent.started('ru'));
      await Future<void>.delayed(Duration.zero);
      bloc
        ..add(const ForYouEvent.nextPageRequested())
        ..add(const ForYouEvent.nextPageRequested());
      await Future<void>.delayed(Duration.zero);
      bloc.add(const ForYouEvent.nextPageRequested());
    },
    expect: () => [
      const ForYouState(status: ForYouStatus.loadingFirst),
      ForYouState(
        items: first.items,
        nextCursor: '1',
        status: ForYouStatus.idle,
      ),
      ForYouState(
        items: first.items,
        nextCursor: '1',
        status: ForYouStatus.loadingMore,
      ),
      ForYouState(
        items: [...first.items, ...second.items],
        status: ForYouStatus.idle,
      ),
    ],
    verify: (_) => verify(
      () => getRecommendations(languageCode: 'ru', cursor: '1'),
    ).called(1),
  );

  blocTest<ForYouBloc, ForYouState>(
    'a failed page can be retried',
    setUp: () => answer('ru', null, left(const NetworkFailure())),
    build: build,
    act: (bloc) async {
      bloc.add(const ForYouEvent.started('ru'));
      await Future<void>.delayed(Duration.zero);
      answer('ru', null, right(first));
      bloc.add(const ForYouEvent.nextPageRequested());
    },
    expect: () => [
      const ForYouState(status: ForYouStatus.loadingFirst),
      const ForYouState(
        status: ForYouStatus.failure,
        failure: NetworkFailure(),
      ),
      const ForYouState(status: ForYouStatus.loadingFirst),
      ForYouState(
        items: first.items,
        nextCursor: '1',
        status: ForYouStatus.idle,
      ),
    ],
  );

  test('a page that arrives after a language switch is dropped', () async {
    final slowRu = Completer<Either<Failure, ProductPage>>();
    final tkPage = samplePage('tk');
    when(
      () => getRecommendations(languageCode: 'ru', cursor: null),
    ).thenAnswer((_) async => right(first));
    when(
      () => getRecommendations(languageCode: 'ru', cursor: '1'),
    ).thenAnswer((_) => slowRu.future);
    answer('tk', null, right(tkPage));

    final bloc = build()..add(const ForYouEvent.started('ru'));
    await Future<void>.delayed(Duration.zero);
    bloc.add(const ForYouEvent.nextPageRequested());
    await Future<void>.delayed(Duration.zero);
    bloc.add(const ForYouEvent.started('tk'));
    await Future<void>.delayed(Duration.zero);
    slowRu.complete(right(second));
    await Future<void>.delayed(Duration.zero);

    expect(bloc.state.items, tkPage.items);
    await bloc.close();
  });
}
