import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../error/failures.dart';
import '../product/domain/product_summary.dart';
import 'price_alert.dart';
import 'price_alerts_repository.dart';

part 'price_alerts_cubit.freezed.dart';

enum PriceAlertsStatus { initial, loading, ready, failure }

@freezed
abstract class PriceAlertsState with _$PriceAlertsState {
  const factory PriceAlertsState({
    @Default(PriceAlertsStatus.initial) PriceAlertsStatus status,
    @Default(<PriceAlert>[]) List<PriceAlert> items,
    Failure? failure,

    /// Products whose switch is waiting for the server.
    @Default(<String>{}) Set<String> busyIds,
  }) = _PriceAlertsState;

  const PriceAlertsState._();

  bool isOn(String productId) => items.any((a) => a.id == productId && a.isOn);
}

/// Price-drop subscriptions of the signed-in customer, shared by the
/// product page bell and the «Подписки на снижение цены» list.
@lazySingleton
class PriceAlertsCubit extends Cubit<PriceAlertsState> {
  PriceAlertsCubit(this._repository) : super(const PriceAlertsState());

  final PriceAlertsRepository _repository;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(status: PriceAlertsStatus.loading, failure: null));
    final result = await _repository.load(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        (failure) =>
            state.copyWith(status: PriceAlertsStatus.failure, failure: failure),
        (items) => PriceAlertsState(
          status: PriceAlertsStatus.ready,
          items: items,
          busyIds: state.busyIds,
        ),
      ),
    );
  }

  /// Signed out: the subscriptions belong to the account.
  void clear() => emit(const PriceAlertsState());

  /// Switches the alert of [product]. Right(true) = now on, Right(false) =
  /// now off, Right(null) = the product is gone; the switch flips back on
  /// a failure.
  Future<Either<Failure, bool?>> toggle(
    String languageCode,
    ProductSummary product,
  ) async {
    final id = product.id;
    if (state.busyIds.contains(id)) return right(state.isOn(id));
    final before = state.items;
    final turnOn = !state.isOn(id);
    final exists = before.any((a) => a.id == id);
    emit(
      state.copyWith(
        busyIds: {...state.busyIds, id},
        items: [
          if (turnOn && !exists)
            PriceAlert(product: product, subscribedPrice: product.price),
          for (final a in before)
            if (a.id == id) a.copyWith(isOn: turnOn) else a,
        ],
      ),
    );
    if (turnOn) {
      final result = await _repository.subscribe(languageCode, id);
      return _finish(
        id,
        before,
        result.map((alert) {
          if (alert == null) return null;
          _replace(id, alert);
          return true;
        }),
      );
    }
    final result = await _repository.unsubscribe(id);
    return _finish(id, before, result.map((_) => false));
  }

  void _replace(String id, PriceAlert alert) => emit(
    state.copyWith(
      items: [for (final a in state.items) a.id == id ? alert : a],
    ),
  );

  Either<Failure, bool?> _finish(
    String id,
    List<PriceAlert> before,
    Either<Failure, bool?> result,
  ) {
    if (isClosed) return result;
    final busy = {...state.busyIds}..remove(id);
    final keep = result.match((_) => false, (on) => on != null);
    emit(state.copyWith(busyIds: busy, items: keep ? state.items : before));
    return result;
  }
}
