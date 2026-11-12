import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_product_backend.dart';
import 'package:tmshop/core/dev/fake_backend/fake_reviews_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/widgets/widgets.dart';
import 'package:tmshop/features/reviews/data/models/review_models.dart';
import 'package:tmshop/features/reviews/domain/entities/review.dart';
import 'package:tmshop/features/reviews/domain/repositories/reviews_repository.dart';
import 'package:tmshop/features/reviews/presentation/bloc/reviews_cubits.dart';
import 'package:tmshop/features/reviews/presentation/widgets/my_reviews_view.dart';
import 'package:tmshop/features/reviews/presentation/widgets/product_reviews_view.dart';
import 'package:tmshop/features/reviews/presentation/widgets/review_parts.dart';
import 'package:tmshop/features/reviews/presentation/widgets/write_review_view.dart';

import '../../helpers/pump_view.dart';

class _MockRepository extends Mock implements ReviewsRepository {}

class _MockProductCubit extends MockCubit<ProductReviewsState>
    implements ProductReviewsCubit {}

class _MockWriteCubit extends MockCubit<WriteReviewState>
    implements WriteReviewCubit {}

class _MockMineCubit extends MockCubit<MyReviewsState>
    implements MyReviewsCubit {}

const _product = 'clothes-women-dresses-1';

void main() {
  final ru = lookupAppLocalizations(AppLocales.ru);
  final tk = lookupAppLocalizations(AppLocales.tk);

  setUpAll(() => registerFallbackValue(ReviewFilter.all));

  ReviewsPage page(
    String lang, {
    ReviewFilter filter = ReviewFilter.all,
    String? cursor,
  }) => ReviewsPageModel.fromJson(
    FakeReviewsBackend(
      FakeOrdersBackend(),
    ).page(lang, _product, filter.apiValue, cursor)!,
  ).toEntity();

  const target = ReviewTarget(
    orderNumber: '10219',
    itemId: '10219-1',
    productId: 'clothes-women-jeans-2',
    title: 'Джинсы',
    imageUrl: '',
    skuLabel: 'Синий, 28',
  );

  group('fake server', () {
    test('the product page shows the same numbers as the full list', () {
      final details = FakeProductBackend().details('ru', _product)!;
      final full = page('ru');
      expect(details['rating'], full.summary.average);
      expect(details['review_count'], full.summary.count);
      expect(
        full.summary.distribution.values.fold<int>(0, (a, b) => a + b),
        full.summary.count,
      );
    });

    test('filters and pages', () {
      final photos = page('ru', filter: ReviewFilter.photos);
      expect(photos.items.every((r) => r.photoUrls.isNotEmpty), isTrue);
      final fives = page('ru', filter: ReviewFilter.five);
      expect(fives.items.every((r) => r.rating == 5), isTrue);
      final translated = page('ru', filter: ReviewFilter.translated);
      expect(translated.items.every((r) => r.isTranslated), isTrue);
      final all = page('ru');
      expect(all.items, hasLength(FakeReviewsBackend.pageSize));
      expect(all.nextCursor, isNotNull);
    });

    test('a received item is reviewed once, then waits in moderation', () {
      final orders = FakeOrdersBackend();
      final backend = FakeReviewsBackend(orders);
      final item = backend.target('ru', '10219', '10219-1');
      expect(item, isNotNull);
      expect(backend.target('ru', '10228', '10228-1'), isNull);

      backend.submit('ru', '10219', '10219-1', 4, ' Хорошо ');
      final mine = backend.mine('ru');
      expect(mine.first['status'], 'moderation');
      expect(mine.first['text'], 'Хорошо');
      expect(
        mine.map((r) => r['status']),
        containsAll(['published', 'rejected']),
      );
      expect(backend.target('ru', '10219', '10219-1'), isNull);
      expect(
        () => backend.submit('ru', '10219', '10219-1', 5, ''),
        throwsA(isA<ServerException>()),
      );
      final order = orders.order('ru', '10219');
      final reviewed = (order['items'] as List)
          .cast<Map<String, dynamic>>()
          .firstWhere((i) => i['id'] == '10219-1');
      expect(reviewed['can_review'], isFalse);
    });
  });

  group('cubits', () {
    late _MockRepository repository;

    setUp(() => repository = _MockRepository());

    test('a filter reloads; the header stays; pages append', () async {
      when(
        () => repository.page('ru', _product),
      ).thenAnswer((_) async => right(page('ru')));
      when(
        () => repository.page('ru', _product, cursor: '10'),
      ).thenAnswer((_) async => right(page('ru', cursor: '10')));
      when(
        () => repository.page('ru', _product, filter: ReviewFilter.photos),
      ).thenAnswer((_) async => right(page('ru', filter: ReviewFilter.photos)));
      final cubit = ProductReviewsCubit(repository);
      await cubit.load('ru', _product);
      await cubit.loadMore('ru');
      expect(
        cubit.state.items.length,
        greaterThan(FakeReviewsBackend.pageSize),
      );

      final states = <ProductReviewsState>[];
      final sub = cubit.stream.listen(states.add);
      await cubit.setFilter('ru', ReviewFilter.photos);
      await sub.cancel();
      expect(states.first.summary, isNotNull, reason: 'header kept');
      expect(cubit.state.items.every((r) => r.photoUrls.isNotEmpty), isTrue);
      await cubit.close();
    });

    test('an unknown product; retry after a failure', () async {
      when(
        () => repository.page('ru', 'gone'),
      ).thenAnswer((_) async => right(null));
      final cubit = ProductReviewsCubit(repository);
      await cubit.load('ru', 'gone');
      expect(cubit.state.isNotFound, isTrue);

      when(
        () => repository.page('ru', 'gone'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      await cubit.retry('ru');
      expect(cubit.state.failure, isA<NetworkFailure>());
      await cubit.close();
    });

    test('write: stars needed, a failure keeps the form, then sent', () async {
      when(
        () => repository.target('ru', '10219', '10219-1'),
      ).thenAnswer((_) async => right(target));
      var tries = 0;
      when(
        () => repository.submit('ru', target, rating: 4, text: 'Ок'),
      ).thenAnswer(
        (_) async => ++tries == 1
            ? left(const NetworkFailure())
            : right(
                MyReview(
                  id: 'm',
                  productId: target.productId,
                  title: target.title,
                  imageUrl: '',
                  rating: 4,
                  text: 'Ок',
                  date: DateTime(2026, 11, 12),
                  status: MyReviewStatus.moderation,
                ),
              ),
      );
      final cubit = WriteReviewCubit(repository);
      await cubit.load('ru', '10219', '10219-1');
      expect(cubit.state.canSend, isFalse);
      cubit
        ..rate(4)
        ..write('Ок');
      expect(cubit.state.canSend, isTrue);
      await cubit.send('ru');
      expect(cubit.state.sendFailure, isA<NetworkFailure>());
      expect(cubit.state.rating, 4);
      await cubit.send('ru');
      expect(cubit.state.isSent, isTrue);
      await cubit.close();
    });

    test('write: an item that cannot be reviewed', () async {
      when(
        () => repository.target('ru', '10228', '1'),
      ).thenAnswer((_) async => right(null));
      final cubit = WriteReviewCubit(repository);
      await cubit.load('ru', '10228', '1');
      expect(cubit.state.isNotReviewable, isTrue);
      await cubit.close();
    });
  });

  group('ProductReviewsView', () {
    late _MockProductCubit cubit;

    setUp(() {
      cubit = _MockProductCubit();
      when(() => cubit.setFilter(any(), any())).thenAnswer((_) async {});
      when(() => cubit.loadMore(any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      ProductReviewsState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
      double width = 360,
    }) async {
      when(() => cubit.state).thenReturn(state);
      await pumpView(
        tester,
        const ProductReviewsView(),
        locale: locale,
        textScale: textScale,
        width: width,
        providers: [BlocProvider<ProductReviewsCubit>.value(value: cubit)],
      );
    }

    ProductReviewsState loaded(String lang) {
      final p = page(lang);
      return ProductReviewsState(
        isLoading: false,
        summary: p.summary,
        items: p.items,
        nextCursor: p.nextCursor,
      );
    }

    testWidgets('summary, chips, cards; a chip filters', (tester) async {
      final state = loaded('ru');
      await pump(tester, state);
      expect(find.byType(ReviewsSummaryHeader), findsOneWidget);
      expect(
        find.text(RatingStarsFormat.of(state.summary!.average)),
        findsOneWidget,
      );
      expect(find.text(ru.reviewsFilterPhotos), findsOneWidget);
      expect(find.byType(ReviewCard), findsWidgets);
      await tester.tap(find.text(ru.reviewsFilterPhotos));
      verify(() => cubit.setFilter('ru', ReviewFilter.photos)).called(1);
    });

    testWidgets('a filter with nothing in it says so', (tester) async {
      await pump(
        tester,
        loaded('ru').copyWith(items: const [], filter: ReviewFilter.one),
      );
      expect(find.text(ru.reviewsNoneForFilter), findsOneWidget);
    });

    for (final width in [360.0, 412.0]) {
      testWidgets('fits in Turkmen at 1.3× on ${width.toInt()} dp', (
        tester,
      ) async {
        await pump(
          tester,
          loaded('tk'),
          locale: AppLocales.tk,
          textScale: 1.3,
          width: width,
        );
        await scrollThrough(tester, find.byType(CustomScrollView), steps: 4);
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('ReviewCard', () {
    testWidgets('translated label, store reply, photo opens', (tester) async {
      final opened = <int>[];
      await pumpView(
        tester,
        Scaffold(
          body: ReviewCard(
            review: ProductReview(
              id: 'r',
              author: 'Li Na',
              date: DateTime(2026, 11, 1),
              rating: 4,
              text: 'Хорошо',
              skuLabel: 'Чёрный, M',
              photoUrls: const ['a', 'b'],
              isTranslated: true,
              storeReply: 'Спасибо!',
            ),
            onPhoto: (_, i) => opened.add(i),
          ),
        ),
      );
      expect(find.text(ru.reviewsTranslated), findsOneWidget);
      expect(find.text(ru.reviewsStoreReply), findsOneWidget);
      expect(find.text(ru.reviewsVariant('Чёрный, M')), findsOneWidget);
      await tester.tap(find.bySemanticsLabel(ru.reviewsPhoto(2, 2)));
      expect(opened, [1]);
    });

    testWidgets('the star picker: tap, drag, label', (tester) async {
      var rating = 0;
      await pumpView(
        tester,
        Scaffold(
          body: Center(
            child: StatefulBuilder(
              builder: (context, setState) => StarPicker(
                rating: rating,
                onChanged: (r) => setState(() => rating = r),
              ),
            ),
          ),
        ),
      );
      expect(find.text(ru.reviewsRatingPick), findsOneWidget);
      final picker = find.byType(GestureDetector).first;
      final box = tester.getRect(picker);
      await tester.tapAt(box.centerLeft + const Offset(10, 0));
      await tester.pump();
      expect(rating, 1);
      expect(find.text(ru.reviewsRating1), findsOneWidget);
      await tester.dragFrom(
        box.centerLeft + const Offset(10, 0),
        Offset(box.width - 20, 0),
      );
      await tester.pump();
      expect(rating, 5);
      expect(find.text(ru.reviewsRating5), findsOneWidget);
    });
  });

  group('WriteReviewView', () {
    late _MockWriteCubit cubit;
    late int done;

    setUp(() {
      cubit = _MockWriteCubit();
      done = 0;
      when(() => cubit.send(any())).thenAnswer((_) async {});
    });

    Future<void> pump(
      WidgetTester tester,
      WriteReviewState state, {
      Locale locale = AppLocales.ru,
      double textScale = 1,
    }) async {
      when(() => cubit.state).thenReturn(state);
      await pumpView(
        tester,
        WriteReviewView(onDone: () => done++),
        locale: locale,
        textScale: textScale,
        providers: [BlocProvider<WriteReviewCubit>.value(value: cubit)],
      );
    }

    testWidgets('no stars, no sending', (tester) async {
      await pump(
        tester,
        const WriteReviewState(isLoading: false, target: target),
      );
      expect(find.text(target.title), findsOneWidget);
      final send = find.widgetWithText(FilledButton, ru.reviewsSend);
      expect(tester.widget<FilledButton>(send).onPressed, isNull);
    });

    testWidgets('with stars it sends', (tester) async {
      await pump(
        tester,
        const WriteReviewState(isLoading: false, target: target, rating: 5),
      );
      await tester.tap(find.text(ru.reviewsSend));
      verify(() => cubit.send('ru')).called(1);
    });

    testWidgets('sent: thanks and «Готово»', (tester) async {
      await pump(
        tester,
        const WriteReviewState(isLoading: false, target: target, isSent: true),
      );
      expect(find.text(ru.reviewsSentText), findsOneWidget);
      await tester.tap(find.text(ru.walletDone));
      expect(done, 1);
    });

    testWidgets('fits in Turkmen at 1.3× on 360 dp', (tester) async {
      await pump(
        tester,
        const WriteReviewState(isLoading: false, target: target, rating: 3),
        locale: AppLocales.tk,
        textScale: 1.3,
      );
      expect(find.text(tk.reviewsRating3), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  });

  group('MyReviewsView', () {
    testWidgets('statuses, a rejection reason, the store reply', (
      tester,
    ) async {
      final mine = [
        for (final json in (FakeReviewsBackend(
          FakeOrdersBackend(),
        )..submit('ru', '10219', '10219-1', 5, 'Супер')).mine('ru'))
          MyReviewModel.fromJson(json).toEntity(),
      ];
      final cubit = _MockMineCubit();
      when(
        () => cubit.state,
      ).thenReturn(MyReviewsState(isLoading: false, items: mine));
      final opened = <String>[];
      await pumpView(
        tester,
        MyReviewsView(onOpenProduct: opened.add),
        providers: [BlocProvider<MyReviewsCubit>.value(value: cubit)],
      );
      expect(find.text(ru.reviewsStatusModeration), findsOneWidget);
      expect(find.text(ru.reviewsStatusPublished), findsOneWidget);
      await scrollThrough(tester, find.byType(ListView), steps: 2);
      expect(find.text(ru.reviewsStatusRejected), findsOneWidget);
      expect(find.textContaining(ru.reviewsRejectReason('')), findsOneWidget);
    });
  });
}

/// The header prints the average the same way [RatingStars] does.
abstract final class RatingStarsFormat {
  static String of(double rating) => RatingStars.format(rating);
}
