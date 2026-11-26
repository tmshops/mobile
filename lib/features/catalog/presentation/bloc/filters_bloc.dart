import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/facet.dart';
import '../../domain/entities/product_query.dart';
import '../../domain/usecases/get_category_facets_use_case.dart';

part 'filters_bloc.freezed.dart';

@freezed
sealed class FiltersEvent with _$FiltersEvent {
  /// Sheet opened for the list's [query], with its applied filters.
  const factory FiltersEvent.started({
    required String languageCode,
    required ProductQuery query,
  }) = FiltersStarted;

  /// The user changed the draft; counts are refreshed after a short pause.
  const factory FiltersEvent.changed(AppliedFilters draft) = FiltersChanged;
}

@freezed
abstract class FiltersState with _$FiltersState {
  const factory FiltersState({
    @Default(AppliedFilters()) AppliedFilters draft,

    /// Last known facets; kept while new counts load so nothing jumps.
    @Default(<Facet>[]) List<Facet> facets,

    /// Products matching [draft]; `null` until first counted.
    int? total,
    @Default(true) bool isCounting,
    Failure? failure,
  }) = _FiltersState;
}

/// Draft filters inside the filters sheet, with live facet counts for
/// «Показать N товаров». Nothing is applied until the user confirms.
@injectable
class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  FiltersBloc(this._getFacets) : super(const FiltersState()) {
    on<FiltersEvent>(
      (event, emit) => switch (event) {
        FiltersStarted() => _onStarted(event, emit),
        FiltersChanged(:final draft) => _onChanged(draft, emit),
      },
      // Each change cancels the pending count: together with [debounce]
      // only the last change in a burst of taps or slider moves is sent.
      transformer: restartable(),
    );
  }

  final GetCategoryFacetsUseCase _getFacets;

  static const debounce = Duration(milliseconds: 300);

  String _languageCode = '';
  ProductQuery? _query;

  Future<void> _onStarted(
    FiltersStarted event,
    Emitter<FiltersState> emit,
  ) async {
    _languageCode = event.languageCode;
    _query = event.query;
    emit(FiltersState(draft: event.query.filters));
    await _count(emit);
  }

  Future<void> _onChanged(
    AppliedFilters draft,
    Emitter<FiltersState> emit,
  ) async {
    emit(state.copyWith(draft: draft, isCounting: true, failure: null));
    await Future<void>.delayed(debounce);
    // `restartable` silences a superseded handler but does not stop it;
    // without this check every tap would still send a request.
    if (emit.isDone) return;
    await _count(emit);
  }

  Future<void> _count(Emitter<FiltersState> emit) async {
    final query = _query;
    if (query == null || (query.categorySlug.isEmpty && !query.isScoped)) {
      return;
    }
    final result = await _getFacets(
      languageCode: _languageCode,
      query: query.copyWith(filters: state.draft),
    );
    emit(
      result.match(
        (failure) => state.copyWith(isCounting: false, failure: failure),
        (facets) => state.copyWith(
          facets: facets.facets,
          total: facets.total,
          isCounting: false,
        ),
      ),
    );
  }
}
