import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_video_backend.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/features/video_feed/data/datasources/video_feed_remote_data_source.dart';
import 'package:tmshop/features/video_feed/data/repositories/video_feed_repository_impl.dart';
import 'package:tmshop/features/video_feed/domain/entities/video_clip.dart';
import 'package:tmshop/features/video_feed/domain/repositories/video_feed_repository.dart';
import 'package:tmshop/features/video_feed/presentation/bloc/video_feed_cubit.dart';
import 'package:tmshop/features/video_feed/presentation/widgets/video_feed_view.dart';

import '../../helpers/pump_view.dart';

class _MockRepository extends Mock implements VideoFeedRepository {}

class _MockCubit extends MockCubit<VideoFeedState> implements VideoFeedCubit {}

class _MockRemote extends Mock implements VideoFeedRemoteDataSource {}

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);

  VideoClip clip(int i) => VideoClip(
    id: 'v$i',
    posterUrl: 'https://x/$i.jpg',
    duration: const Duration(seconds: 10),
    shareUrl: 'https://tmshop.tm/product/p$i',
    likeCount: 10,
    product: ProductSummary(
      id: 'p$i',
      title: 'Товар $i',
      imageUrl: 'https://x/p$i.jpg',
      price: 100,
    ),
  );

  tearDown(VideoFeedCubit.resetSession);

  group('FakeVideoBackend', () {
    test('opens at the tapped story and pages on', () {
      final backend = FakeVideoBackend();
      final first = backend.feed('ru', startId: 'v3');
      final items = first['items'] as List<dynamic>;
      expect((items.first as Map)['id'], 'v3');
      final next = backend.feed('ru', cursor: first['next_cursor'] as String);
      expect(
        ((next['items'] as List).first as Map)['id'],
        'v${3 + FakeVideoBackend.pageSize}',
      );
    });

    test('a like is counted and remembered', () {
      final backend = FakeVideoBackend();
      final before = (backend.feed('ru')['items'] as List).first as Map;
      backend.like('v0', isLiked: true);
      final after = (backend.feed('ru')['items'] as List).first as Map;
      expect(after['is_liked'], isTrue);
      expect(after['likes'], (before['likes'] as int) + 1);
    });
  });

  group('VideoFeedRepositoryImpl', () {
    test('maps clips with their products', () async {
      final remote = _MockRemote();
      final json = FakeVideoBackend().feed('ru');
      when(
        () => remote.feed(
          any(),
          startId: any(named: 'startId'),
          cursor: any(named: 'cursor'),
        ),
      ).thenAnswer((_) async => json);
      final page = (await VideoFeedRepositoryImpl(
        remote,
      ).feed('ru')).getOrElse((_) => const VideoPage(clips: []));
      expect(page.clips, hasLength(FakeVideoBackend.pageSize));
      expect(page.clips.first.product.title, isNotEmpty);
      expect(page.nextCursor, isNotNull);
    });
  });

  group('VideoFeedCubit', () {
    late _MockRepository repository;

    setUp(() {
      repository = _MockRepository();
      when(
        () => repository.feed(
          any(),
          startId: any(named: 'startId'),
          cursor: any(named: 'cursor'),
        ),
      ).thenAnswer(
        (invocation) async => right(
          invocation.namedArguments[#cursor] == null
              ? VideoPage(clips: [clip(0), clip(1), clip(2)], nextCursor: '3')
              : VideoPage(clips: [clip(3)]),
        ),
      );
    });

    blocTest<VideoFeedCubit, VideoFeedState>(
      'loads the next page near the end',
      build: () => VideoFeedCubit(repository),
      act: (cubit) async {
        await cubit.load('ru', startId: 'v0');
        await cubit.pageChanged(1);
      },
      verify: (cubit) {
        expect(cubit.state.clips, hasLength(4));
        expect(cubit.state.nextCursor, isNull);
        expect(cubit.state.current, 1);
      },
    );

    blocTest<VideoFeedCubit, VideoFeedState>(
      'a like the server refuses is taken back',
      build: () => VideoFeedCubit(repository),
      setUp: () => when(
        () => repository.like(any(), isLiked: any(named: 'isLiked')),
      ).thenAnswer((_) async => left(const NetworkFailure())),
      act: (cubit) async {
        await cubit.load('ru');
        await cubit.toggleLike('v0');
      },
      verify: (cubit) {
        expect(cubit.state.clips.first.isLiked, isFalse);
        expect(cubit.state.clips.first.likeCount, 10);
      },
    );

    test('sound stays on for the session', () async {
      final a = VideoFeedCubit(repository);
      await a.load('ru');
      expect(a.state.isMuted, isTrue);
      a.toggleSound();
      await a.close();
      final b = VideoFeedCubit(repository);
      await b.load('ru');
      expect(b.state.isMuted, isFalse);
      await b.close();
    });
  });

  group('VideoFeedView', () {
    testWidgets('product card, rail and sound toggle', (tester) async {
      final cubit = _MockCubit();
      when(
        () => cubit.state,
      ).thenReturn(VideoFeedState(isLoading: false, clips: [clip(0)]));
      when(cubit.toggleSound).thenReturn(null);
      final opened = <String>[];
      await pumpView(
        tester,
        VideoFeedView(
          startId: 'v0',
          onOpenProduct: (p) async => opened.add(p.id),
          onAddToCart: (_) async {},
        ),
        providers: [BlocProvider<VideoFeedCubit>.value(value: cubit)],
      );
      expect(find.text('Товар 0'), findsOneWidget);
      expect(find.text(ru.actionAddToCart), findsOneWidget);
      await tester.tap(find.bySemanticsLabel(ru.videoSoundOn));
      verify(cubit.toggleSound).called(1);
      await tester.tap(find.text(ru.videoMore));
      await tester.pump();
      expect(opened, ['p0']);
      // The fake playback runs forever; stop it before the test ends.
      await tester.pumpWidget(const SizedBox.shrink());
    });
  });
}
