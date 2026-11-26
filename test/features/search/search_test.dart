import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_api_params.dart';
import 'package:tmshop/core/dev/fake_backend/fake_catalog_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_search_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/utils/source_link.dart';
import 'package:tmshop/features/search/data/datasources/search_local_data_source.dart';
import 'package:tmshop/features/search/data/datasources/search_remote_data_source.dart';
import 'package:tmshop/features/search/data/repositories/search_repository_impl.dart';
import 'package:tmshop/features/search/domain/entities/search_hints.dart';
import 'package:tmshop/features/search/domain/repositories/search_repository.dart';
import 'package:tmshop/features/search/presentation/bloc/search_bloc.dart';
import 'package:tmshop/features/search/presentation/widgets/search_results_parts.dart';
import 'package:tmshop/features/search/presentation/widgets/search_view.dart';

import '../../helpers/pump_view.dart';

class _MockRemote extends Mock implements SearchRemoteDataSource {}

class _MockLocal extends Mock implements SearchLocalDataSource {}

class _MockRepository extends Mock implements SearchRepository {}

class _MockBloc extends MockBloc<SearchEvent, SearchState>
    implements SearchBloc {}

const _link = 'https://item.taobao.com/item.htm?id=6123';

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);

  group('fake server', () {
    final search = FakeSearchBackend();
    final catalog = FakeCatalogBackend();

    test('hints start with what is typed, brands after a name', () {
      expect(
        search.suggest('ru', 'крос')['suggestions'] as List,
        contains('Кроссовки'),
      );
      expect(
        search.suggest('ru', 'кроссовки x')['suggestions'] as List,
        contains('Кроссовки Xiaomi'),
      );
    });

    test('a typo gets «Возможно, вы искали»', () {
      final json = search.suggest('ru', 'кросовки');
      expect(json['suggestions'], isEmpty);
      expect(json['did_you_mean'], 'Кроссовки');
      expect(search.suggest('ru', 'zzzzzz')['did_you_mean'], isNull);
    });

    test('q= finds products with every word', () {
      final items =
          catalog.products('ru', {
                FakeApiParams.text: 'кроссовки xiaomi',
              })['items']
              as List;
      expect(items, isNotEmpty);
      for (final item in items.cast<Map<String, dynamic>>()) {
        final title = (item['title'] as String).toLowerCase();
        expect(title, contains('кроссовки'));
        expect(title, contains('xiaomi'));
      }
    });

    test('seller= lists one brand only', () {
      final items =
          catalog.products('ru', {FakeApiParams.seller: 'anker'})['items']
              as List;
      expect(items, isNotEmpty);
      for (final item in items.cast<Map<String, dynamic>>()) {
        expect(item['title'], contains('Anker'));
      }
    });
  });

  test('source links are found in share text', () {
    expect(SourceLinks.find('Смотри! $_link 👍'), _link);
    expect(SourceLinks.find('https://m.tb.cn/h.abc'), 'https://m.tb.cn/h.abc');
    expect(SourceLinks.find('https://example.com/taobao.com'), isNull);
    expect(SourceLinks.find('кроссовки'), isNull);
  });

  group('SearchRepositoryImpl', () {
    late _MockLocal local;
    late SearchRepositoryImpl repository;

    setUp(() {
      local = _MockLocal();
      repository = SearchRepositoryImpl(_MockRemote(), local);
      when(() => local.write(any())).thenAnswer((_) async {});
    });

    test('remember puts the query on top, once, at most 20', () async {
      when(
        local.read,
      ).thenReturn([for (var i = 0; i < 20; i++) 'q$i', 'Кроссовки']);
      final result = await repository.remember(' кроссовки ');
      final history = result.getOrElse((_) => fail('$result'));
      expect(history.first, 'кроссовки');
      expect(history, hasLength(historyLimit));
      expect(
        history.where((q) => q.toLowerCase() == 'кроссовки'),
        hasLength(1),
      );
    });

    test('a broken box is a cache failure', () async {
      when(local.read).thenThrow(const CacheException());
      expect(
        (await repository.history()).getLeft().toNullable(),
        isA<CacheFailure>(),
      );
    });
  });

  group('SearchBloc', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(repository.history).thenAnswer((_) async => right(const ['чехол']));
      when(
        () => repository.popular(any()),
      ).thenAnswer((_) async => right(const ['Кроссовки']));
      when(() => repository.hints(any(), any())).thenAnswer(
        (_) async => right(const SearchHints(suggestions: ['Кроссовки'])),
      );
      when(
        () => repository.remember(any()),
      ).thenAnswer((_) async => right(const ['Кроссовки', 'чехол']));
    });

    blocTest<SearchBloc, SearchState>(
      'opens with history and popular queries',
      build: () => SearchBloc(repository),
      act: (bloc) => bloc.add(const SearchEvent.started(languageCode: 'ru')),
      expect: () => const [
        SearchState(history: ['чехол']),
        SearchState(history: ['чехол'], popular: ['Кроссовки']),
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'asks for hints once typing pauses',
      build: () => SearchBloc(repository),
      act: (bloc) {
        bloc
          ..add(const SearchEvent.started(languageCode: 'ru'))
          ..add(const SearchEvent.textChanged('к'))
          ..add(const SearchEvent.textChanged('крос'));
      },
      wait: SearchBloc.debounce * 2,
      verify: (bloc) {
        verify(() => repository.hints('ru', 'крос')).called(1);
        verifyNever(() => repository.hints('ru', 'к'));
        expect(bloc.state.hints.suggestions, ['Кроссовки']);
        expect(bloc.state.isLoadingHints, isFalse);
      },
    );

    blocTest<SearchBloc, SearchState>(
      'a link asks for no hints',
      build: () => SearchBloc(repository),
      act: (bloc) => bloc.add(const SearchEvent.textChanged('глянь $_link')),
      wait: SearchBloc.debounce * 2,
      verify: (bloc) {
        expect(bloc.state.link, _link);
        verifyNever(() => repository.hints(any(), any()));
      },
    );

    blocTest<SearchBloc, SearchState>(
      'a search goes into the history',
      build: () => SearchBloc(repository),
      act: (bloc) => bloc.add(const SearchEvent.submitted('Кроссовки')),
      expect: () => const [
        SearchState(history: ['Кроссовки', 'чехол']),
      ],
    );
  });

  group('SearchView', () {
    late _MockBloc bloc;
    late List<String> searched;
    late List<String> links;

    setUp(() {
      bloc = _MockBloc();
      searched = [];
      links = [];
    });

    Future<void> pump(WidgetTester tester, SearchState state) {
      when(() => bloc.state).thenReturn(state);
      return pumpView(
        tester,
        SearchView(
          initialText: state.text,
          onSearch: searched.add,
          onOpenLink: links.add,
          onPhotoSearch: () {},
        ),
        providers: [BlocProvider<SearchBloc>.value(value: bloc)],
      );
    }

    testWidgets('empty field: history with × and popular queries', (
      tester,
    ) async {
      await pump(
        tester,
        const SearchState(history: ['чехол'], popular: ['Наушники']),
      );
      expect(find.text(ru.searchRecent), findsOneWidget);
      expect(find.text(ru.searchPopular), findsOneWidget);

      await tester.tap(find.byTooltip(ru.searchRemoveQuery('чехол')));
      verify(() => bloc.add(const SearchEvent.historyRemoved('чехол')));

      await tester.tap(find.text('Наушники'));
      expect(searched, ['Наушники']);
      verify(() => bloc.add(const SearchEvent.submitted('Наушники')));
    });

    testWidgets('typing: the fix, hints and the exact query', (tester) async {
      await pump(
        tester,
        const SearchState(
          text: 'кросовки',
          hints: SearchHints(didYouMean: 'Кроссовки'),
        ),
      );
      expect(find.text(ru.searchDidYouMean('Кроссовки')), findsOneWidget);
      expect(find.text(ru.searchFor('кросовки')), findsOneWidget);
      await tester.tap(find.text(ru.searchDidYouMean('Кроссовки')));
      expect(searched, ['Кроссовки']);
    });

    testWidgets('a link opens the product instead of a search', (tester) async {
      await pump(tester, const SearchState(text: _link, link: _link));
      await tester.tap(find.text(ru.searchOpenLink));
      expect(links, [_link]);
      expect(searched, isEmpty);
    });
  });

  testWidgets('nothing found offers photo search and «Найдите мне товар»', (
    tester,
  ) async {
    var photo = 0;
    var findMe = 0;
    await pumpView(
      tester,
      Scaffold(
        body: SearchEmptyState(
          query: 'zz',
          onPhotoSearch: () => photo++,
          onFindForMe: () => findMe++,
        ),
      ),
    );
    expect(find.text(ru.searchEmptyTitle('zz')), findsOneWidget);
    await tester.tap(find.text(ru.photoFindForMe));
    await tester.tap(find.text(ru.searchByPhoto));
    expect((photo, findMe), (1, 1));
  });
}
