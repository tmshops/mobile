import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/review.dart';
import '../../domain/repositories/reviews_repository.dart';

part 'reviews_cubits.freezed.dart';

@freezed
abstract class ProductReviewsState with _$ProductReviewsState {
  const factory ProductReviewsState({
    @Default(true) bool isLoading,
    @Default(ReviewFilter.all) ReviewFilter filter,

    /// Kept while a filter loads, so the header does not jump.
    ReviewsSummary? summary,
    @Default(<ProductReview>[]) List<ProductReview> items,
    String? nextCursor,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isNotFound,
    Failure? failure,
    Failure? moreFailure,
  }) = _ProductReviewsState;

  const ProductReviewsState._();

  bool get hasMore => nextCursor != null;
}

/// «Все отзывы» of a product (UI_DESIGN §7.19).
@injectable
class ProductReviewsCubit extends Cubit<ProductReviewsState> {
  ProductReviewsCubit(this._repository) : super(const ProductReviewsState());

  final ReviewsRepository _repository;
  String _productId = '';

  /// A newer filter wins over a slower older one.
  int _generation = 0;

  Future<void> load(String languageCode, String productId) {
    _productId = productId;
    return _reload(languageCode, state.filter);
  }

  /// «Повторить» after a failed load.
  Future<void> retry(String languageCode) =>
      _reload(languageCode, state.filter);

  Future<void> setFilter(String languageCode, ReviewFilter filter) async {
    if (filter == state.filter) return;
    await _reload(languageCode, filter);
  }

  Future<void> _reload(String languageCode, ReviewFilter filter) async {
    final generation = ++_generation;
    emit(ProductReviewsState(filter: filter, summary: state.summary));
    final result = await _repository.page(
      languageCode,
      _productId,
      filter: filter,
    );
    if (isClosed || generation != _generation) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoading: false, failure: failure),
        (page) => page == null
            ? state.copyWith(isLoading: false, isNotFound: true)
            : state.copyWith(
                isLoading: false,
                summary: page.summary,
                items: page.items,
                nextCursor: page.nextCursor,
              ),
      ),
    );
  }

  Future<void> loadMore(String languageCode) async {
    final cursor = state.nextCursor;
    if (cursor == null || state.isLoadingMore || state.isLoading) return;
    final generation = _generation;
    emit(state.copyWith(isLoadingMore: true, moreFailure: null));
    final result = await _repository.page(
      languageCode,
      _productId,
      filter: state.filter,
      cursor: cursor,
    );
    if (isClosed || generation != _generation) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoadingMore: false, moreFailure: failure),
        (page) => state.copyWith(
          isLoadingMore: false,
          items: [...state.items, ...?page?.items],
          nextCursor: page?.nextCursor,
        ),
      ),
    );
  }
}

@freezed
abstract class WriteReviewState with _$WriteReviewState {
  const factory WriteReviewState({
    @Default(true) bool isLoading,
    ReviewTarget? target,

    /// Not received yet, or already reviewed.
    @Default(false) bool isNotReviewable,

    /// 0 until the customer picks stars.
    @Default(0) int rating,
    @Default('') String text,
    @Default(false) bool isSending,
    @Default(false) bool isSent,

    /// Loading the item failed.
    Failure? loadFailure,

    /// Sending failed; the form stays filled.
    Failure? sendFailure,
  }) = _WriteReviewState;

  const WriteReviewState._();

  static const maxText = 2000;

  bool get canSend =>
      target != null && rating > 0 && text.length <= maxText && !isSending;
}

/// «Написать отзыв» for a received item (UI_DESIGN §7.19, TZ §5.18).
@injectable
class WriteReviewCubit extends Cubit<WriteReviewState> {
  WriteReviewCubit(this._repository) : super(const WriteReviewState());

  final ReviewsRepository _repository;
  String _orderNumber = '';
  String _itemId = '';

  Future<void> load(
    String languageCode,
    String orderNumber,
    String itemId,
  ) async {
    _orderNumber = orderNumber;
    _itemId = itemId;
    emit(state.copyWith(isLoading: true, loadFailure: null));
    final result = await _repository.target(languageCode, orderNumber, itemId);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoading: false, loadFailure: failure),
        (target) => state.copyWith(
          isLoading: false,
          target: target,
          isNotReviewable: target == null,
        ),
      ),
    );
  }

  /// «Повторить» after loading the item failed.
  Future<void> retry(String languageCode) =>
      load(languageCode, _orderNumber, _itemId);

  void rate(int stars) =>
      emit(state.copyWith(rating: stars.clamp(1, 5), sendFailure: null));

  void write(String text) =>
      emit(state.copyWith(text: text, sendFailure: null));

  Future<void> send(String languageCode) async {
    final target = state.target;
    if (target == null || !state.canSend) return;
    emit(state.copyWith(isSending: true, sendFailure: null));
    final result = await _repository.submit(
      languageCode,
      target,
      rating: state.rating,
      text: state.text,
    );
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isSending: false, sendFailure: failure),
        (_) => state.copyWith(isSending: false, isSent: true),
      ),
    );
  }
}

@freezed
abstract class MyReviewsState with _$MyReviewsState {
  const factory MyReviewsState({
    @Default(true) bool isLoading,
    @Default(<MyReview>[]) List<MyReview> items,
    Failure? failure,
  }) = _MyReviewsState;
}

/// «Мои отзывы» (UI_DESIGN §7.19).
@injectable
class MyReviewsCubit extends Cubit<MyReviewsState> {
  MyReviewsCubit(this._repository) : super(const MyReviewsState());

  final ReviewsRepository _repository;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _repository.mine(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(
          isLoading: false,
          failure: state.items.isEmpty ? failure : null,
        ),
        (items) => MyReviewsState(isLoading: false, items: items),
      ),
    );
  }
}
