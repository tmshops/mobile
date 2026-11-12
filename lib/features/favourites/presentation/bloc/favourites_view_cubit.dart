import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/favourite_offer.dart';
import '../../domain/repositories/favourite_offers_repository.dart';
import 'favourite_card.dart';

part 'favourites_view_cubit.freezed.dart';

@freezed
abstract class FavouritesViewState with _$FavouritesViewState {
  const factory FavouritesViewState({
    @Default(FavouritesSort.recent) FavouritesSort sort,

    /// «Выбрать» mode: taps tick tiles for bulk delete or add to cart.
    @Default(false) bool isSelecting,
    @Default(<String>{}) Set<String> selected,

    /// Today's prices by product id; tiles show the saved copy until then.
    @Default(<String, FavouriteOffer>{}) Map<String, FavouriteOffer> offers,
    @Default(false) bool isLoading,

    /// The last refresh failed; tiles keep the saved copy.
    Failure? failure,
  }) = _FavouritesViewState;
}

/// The Favourites screen around the global list: today's prices, sort and
/// selection (UI_DESIGN §7.17).
@injectable
class FavouritesViewCubit extends Cubit<FavouritesViewState> {
  FavouritesViewCubit(this._offers) : super(const FavouritesViewState());

  final FavouriteOffersRepository _offers;

  /// Fetches today's offers of [productIds]; with [onlyMissing], just the
  /// ones not fetched yet (a heart tapped elsewhere).
  Future<void> refresh(
    String languageCode,
    List<String> productIds, {
    bool onlyMissing = false,
  }) async {
    final ids = onlyMissing
        ? [
            for (final id in productIds)
              if (!state.offers.containsKey(id)) id,
          ]
        : productIds;
    if (ids.isEmpty) return;
    emit(state.copyWith(isLoading: true));
    final result = await _offers.get(languageCode, ids);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoading: false, failure: failure),
        (offers) => state.copyWith(
          isLoading: false,
          failure: null,
          offers: onlyMissing ? {...state.offers, ...offers} : offers,
        ),
      ),
    );
  }

  void sortBy(FavouritesSort sort) => emit(state.copyWith(sort: sort));

  void startSelecting([String? firstId]) =>
      emit(state.copyWith(isSelecting: true, selected: {?firstId}));

  void stopSelecting() =>
      emit(state.copyWith(isSelecting: false, selected: const {}));

  void toggle(String id) {
    final selected = {...state.selected};
    if (!selected.remove(id)) selected.add(id);
    emit(state.copyWith(selected: selected));
  }

  /// Ticks all of [ids], or unticks all when they already are.
  void toggleAll(Iterable<String> ids) {
    final all = ids.toSet();
    final isAll = all.isNotEmpty && state.selected.containsAll(all);
    emit(state.copyWith(selected: isAll ? const {} : all));
  }

  /// Forgets ticks of products that are no longer in the list.
  void keepOnly(Iterable<String> ids) {
    final present = ids.toSet();
    if (state.selected.every(present.contains)) return;
    emit(state.copyWith(selected: state.selected.intersection(present)));
  }
}
