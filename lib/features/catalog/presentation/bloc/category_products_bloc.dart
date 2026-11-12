import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/product_list_page.dart';
import '../../domain/entities/product_query.dart';
import '../../domain/usecases/get_category_products_use_case.dart';
import '../../domain/usecases/get_category_use_case.dart';

part 'category_products_bloc.freezed.dart';

@freezed
sealed class CategoryProductsEvent with _$CategoryProductsEvent {
  const factory CategoryProductsEvent.started({
    required String languageCode,
    required String slug,

    /// A promotion's products instead of category [slug] (pass '').
    String? promoSlug,
  }) = CategoryProductsStarted;

  const factory CategoryProductsEvent.sortChanged(ProductSort sort) =
      CategoryProductsSortChanged;

  const factory CategoryProductsEvent.filtersApplied(AppliedFilters filters) =
      CategoryProductsFiltersApplied;

  const factory CategoryProductsEvent.refreshed() = CategoryProductsRefreshed;

  /// Scrolled near the end, or «Повторить» under the list.
  const factory CategoryProductsEvent.nextPageRequested() =
      CategoryProductsNextPageRequested;
}

enum ProductsStatus { loadingFirst, idle, loadingMore, failure, notFound }

@freezed
abstract class CategoryProductsState with _$CategoryProductsState {
  const factory CategoryProductsState({
    required ProductQuery query,

    /// Name and subcategories; `null` until found.
    Category? category,
    @Default(<ProductSummary>[]) List<ProductSummary> items,
    @Default(0) int total,
    String? nextCursor,
    CategoryBanner? banner,
    @Default(ProductsStatus.loadingFirst) ProductsStatus status,
    Failure? failure,
  }) = _CategoryProductsState;

  const CategoryProductsState._();

  bool get hasMore => nextCursor != null;
}

/// Product list of one category with sort, filters and endless paging.
@injectable
class CategoryProductsBloc
    extends Bloc<CategoryProductsEvent, CategoryProductsState> {
  CategoryProductsBloc(this._getCategory, this._getProducts)
    : super(
        const CategoryProductsState(query: ProductQuery(categorySlug: '')),
      ) {
    // Any change of what is shown restarts the list and cancels the old
    // request; extra page requests while one loads are dropped.
    on<CategoryProductsEvent>(_onReload, transformer: _reloadsOnly);
    on<CategoryProductsNextPageRequested>(
      _onNextPage,
      transformer: droppable(),
    );
  }

  /// Restartable, but blind to page requests: those must not cancel a
  /// first load that is still running.
  static Stream<CategoryProductsEvent> _reloadsOnly(
    Stream<CategoryProductsEvent> events,
    EventMapper<CategoryProductsEvent> mapper,
  ) => restartable<CategoryProductsEvent>()(
    events.where((e) => e is! CategoryProductsNextPageRequested),
    mapper,
  );

  final GetCategoryUseCase _getCategory;
  final GetCategoryProductsUseCase _getProducts;

  String _languageCode = '';

  /// Bumped on every reload; a page answer from an older one is ignored.
  int _generation = 0;

  Future<void> _onReload(
    CategoryProductsEvent event,
    Emitter<CategoryProductsState> emit,
  ) async {
    final ProductQuery query;
    switch (event) {
      case CategoryProductsStarted(
        :final languageCode,
        :final slug,
        :final promoSlug,
      ):
        _languageCode = languageCode;
        query = ProductQuery(categorySlug: slug, promoSlug: promoSlug);
        emit(CategoryProductsState(query: query));
        // A promotion's page says who it is itself; no category to find.
        if (promoSlug != null) break;
        final found = await _getCategory(
          languageCode: languageCode,
          slug: slug,
        );
        final category = found.getOrElse((_) => null);
        if (found.isRight() && category == null) {
          emit(state.copyWith(status: ProductsStatus.notFound));
          return;
        }
        if (emit.isDone) return;
        emit(state.copyWith(category: category));
      case CategoryProductsSortChanged(:final sort):
        if (sort == state.query.sort) return;
        query = state.query.copyWith(sort: sort);
      case CategoryProductsFiltersApplied(:final filters):
        if (filters == state.query.filters) return;
        query = state.query.copyWith(filters: filters);
      case CategoryProductsRefreshed():
        query = state.query;
      case CategoryProductsNextPageRequested():
        // Handled by its own droppable handler.
        return;
    }
    if (_languageCode.isEmpty) return;

    if (emit.isDone) return;
    final generation = ++_generation;
    emit(
      CategoryProductsState(
        query: query,
        category: state.category,
        banner: state.banner,
      ),
    );
    final result = await _getProducts(
      languageCode: _languageCode,
      query: query,
    );
    if (generation != _generation) return;
    emit(
      result.match(
        (failure) =>
            state.copyWith(status: ProductsStatus.failure, failure: failure),
        (page) => state.copyWith(
          items: page.items,
          total: page.total,
          nextCursor: page.nextCursor,
          banner: page.banner ?? state.banner,
          status: ProductsStatus.idle,
        ),
      ),
    );
  }

  Future<void> _onNextPage(
    CategoryProductsNextPageRequested event,
    Emitter<CategoryProductsState> emit,
  ) async {
    // After a failed first page, «Повторить» reloads from the start.
    if (state.items.isEmpty && state.status == ProductsStatus.failure) {
      add(const CategoryProductsEvent.refreshed());
      return;
    }
    final cursor = state.nextCursor;
    if (cursor == null || _languageCode.isEmpty) return;
    final generation = _generation;
    emit(state.copyWith(status: ProductsStatus.loadingMore, failure: null));
    final result = await _getProducts(
      languageCode: _languageCode,
      query: state.query,
      cursor: cursor,
    );
    if (generation != _generation) return;
    emit(
      result.match(
        (failure) =>
            state.copyWith(status: ProductsStatus.failure, failure: failure),
        (page) => state.copyWith(
          items: [...state.items, ...page.items],
          total: page.total,
          nextCursor: page.nextCursor,
          status: ProductsStatus.idle,
        ),
      ),
    );
  }
}
