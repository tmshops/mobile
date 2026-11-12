import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/l10n/l10n.dart';
import 'package:tmshop/core/price_alerts/price_alert.dart';
import 'package:tmshop/core/price_alerts/price_alerts_cubit.dart';
import 'package:tmshop/core/price_alerts/price_alerts_repository.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/core/utils/app_dates.dart';
import 'package:tmshop/core/viewed/viewed_repository_impl.dart';

import '../../helpers/favourites_fixtures.dart';

class _MockAlerts extends Mock implements PriceAlertsRepository {}

ProductSummary _product(String id, {int price = 100}) =>
    ProductSummary(id: id, title: id, imageUrl: '$id.jpg', price: price);

void main() {
  group('PriceAlertsCubit', () {
    late _MockAlerts repository;
    late PriceAlertsCubit cubit;
    final seeded = seededAlerts('ru');

    setUp(() {
      repository = _MockAlerts();
      when(() => repository.load('ru')).thenAnswer((_) async => right(seeded));
      cubit = PriceAlertsCubit(repository);
    });

    tearDown(() => cubit.close());

    test('the seeded list has a dropped and an unchanged alert', () {
      expect(seeded, hasLength(2));
      expect(seeded.where((a) => a.hasDropped), hasLength(1));
    });

    test('loads, then a switch off keeps the row until reload', () async {
      await cubit.load('ru');
      expect(cubit.state.status, PriceAlertsStatus.ready);
      final first = seeded.first;
      when(
        () => repository.unsubscribe(first.id),
      ).thenAnswer((_) async => right(unit));

      final result = await cubit.toggle('ru', first.product);
      expect(result, right<Failure, bool?>(false));
      expect(cubit.state.items, hasLength(2));
      expect(cubit.state.isOn(first.id), isFalse);
      expect(cubit.state.busyIds, isEmpty);
    });

    test('subscribing adds the product at today\'s price', () async {
      final product = _product('new', price: 216);
      when(() => repository.subscribe('ru', 'new')).thenAnswer(
        (_) async => right(PriceAlert(product: product, subscribedPrice: 216)),
      );
      final result = await cubit.toggle('ru', product);
      expect(result, right<Failure, bool?>(true));
      expect(cubit.state.isOn('new'), isTrue);
      expect(cubit.state.items.single.subscribedPrice, 216);
    });

    test('a failure flips the switch back', () async {
      when(
        () => repository.subscribe('ru', 'x'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      final result = await cubit.toggle('ru', _product('x'));
      expect(result.isLeft(), isTrue);
      expect(cubit.state.items, isEmpty);
      expect(cubit.state.busyIds, isEmpty);
    });

    test('a product gone from the catalogue is not added', () async {
      when(
        () => repository.subscribe('ru', 'gone'),
      ).thenAnswer((_) async => right(null));
      expect(
        await cubit.toggle('ru', _product('gone')),
        right<Failure, bool?>(null),
      );
      expect(cubit.state.items, isEmpty);
    });

    test('a failed load says so; clear forgets everything', () async {
      when(
        () => repository.load('ru'),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      await cubit.load('ru');
      expect(cubit.state.status, PriceAlertsStatus.failure);
      cubit.clear();
      expect(cubit.state, const PriceAlertsState());
    });
  });

  group('ViewedRepositoryImpl', () {
    late Directory dir;
    late ViewedRepositoryImpl repository;
    final at = DateTime(2026, 11, 12, 10);

    setUp(() async {
      dir = await Directory.systemTemp.createTemp('viewed_test');
      Hive.init(dir.path);
      repository = ViewedRepositoryImpl(await Hive.openBox<String>('viewed'));
    });

    tearDown(() async {
      await Hive.close();
      await dir.delete(recursive: true);
    });

    Future<List<String>> ids() async => [
      for (final v in (await repository.load()).getOrElse((_) => []))
        v.product.id,
    ];

    test('newest first, a repeat view moves to the top', () async {
      await repository.record(_product('a'), at);
      await repository.record(_product('b'), at.add(const Duration(hours: 1)));
      await repository.record(_product('a'), at.add(const Duration(hours: 2)));
      expect(await ids(), ['a', 'b']);
      final first = (await repository.load()).getOrElse((_) => []).first;
      expect(first.viewedAt, at.add(const Duration(hours: 2)));
    });

    test(
      'keeps the last ${ViewedRepositoryImpl.limit}; remove and clear',
      () async {
        for (var i = 0; i <= ViewedRepositoryImpl.limit; i++) {
          await repository.record(
            _product('p$i'),
            at.add(Duration(minutes: i)),
          );
        }
        final all = await ids();
        expect(all, hasLength(ViewedRepositoryImpl.limit));
        expect(all.first, 'p${ViewedRepositoryImpl.limit}');
        expect(all, isNot(contains('p0')));

        await repository.remove('p1');
        expect(await ids(), isNot(contains('p1')));
        await repository.clear();
        expect(await ids(), isEmpty);
      },
    );
  });

  test('day labels: today, yesterday, then dates', () {
    final ru = lookupAppLocalizations(AppLocales.ru);
    final now = DateTime(2026, 11, 12, 0, 5);
    expect(AppDates.dayLabel(ru, DateTime(2026, 11, 12, 0, 1), now), 'Сегодня');
    expect(AppDates.dayLabel(ru, DateTime(2026, 11, 11, 23, 59), now), 'Вчера');
    expect(
      AppDates.dayLabel(ru, DateTime(2026, 11, 10, 12), now),
      AppDates.dayMonth(ru, DateTime(2026, 11, 10)),
    );
  });
}
