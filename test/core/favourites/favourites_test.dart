import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/favourites/favourite.dart';
import 'package:tmshop/core/favourites/favourite_model.dart';
import 'package:tmshop/core/favourites/favourites_cubit.dart';
import 'package:tmshop/core/favourites/favourites_repository.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';

import '../../helpers/favourites_fixtures.dart';

class _MockRemote extends Mock implements FavouritesRemoteDataSource {}

class _MockRepository extends Mock implements FavouritesRepository {}

ProductSummary _product(String id, {int price = 100}) => ProductSummary(
  id: id,
  title: 'Товар $id',
  imageUrl: '$id.jpg',
  price: price,
  marks: const {ProductMark.hit},
);

void main() {
  final at = DateTime(2026, 11, 12, 10);

  group('fake server', () {
    test('seeds dropped, unchanged and sold-out products', () {
      final items = seededFavourites('ru');
      final offers = offersFor('ru', items);
      expect(items, hasLength(4));
      final dropped = items.where(
        (f) => offers[f.id]!.product.price < f.savedPrice,
      );
      expect(dropped, hasLength(2));
      expect(offers.values.where((o) => !o.isAvailable), hasLength(1));
      expect(offers.values.every((o) => o.sellerName != null), isTrue);
    });

    test('merge keeps the earlier date of a product saved twice', () {
      final backend = fakeFavouritesBackend();
      final first = seededFavourites('ru').first;
      final now = favouritesNow.toUtc().toIso8601String();
      final merged = backend.merge('ru', [
        {'product_id': first.id, 'saved_price': 1, 'added_at': now},
        {
          'product_id': 'clothes-women-dresses-9',
          'saved_price': 50,
          'added_at': now,
        },
      ]);
      expect(merged, hasLength(5));
      final kept = merged.firstWhere(
        (j) => (j['product'] as Map)['id'] == first.id,
      );
      expect(kept['saved_price'], first.savedPrice);
      // Newest first: the one saved just now leads.
      expect((merged.first['product'] as Map)['id'], 'clothes-women-dresses-9');
    });
  });

  group('FavouritesRepositoryImpl', () {
    late Directory dir;
    late Box<String> box;
    late _MockRemote remote;
    late FavouritesRepositoryImpl repository;

    setUp(() async {
      dir = await Directory.systemTemp.createTemp('favourites_test');
      Hive.init(dir.path);
      box = await Hive.openBox<String>('favourites');
      remote = _MockRemote();
      repository = FavouritesRepositoryImpl(remote, box);
    });

    tearDown(() async {
      await Hive.close();
      await dir.delete(recursive: true);
    });

    test('saves and reads the list as it was', () async {
      final items = [
        Favourite(product: _product('a'), savedPrice: 120, addedAt: at),
      ];
      await repository.saveLocal(items);
      final read = (await repository.loadLocal()).getOrElse((_) => []);
      expect(read, items);
    });

    test('merge sends ids, prices and dates; offline is a failure', () async {
      final item = Favourite(
        product: _product('a'),
        savedPrice: 120,
        addedAt: at,
      );
      when(
        () => remote.merge('ru', any()),
      ).thenAnswer((_) async => [FavouriteModel.fromEntity(item)]);
      final merged = await repository.merge('ru', [item]);
      expect(merged.getOrElse((_) => []), [item]);
      final sent =
          verify(() => remote.merge('ru', captureAny())).captured.single
              as List<Map<String, dynamic>>;
      expect(sent.single, {
        'product_id': 'a',
        'saved_price': 120,
        'added_at': at.toUtc().toIso8601String(),
      });

      when(() => remote.add(any())).thenThrow(const NetworkException());
      final failed = await repository.add(item);
      expect(failed.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  group('FavouritesCubit', () {
    late _MockRepository repository;
    late FavouritesCubit cubit;

    setUpAll(() {
      registerFallbackValue(<Favourite>[]);
      registerFallbackValue(
        Favourite(product: _product('x'), savedPrice: 1, addedAt: at),
      );
    });

    setUp(() {
      repository = _MockRepository();
      when(() => repository.loadLocal()).thenAnswer((_) async => right([]));
      when(
        () => repository.saveLocal(any()),
      ).thenAnswer((_) async => right(unit));
      when(() => repository.add(any())).thenAnswer((_) async => right(unit));
      when(() => repository.remove(any())).thenAnswer((_) async => right(unit));
      cubit = FavouritesCubit(repository, now: () => at);
    });

    tearDown(() => cubit.close());

    test('a guest heart saves on the device only', () async {
      expect(await cubit.toggle(_product('a', price: 216)), isTrue);
      expect(cubit.state.contains('a'), isTrue);
      expect(cubit.state.items.single.savedPrice, 216);
      expect(cubit.state.items.single.addedAt, at);
      verify(() => repository.saveLocal(cubit.state.items)).called(1);
      verifyNever(() => repository.add(any()));

      expect(await cubit.toggle(_product('a')), isFalse);
      expect(cubit.state.items, isEmpty);
      verifyNever(() => repository.remove(any()));
    });

    test('newest first; undo puts removed ones back in date order', () async {
      final older = Favourite(
        product: _product('old'),
        savedPrice: 1,
        addedAt: at.subtract(const Duration(days: 2)),
      );
      when(
        () => repository.loadLocal(),
      ).thenAnswer((_) async => right([older]));
      await cubit.load();
      await cubit.toggle(_product('new'));
      expect(cubit.state.items.map((f) => f.id), ['new', 'old']);

      final removed = await cubit.removeMany({'old', 'new'});
      expect(cubit.state.items, isEmpty);
      await cubit.restore(removed);
      expect(cubit.state.items.map((f) => f.id), ['new', 'old']);
    });

    test('sign-in merges into the account and later changes sync', () async {
      await cubit.toggle(_product('a'));
      final account = seededFavourites('ru');
      when(
        () => repository.merge('ru', any()),
      ).thenAnswer((_) async => right(account));
      await cubit.signedIn('ru');
      expect(cubit.state.items, account);
      expect(cubit.state.isSynced, isTrue);

      await cubit.toggle(_product('b'));
      verify(() => repository.add(any())).called(1);
      await cubit.removeMany({'b'});
      verify(() => repository.remove(['b'])).called(1);
    });

    test('an offline sign-in keeps the device list', () async {
      await cubit.toggle(_product('a'));
      when(
        () => repository.merge('ru', any()),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      await cubit.signedIn('ru');
      expect(cubit.state.items.single.id, 'a');
      expect(cubit.state.isSynced, isFalse);
    });

    test('sign-out wipes the account list; a guest start keeps it', () async {
      await cubit.toggle(_product('a'));
      await cubit.signedOut();
      expect(cubit.state.items, hasLength(1), reason: 'never signed in');

      when(
        () => repository.merge('ru', any()),
      ).thenAnswer((_) async => right(seededFavourites('ru')));
      await cubit.signedIn('ru');
      await cubit.signedOut();
      expect(cubit.state.items, isEmpty);
      verify(() => repository.saveLocal(const [])).called(1);
    });
  });
}
