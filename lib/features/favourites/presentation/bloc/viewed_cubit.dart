import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/viewed/viewed_product.dart';

part 'viewed_cubit.freezed.dart';

@freezed
abstract class ViewedState with _$ViewedState {
  const factory ViewedState({
    @Default(true) bool isLoading,

    /// Newest first.
    @Default(<ViewedProduct>[]) List<ViewedProduct> items,

    /// History could not be read; shown as empty.
    @Default(false) bool hasFailed,
  }) = _ViewedState;
}

/// «Просмотренные» (UI_DESIGN §7.17): device history, newest first.
@injectable
class ViewedCubit extends Cubit<ViewedState> {
  ViewedCubit(this._repository) : super(const ViewedState());

  final ViewedRepository _repository;

  Future<void> load() async {
    final result = await _repository.load();
    if (isClosed) return;
    emit(
      result.match(
        (_) => const ViewedState(isLoading: false, hasFailed: true),
        (items) => ViewedState(isLoading: false, items: items),
      ),
    );
  }

  Future<void> remove(String productId) async {
    emit(
      state.copyWith(
        items: [
          for (final v in state.items)
            if (v.product.id != productId) v,
        ],
      ),
    );
    await _repository.remove(productId);
  }

  Future<void> clear() async {
    emit(state.copyWith(items: const []));
    await _repository.clear();
  }
}
