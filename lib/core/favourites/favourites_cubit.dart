import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../product/domain/product_summary.dart';
import 'favourite.dart';
import 'favourites_repository.dart';

part 'favourites_cubit.freezed.dart';

@freezed
abstract class FavouritesState with _$FavouritesState {
  const factory FavouritesState({
    /// Newest first.
    @Default(<Favourite>[]) List<Favourite> items,

    /// The device list has been merged into the account at least once.
    @Default(false) bool isSynced,
  }) = _FavouritesState;

  const FavouritesState._();

  bool contains(String productId) => items.any((f) => f.id == productId);
}

/// Hearts across the app (TZ §3: FavoritesCubit is a global bloc).
///
/// Changes show at once and are saved on the device; a signed-in customer's
/// are also sent to the server in the background. If that fails the next
/// merge (app start, sign-in) catches up.
@lazySingleton
class FavouritesCubit extends Cubit<FavouritesState> {
  FavouritesCubit(this._repository, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now,
      super(const FavouritesState());

  final FavouritesRepository _repository;
  final DateTime Function() _now;
  bool _isSignedIn = false;

  Future<void> load() async {
    final result = await _repository.loadLocal();
    result.match((_) {}, (items) {
      if (!isClosed) emit(state.copyWith(items: items));
    });
  }

  /// Merges the device list into the account (TZ §5.2: after login).
  Future<void> signedIn(String languageCode) async {
    _isSignedIn = true;
    final result = await _repository.merge(languageCode, state.items);
    if (isClosed || !_isSignedIn) return;
    await result.match((_) async {}, (items) async {
      emit(FavouritesState(items: items, isSynced: true));
      await _repository.saveLocal(items);
    });
  }

  /// Personal data leaves the device with the session (TZ §7.2).
  Future<void> signedOut() async {
    final wasSignedIn = _isSignedIn;
    _isSignedIn = false;
    if (!wasSignedIn) return;
    await _save(const []);
    if (!isClosed) emit(const FavouritesState());
  }

  /// Saves or forgets [product]; returns whether it is now a favourite.
  Future<bool> toggle(ProductSummary product) async {
    if (state.contains(product.id)) {
      await removeMany({product.id});
      return false;
    }
    final item = Favourite(
      product: product,
      savedPrice: product.price,
      addedAt: _now(),
    );
    await _save([item, ...state.items]);
    if (_isSignedIn) unawaited(_repository.add(item));
    return true;
  }

  /// Removes [ids]; returns the removed entries so [restore] can undo it.
  Future<List<Favourite>> removeMany(Set<String> ids) async {
    final removed = [
      for (final f in state.items)
        if (ids.contains(f.id)) f,
    ];
    if (removed.isEmpty) return const [];
    await _save([
      for (final f in state.items)
        if (!ids.contains(f.id)) f,
    ]);
    if (_isSignedIn) unawaited(_repository.remove(ids.toList()));
    return removed;
  }

  /// Puts back entries removed a moment ago («Отменить»), in date order.
  Future<void> restore(List<Favourite> items) async {
    final missing = [
      for (final f in items)
        if (!state.contains(f.id)) f,
    ];
    if (missing.isEmpty) return;
    final all = [...state.items, ...missing]
      ..sort((a, b) => b.addedAt.compareTo(a.addedAt));
    await _save(all);
    if (_isSignedIn) {
      for (final f in missing) {
        unawaited(_repository.add(f));
      }
    }
  }

  Future<void> _save(List<Favourite> items) async {
    if (!isClosed) emit(state.copyWith(items: items));
    await _repository.saveLocal(items);
  }
}
