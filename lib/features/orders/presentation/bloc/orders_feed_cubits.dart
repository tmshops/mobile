import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/orders_feed.dart';
import '../../domain/usecases/orders_use_cases.dart';
import 'loadable.dart';

part 'orders_feed_cubits.freezed.dart';

/// Counters and tracking line of «Мои заказы» in the profile.
@injectable
class OrdersOverviewCubit extends Cubit<Loadable<OrdersOverview>> {
  OrdersOverviewCubit(this._getOverview)
    : super(const Loadable<OrdersOverview>());

  final GetOrdersOverviewUseCase _getOverview;

  /// First load, a language change, or the profile shown again.
  Future<void> load(String languageCode) async {
    if (state.isLoading) return;
    emit(state.started());
    final result = await _getOverview(languageCode: languageCode);
    if (isClosed) return;
    emit(result.match(state.failed, state.loaded));
  }
}

@freezed
abstract class OrdersFeedState with _$OrdersFeedState {
  const factory OrdersFeedState({
    required OrdersFilter filter,
    @Default(<OrdersFilter, Loadable<List<FeedCard>>>{})
    Map<OrdersFilter, Loadable<List<FeedCard>>> slots,
  }) = _OrdersFeedState;

  const OrdersFeedState._();

  Loadable<List<FeedCard>> get current =>
      slots[filter] ?? const Loadable<List<FeedCard>>();
}

/// Cards of the profile filters; each filter loads the first time it is
/// chosen and is kept while the screen is open.
@injectable
class OrdersFeedCubit extends Cubit<OrdersFeedState> {
  OrdersFeedCubit(this._getFeed, @factoryParam OrdersFilter? initial)
    : super(OrdersFeedState(filter: initial ?? OrdersFilter.values.first));

  final GetOrdersFeedUseCase _getFeed;

  String _languageCode = '';

  Future<void> load(String languageCode) {
    _languageCode = languageCode;
    return _load(state.filter);
  }

  Future<void> select(OrdersFilter filter) async {
    if (filter == state.filter) return;
    emit(state.copyWith(filter: filter));
    if (state.slots[filter]?.hasData ?? false) return;
    await _load(filter);
  }

  Future<void> refresh() => _load(state.filter);

  Future<void> _load(OrdersFilter filter) async {
    final slot = state.slots[filter] ?? const Loadable<List<FeedCard>>();
    if (slot.isLoading || _languageCode.isEmpty) return;
    _put(filter, slot.started());
    final result = await _getFeed(languageCode: _languageCode, filter: filter);
    if (isClosed) return;
    final now = state.slots[filter] ?? slot;
    _put(filter, result.match(now.failed, now.loaded));
  }

  void _put(OrdersFilter filter, Loadable<List<FeedCard>> slot) =>
      emit(state.copyWith(slots: {...state.slots, filter: slot}));
}
