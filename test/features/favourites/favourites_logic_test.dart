import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmshop/core/error/exceptions.dart';
import 'package:tmshop/core/error/failures.dart';
import 'package:tmshop/core/favourites/favourite.dart';
import 'package:tmshop/core/product/domain/product_summary.dart';
import 'package:tmshop/core/viewed/viewed_product.dart';
import 'package:tmshop/features/favourites/data/datasources/favourite_offers_remote_data_source.dart';
import 'package:tmshop/features/favourites/data/models/favourite_offer_model.dart';
import 'package:tmshop/features/favourites/data/repositories/favourite_offers_repository_impl.dart';
import 'package:tmshop/features/favourites/domain/entities/favourite_offer.dart';
import 'package:tmshop/features/favourites/domain/repositories/favourite_offers_repository.dart';
import 'package:tmshop/features/favourites/presentation/bloc/favourite_card.dart';
import 'package:tmshop/features/favourites/presentation/bloc/favourites_view_cubit.dart';
import 'package:tmshop/features/favourites/presentation/bloc/viewed_cubit.dart';

import '../../helpers/favourites_fixtures.dart';

class _MockRemote extends Mock implements FavouriteOffersRemoteDataSource {}

class _MockOffers extends Mock implements FavouriteOffersRepository {}

class _MockViewed extends Mock implements ViewedRepository {}

Favourite _saved(String id, int savedPrice, {int day = 1}) => Favourite(
  product: ProductSummary(id: id, title: id, imageUrl: '', price: savedPrice),
  savedPrice: savedPrice,
  addedAt: DateTime(2026, 11, day),
);

FavouriteOffer _offer(
  String id,
  int price, {
  int? oldPrice,
  bool isAvailable = true,
}) => FavouriteOffer(
  product: ProductSummary(
    id: id,
    title: id,
    imageUrl: '',
    price: price,
    oldPrice: oldPrice,
  ),
  isAvailable: isAvailable,
);

void main() {
  group('FavouriteCard', () {
    // Newest first, as the global list keeps them.
    final items = [
      _saved('dropped', 200, day: 4),
      _saved('gone', 50, day: 3),
      _saved('listed', 300, day: 2),
      _saved('same', 100, day: 1),
    ];
    final offers = {
      'dropped': _offer('dropped', 170),
      'gone': _offer('gone', 50, isAvailable: false),
      'listed': _offer('listed', 300, oldPrice: 400),
      'same': _offer('same', 100),
    };

    test('price drop is against the saved price', () {
      final cards = FavouriteCard.arrange(items, offers, FavouritesSort.recent);
      expect(cards.map((c) => c.dropPercent), [15, null, null, null]);
      expect(cards.map((c) => c.discountPercent), [15, 0, 25, 0]);
    });

    test('without an offer the saved copy shows, as available', () {
      final cards = FavouriteCard.arrange(
        items,
        const {},
        FavouritesSort.recent,
      );
      expect(cards.first.product, items.first.product);
      expect(cards.every((c) => c.isAvailable), isTrue);
    });

    test('sorts; sold-out last by price and discount', () {
      List<String> order(FavouritesSort sort) => [
        for (final c in FavouriteCard.arrange(items, offers, sort)) c.id,
      ];
      expect(order(FavouritesSort.recent), [
        'dropped',
        'gone',
        'listed',
        'same',
      ]);
      expect(order(FavouritesSort.price), [
        'same',
        'dropped',
        'listed',
        'gone',
      ]);
      expect(order(FavouritesSort.discount), [
        'listed',
        'dropped',
        'same',
        'gone',
      ]);
    });
  });

  group('FavouriteOffersRepositoryImpl', () {
    late _MockRemote remote;
    late FavouriteOffersRepositoryImpl repository;

    setUp(() {
      remote = _MockRemote();
      repository = FavouriteOffersRepositoryImpl(remote);
    });

    test('maps offers by id; no ids means no request', () async {
      final saved = seededFavourites('tk');
      final json = fakeFavouritesBackend().offers('tk', [
        for (final f in saved) f.id,
      ]);
      when(() => remote.get('tk', any())).thenAnswer(
        (_) async => json.map(FavouriteOfferModel.fromJson).toList(),
      );
      final offers = (await repository.get('tk', [
        for (final f in saved) f.id,
      ])).getOrElse((_) => {});
      expect(offers.keys, containsAll([for (final f in saved) f.id]));

      expect((await repository.get('tk', const [])).getOrElse((_) => {}), {});
      verify(() => remote.get(any(), any())).called(1);
    });

    test('offline is a NetworkFailure', () async {
      when(() => remote.get(any(), any())).thenThrow(const NetworkException());
      final result = await repository.get('ru', ['a']);
      expect(result.getLeft().toNullable(), isA<NetworkFailure>());
    });
  });

  group('FavouritesViewCubit', () {
    late _MockOffers offers;
    late FavouritesViewCubit cubit;

    setUp(() {
      offers = _MockOffers();
      cubit = FavouritesViewCubit(offers);
    });

    tearDown(() => cubit.close());

    test('refresh replaces; onlyMissing asks for new ids only', () async {
      when(() => offers.get('ru', ['a', 'b'])).thenAnswer(
        (_) async => right({'a': _offer('a', 1), 'b': _offer('b', 2)}),
      );
      await cubit.refresh('ru', ['a', 'b']);
      expect(cubit.state.offers.keys, ['a', 'b']);

      when(
        () => offers.get('ru', ['c']),
      ).thenAnswer((_) async => right({'c': _offer('c', 3)}));
      await cubit.refresh('ru', ['a', 'b', 'c'], onlyMissing: true);
      expect(cubit.state.offers.keys, ['a', 'b', 'c']);
      await cubit.refresh('ru', ['a', 'c'], onlyMissing: true);
      verifyNever(() => offers.get('ru', ['a', 'c']));
    });

    test('a failed refresh keeps the last offers and says so', () async {
      when(
        () => offers.get('ru', ['a']),
      ).thenAnswer((_) async => right({'a': _offer('a', 1)}));
      await cubit.refresh('ru', ['a']);
      when(
        () => offers.get('ru', ['a']),
      ).thenAnswer((_) async => left(const NetworkFailure()));
      await cubit.refresh('ru', ['a']);
      expect(cubit.state.offers.keys, ['a']);
      expect(cubit.state.failure, isA<NetworkFailure>());
      expect(cubit.state.isLoading, isFalse);
    });

    test('selection: tick, all, forget removed, stop', () {
      cubit
        ..sortBy(FavouritesSort.price)
        ..startSelecting()
        ..toggle('a')
        ..toggle('b')
        ..toggle('a');
      expect(cubit.state.isSelecting, isTrue);
      expect(cubit.state.selected, {'b'});
      expect(cubit.state.sort, FavouritesSort.price);

      cubit.toggleAll(['a', 'b', 'c']);
      expect(cubit.state.selected, {'a', 'b', 'c'});
      cubit.keepOnly(['a', 'c']);
      expect(cubit.state.selected, {'a', 'c'});
      cubit.toggleAll(['a', 'c']);
      expect(cubit.state.selected, isEmpty);

      cubit
        ..toggle('a')
        ..stopSelecting();
      expect(cubit.state.isSelecting, isFalse);
      expect(cubit.state.selected, isEmpty);
    });
  });

  group('ViewedCubit', () {
    late _MockViewed repository;
    final item = ViewedProduct(
      product: const ProductSummary(
        id: 'a',
        title: 'a',
        imageUrl: '',
        price: 1,
      ),
      viewedAt: DateTime(2026, 11, 12),
    );

    setUp(() {
      repository = _MockViewed();
      when(() => repository.load()).thenAnswer((_) async => right([item]));
      when(() => repository.remove(any())).thenAnswer((_) async => right(unit));
      when(() => repository.clear()).thenAnswer((_) async => right(unit));
    });

    test('loads, removes one, clears', () async {
      final cubit = ViewedCubit(repository);
      expect(cubit.state.isLoading, isTrue);
      await cubit.load();
      expect(cubit.state.items, [item]);

      await cubit.remove('a');
      expect(cubit.state.items, isEmpty);
      verify(() => repository.remove('a')).called(1);

      await cubit.load();
      await cubit.clear();
      expect(cubit.state.items, isEmpty);
      verify(() => repository.clear()).called(1);
      await cubit.close();
    });

    test('an unreadable history shows as empty', () async {
      when(
        () => repository.load(),
      ).thenAnswer((_) async => left(const CacheFailure()));
      final cubit = ViewedCubit(repository);
      await cubit.load();
      expect(cubit.state, const ViewedState(isLoading: false, hasFailed: true));
      await cubit.close();
    });
  });
}
