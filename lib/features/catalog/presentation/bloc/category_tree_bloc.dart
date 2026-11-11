import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/category.dart';
import '../../domain/usecases/fetch_category_tree_use_case.dart';
import '../../domain/usecases/get_cached_category_tree_use_case.dart';

part 'category_tree_bloc.freezed.dart';

@freezed
sealed class CategoryTreeEvent with _$CategoryTreeEvent {
  /// First load, or the language changed.
  const factory CategoryTreeEvent.started(String languageCode) =
      CategoryTreeStarted;

  /// Pull-to-refresh, retry or reconnect.
  const factory CategoryTreeEvent.refreshed() = CategoryTreeRefreshed;
}

@freezed
sealed class CategoryTreeState with _$CategoryTreeState {
  const factory CategoryTreeState.initial() = CategoryTreeInitial;

  const factory CategoryTreeState.loading() = CategoryTreeLoading;

  const factory CategoryTreeState.loaded({
    required CategoryTree tree,
    @Default(false) bool isRefreshing,
    Failure? refreshFailure,
  }) = CategoryTreeLoaded;

  const factory CategoryTreeState.failure(Failure failure) =
      CategoryTreeFailure;
}

/// Catalog tab root: cached tree at once, then the fresh one (TZ §8).
@injectable
class CategoryTreeBloc extends Bloc<CategoryTreeEvent, CategoryTreeState> {
  CategoryTreeBloc(this._getCached, this._fetch)
    : super(const CategoryTreeState.initial()) {
    on<CategoryTreeEvent>(
      (event, emit) => switch (event) {
        CategoryTreeStarted(:final languageCode) => _onStarted(
          languageCode,
          emit,
        ),
        CategoryTreeRefreshed() => _onRefreshed(emit),
      },
      transformer: restartable(),
    );
  }

  final GetCachedCategoryTreeUseCase _getCached;
  final FetchCategoryTreeUseCase _fetch;

  String? _languageCode;

  Future<void> _onStarted(
    String languageCode,
    Emitter<CategoryTreeState> emit,
  ) async {
    _languageCode = languageCode;
    final cached = (await _getCached(languageCode)).getOrElse((_) => null);
    emit(
      cached == null
          ? const CategoryTreeState.loading()
          : CategoryTreeState.loaded(tree: cached, isRefreshing: true),
    );
    await _download(emit);
  }

  Future<void> _onRefreshed(Emitter<CategoryTreeState> emit) async {
    if (_languageCode == null) return;
    switch (state) {
      case CategoryTreeLoaded(:final tree):
        emit(CategoryTreeState.loaded(tree: tree, isRefreshing: true));
      case CategoryTreeInitial() ||
          CategoryTreeLoading() ||
          CategoryTreeFailure():
        emit(const CategoryTreeState.loading());
    }
    await _download(emit);
  }

  Future<void> _download(Emitter<CategoryTreeState> emit) async {
    // A newer request took over; do not spend a download on this one.
    if (emit.isDone) return;
    final languageCode = _languageCode;
    if (languageCode == null) return;
    final result = await _fetch(languageCode);
    emit(
      result.match(
        (failure) => switch (state) {
          CategoryTreeLoaded(:final tree) => CategoryTreeState.loaded(
            tree: tree,
            refreshFailure: failure,
          ),
          _ => CategoryTreeState.failure(failure),
        },
        (tree) => CategoryTreeState.loaded(tree: tree),
      ),
    );
  }
}
