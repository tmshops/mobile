import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/dev/fake_backend/fake_orders_backend.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/features/orders/data/datasources/orders_data_sources.dart';
import 'package:tmshop/features/orders/data/models/orders_feed_mappers.dart';
import 'package:tmshop/features/orders/data/models/orders_feed_models.dart';
import 'package:tmshop/features/orders/data/repositories/orders_repository_impl.dart';
import 'package:tmshop/features/orders/domain/entities/order_status.dart';
import 'package:tmshop/features/orders/domain/entities/orders_feed.dart';
import 'package:tmshop/features/orders/domain/repositories/orders_repository.dart';
import 'package:tmshop/features/orders/domain/usecases/orders_use_cases.dart';
import 'package:tmshop/features/orders/presentation/bloc/loadable.dart';
import 'package:tmshop/features/orders/presentation/bloc/orders_feed_cubits.dart';

import '../../helpers/orders_fixtures.dart';

class _MockRemote extends Mock implements OrdersRemoteDataSource {}

class _MockRepository extends Mock implements OrdersRepository {}

void main() {
  group('fake server: profile filters through the real parsers', () {
    for (final lang in ['ru', 'tk']) {
      test('every filter parses; counters match the cards ($lang)', () {
        final backend = FakeOrdersBackend();
        final overview = sampleOverview(lang, backend: backend);
        for (final filter in OrdersFilter.values) {
          final raw = backend.feed(lang, ordersFilterParam(filter));
          final cards = sampleFeed(lang, filter, backend: backend);
          expect(overview.countOf(filter), cards.length, reason: '$filter');
          for (final (i, card) in cards.indexed) {
            expect(card.status.code, isNot(StatusCode.unknown));
            expect(card.items, isNotEmpty);
            expect(card.actions, isNotEmpty);
            // Every server button is one the app knows.
            final rawCard = (raw['cards'] as List<dynamic>)[i] as Map;
            expect(
              card.actions,
              hasLength((rawCard['actions'] as List).length),
            );
          }
        }
        expect(overview.tracking, isNotEmpty);
      });
    }

    test('«Ждут оплаты»: unpaid orders and parcels awaiting surcharge', () {
      final cards = sampleFeed('ru', OrdersFilter.awaitingPayment);
      final orders = cards.where((c) => c.kind == FeedKind.order);
      final parcels = cards.where((c) => c.kind == FeedKind.parcel);
      expect(orders, isNotEmpty);
      expect(parcels, isNotEmpty);
      for (final c in orders) {
        expect(c.status.code, StatusCode.awaitingPayment);
        expect(c.amountDue, greaterThan(0));
      }
      // The same sum as «Оплатить» on the order page.
      for (final c in orders.where(
        (c) => c.actions.any((a) => a.type == FeedActionType.pay),
      )) {
        expect(c.amountDue, sampleOrder('ru', c.number).money.due);
      }
      for (final c in parcels) {
        expect(c.status.code, StatusCode.awaitingSurcharge);
        expect(c.actions.single.type, FeedActionType.paySurcharge);
        expect(c.track, isNotNull);
      }
    });

    test('«Выкупаем» shows only the items being bought', () {
      const buying = {
        StatusCode.paid,
        StatusCode.purchased,
        StatusCode.toWarehouse,
        StatusCode.inWarehouse,
      };
      for (final card in sampleFeed('ru', OrdersFilter.buying)) {
        final order = sampleOrder('ru', card.number);
        for (final item in card.items) {
          final full = order.items.firstWhere((i) => i.id == item.id);
          expect(buying, contains(full.status.code));
        }
      }
    });

    test('«В пути»: parcels with tracking and «Отследить»', () {
      final cards = sampleFeed('ru', OrdersFilter.inTransit);
      expect(cards, isNotEmpty);
      for (final c in cards) {
        expect(c.kind, FeedKind.parcel);
        expect(c.track?.text, isNotEmpty);
        expect(c.actions.single.type, FeedActionType.track);
      }
    });

    test('«Ждут отзыва»: one card per item; a review removes it', () {
      final backend = FakeOrdersBackend();
      final cards = sampleFeed('ru', OrdersFilter.toReview, backend: backend);
      expect(cards, isNotEmpty);
      final first = cards.first;
      final review = first.actions.firstWhere(
        (a) => a.type == FeedActionType.review,
      );
      expect(review.itemId, first.items.single.id);

      backend.markReviewed(first.items.single.id);
      final after = sampleFeed('ru', OrdersFilter.toReview, backend: backend);
      expect(after, hasLength(cards.length - 1));
    });

    test('«Проблемы»: only problem items; a decision clears it', () {
      final backend = FakeOrdersBackend();
      final cards = sampleFeed('ru', OrdersFilter.problems, backend: backend);
      final card = cards.single;
      final problem = sampleOrder(
        'ru',
        card.number,
        backend: backend,
      ).problems.single;
      expect(card.items.single.id, problem.id);
      backend.resolveProblem('ru', card.number, problem.id, 'refund');
      expect(
        sampleFeed('ru', OrdersFilter.problems, backend: backend),
        isEmpty,
      );
    });

    test('tracking: newest first, parcels and items sent by sellers', () {
      final tracking = sampleOverview('ru').tracking;
      for (var i = 1; i < tracking.length; i++) {
        expect(tracking[i - 1].at.isBefore(tracking[i].at), isFalse);
      }
      expect(tracking.map((t) => t.kind).toSet(), {
        FeedKind.parcel,
        FeedKind.order,
      });
    });
  });

  group('mappers', () {
    test('unknown filters and buttons from the server are skipped', () {
      final overview = const OrdersOverviewModel(
        counts: {'in_transit': 2, 'someday': 7},
      ).toEntity();
      expect(overview.counts, {OrdersFilter.inTransit: 2});

      final card = FeedCardModel.fromJson({
        'kind': 'parcel',
        'number': 'P-1',
        'created_at': '2026-11-20T10:00:00.000',
        'status': {'code': 'in_transit', 'title': 'В пути'},
        'items': <Object>[],
        'actions': [
          {'id': 'track', 'is_primary': true},
          {'id': 'teleport'},
        ],
      }).toEntity();
      expect(card.actions, [
        const FeedAction(type: FeedActionType.track, isPrimary: true),
      ]);
    });

    test('filter values round-trip', () {
      for (final filter in OrdersFilter.values) {
        expect(ordersFilterOf(ordersFilterParam(filter)), filter);
      }
      expect(ordersFilterOf('nope'), isNull);
    });
  });

  group('repository', () {
    late Directory dir;
    late _MockRemote remote;
    late OrdersRepositoryImpl repository;
    final at = DateTime(2026, 11, 27, 9);
    final backend = FakeOrdersBackend();

    setUp(() async {
      dir = await Directory.systemTemp.createTemp('orders_feed');
      Hive.init(dir.path);
      final box = await Hive.openLazyBox<String>('account');
      remote = _MockRemote();
      repository = OrdersRepositoryImpl(
        remote,
        OrdersLocalDataSource(box),
        now: () => at,
      );
    });

    tearDown(() async {
      await Hive.close();
      await dir.delete(recursive: true);
    });

    test('feed is saved and shown from the device copy offline', () async {
      when(() => remote.feed('ru', 'in_transit')).thenAnswer(
        (_) async => OrdersFeedModel.fromJson(backend.feed('ru', 'in_transit')),
      );
      final online = (await repository.feed(
        languageCode: 'ru',
        filter: OrdersFilter.inTransit,
      )).getOrElse((_) => throw StateError('left'));
      expect(online.isFromCache, isFalse);

      when(
        () => remote.feed('ru', 'in_transit'),
      ).thenThrow(const NetworkException());
      final offline = (await repository.feed(
        languageCode: 'ru',
        filter: OrdersFilter.inTransit,
      )).getOrElse((_) => throw StateError('left'));
      expect(offline.isFromCache, isTrue);
      expect(offline.data, online.data);
      expect(offline.fetchedAt, at);
    });

    test('overview offline without a copy is a NetworkFailure', () async {
      when(() => remote.overview('tk')).thenThrow(const NetworkException());
      final result = await repository.overview(languageCode: 'tk');
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  group('use cases and cubits', () {
    late _MockRepository repo;
    final at = DateTime(2026, 11, 27, 9);
    final overview = sampleOverview('ru');
    final transit = sampleFeed('ru', OrdersFilter.inTransit);
    final review = sampleFeed('ru', OrdersFilter.toReview);

    setUpAll(() => registerFallbackValue(OrdersFilter.buying));

    setUp(() {
      repo = _MockRepository();
      when(
        () => repo.overview(languageCode: any(named: 'languageCode')),
      ).thenAnswer((_) async => right(Fetched(data: overview, fetchedAt: at)));
      when(
        () => repo.feed(
          languageCode: any(named: 'languageCode'),
          filter: any(named: 'filter'),
        ),
      ).thenAnswer((invocation) async {
        final filter = invocation.namedArguments[#filter] as OrdersFilter;
        return right(
          Fetched(
            data: filter == OrdersFilter.inTransit ? transit : review,
            fetchedAt: at,
          ),
        );
      });
    });

    test('use cases delegate to the repository', () async {
      final o = await GetOrdersOverviewUseCase(repo)(languageCode: 'ru');
      expect(o.getRight().toNullable()?.data, overview);
      final f = await GetOrdersFeedUseCase(repo)(
        languageCode: 'tk',
        filter: OrdersFilter.inTransit,
      );
      expect(f.getRight().toNullable()?.data, transit);
      verify(
        () => repo.feed(languageCode: 'tk', filter: OrdersFilter.inTransit),
      ).called(1);
    });

    blocTest<OrdersOverviewCubit, Loadable<OrdersOverview>>(
      'overview loads; a failed reload keeps the counters',
      build: () => OrdersOverviewCubit(GetOrdersOverviewUseCase(repo)),
      act: (cubit) async {
        await cubit.load('ru');
        when(
          () => repo.overview(languageCode: any(named: 'languageCode')),
        ).thenAnswer((_) async => left(const NetworkFailure()));
        await cubit.load('ru');
      },
      expect: () => [
        const Loadable<OrdersOverview>(isLoading: true),
        Loadable<OrdersOverview>(data: overview, fetchedAt: at),
        Loadable<OrdersOverview>(
          data: overview,
          fetchedAt: at,
          isLoading: true,
        ),
        Loadable<OrdersOverview>(
          data: overview,
          fetchedAt: at,
          failure: const NetworkFailure(),
        ),
      ],
    );

    blocTest<OrdersFeedCubit, OrdersFeedState>(
      'starts on its filter; another filter loads once and is kept',
      build: () =>
          OrdersFeedCubit(GetOrdersFeedUseCase(repo), OrdersFilter.inTransit),
      act: (cubit) async {
        await cubit.load('ru');
        await cubit.select(OrdersFilter.toReview);
        await cubit.select(OrdersFilter.inTransit);
        await cubit.select(OrdersFilter.toReview);
      },
      verify: (cubit) {
        expect(cubit.state.filter, OrdersFilter.toReview);
        expect(cubit.state.current.data, review);
        expect(cubit.state.slots[OrdersFilter.inTransit]?.data, transit);
        verify(
          () => repo.feed(languageCode: 'ru', filter: OrdersFilter.toReview),
        ).called(1);
        verify(
          () => repo.feed(languageCode: 'ru', filter: OrdersFilter.inTransit),
        ).called(1);
      },
    );

    blocTest<OrdersFeedCubit, OrdersFeedState>(
      'refresh reloads the shown filter',
      build: () =>
          OrdersFeedCubit(GetOrdersFeedUseCase(repo), OrdersFilter.inTransit),
      act: (cubit) async {
        await cubit.load('ru');
        await cubit.refresh();
      },
      verify: (_) => verify(
        () => repo.feed(languageCode: 'ru', filter: OrdersFilter.inTransit),
      ).called(2),
    );
  });
}
