import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../error/failures.dart';
import '../domain/product_summary.dart';
import '../domain/recommendations_repository.dart';

part 'for_you_bloc.freezed.dart';

@freezed
sealed class ForYouEvent with _$ForYouEvent {
  /// First page, or the language changed.
  const factory ForYouEvent.started(String languageCode) = ForYouStarted;

  /// The user scrolled near the end, or tapped «Повторить».
  const factory ForYouEvent.nextPageRequested() = ForYouNextPageRequested;
}

enum ForYouStatus { initial, loadingFirst, idle, loadingMore, failure }

@freezed
abstract class ForYouState with _$ForYouState {
  const factory ForYouState({
    @Default(<ProductSummary>[]) List<ProductSummary> items,
    String? nextCursor,
    @Default(ForYouStatus.initial) ForYouStatus status,
    Failure? failure,
  }) = _ForYouState;

  const ForYouState._();

  bool get hasMore => status == ForYouStatus.initial || nextCursor != null;
}

/// Endless recommendations grid at the bottom of Home («Для вас») and
/// Profile («Вам может понравиться»).
@injectable
class ForYouBloc extends Bloc<ForYouEvent, ForYouState> {
  ForYouBloc(this._getRecommendations) : super(const ForYouState()) {
    on<ForYouStarted>(_onStarted, transformer: restartable());
    // Scroll fires many requests while one page loads: keep only the first.
    on<ForYouNextPageRequested>(_onNextPage, transformer: droppable());
  }

  final GetRecommendationsUseCase _getRecommendations;

  String? _languageCode;

  Future<void> _onStarted(
    ForYouStarted event,
    Emitter<ForYouState> emit,
  ) async {
    _languageCode = event.languageCode;
    emit(const ForYouState(status: ForYouStatus.loadingFirst));
    await _load(emit, cursor: null);
  }

  Future<void> _onNextPage(
    ForYouNextPageRequested event,
    Emitter<ForYouState> emit,
  ) async {
    if (_languageCode == null) return;
    final isFirstPage = state.items.isEmpty;
    if (!isFirstPage && state.nextCursor == null) return;
    emit(
      state.copyWith(
        status: isFirstPage
            ? ForYouStatus.loadingFirst
            : ForYouStatus.loadingMore,
        failure: null,
      ),
    );
    await _load(emit, cursor: state.nextCursor);
  }

  Future<void> _load(
    Emitter<ForYouState> emit, {
    required String? cursor,
  }) async {
    final languageCode = _languageCode;
    if (languageCode == null) return;
    final result = await _getRecommendations(
      languageCode: languageCode,
      cursor: cursor,
    );
    // The language may have changed while this page was loading.
    if (languageCode != _languageCode) return;
    emit(
      result.match(
        (failure) =>
            state.copyWith(status: ForYouStatus.failure, failure: failure),
        (page) => state.copyWith(
          items: [...state.items, ...page.items],
          nextCursor: page.nextCursor,
          status: ForYouStatus.idle,
          failure: null,
        ),
      ),
    );
  }
}
