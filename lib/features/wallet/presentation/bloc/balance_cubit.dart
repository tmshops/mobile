import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/wallet.dart';
import '../../domain/repositories/wallet_repository.dart';

part 'balance_cubit.freezed.dart';

@freezed
abstract class BalanceState with _$BalanceState {
  const factory BalanceState({
    WalletSummary? summary,

    /// Newest first, as many pages as loaded.
    @Default(<WalletOperation>[]) List<WalletOperation> operations,
    String? nextCursor,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadingMore,

    /// The first load failed: nothing to show.
    Failure? failure,

    /// The next page failed: the list stays, with «Повторить» under it.
    Failure? moreFailure,
  }) = _BalanceState;

  const BalanceState._();

  bool get hasMore => nextCursor != null;
}

/// Balance screen (UI_DESIGN §7.20, TZ §5.16): summary and the history of
/// operations, page by page.
@injectable
class BalanceCubit extends Cubit<BalanceState> {
  BalanceCubit(this._repository) : super(const BalanceState());

  final WalletRepository _repository;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(isLoading: true, failure: null, moreFailure: null));
    final (summary, page) = await (
      _repository.summary(),
      _repository.operations(languageCode),
    ).wait;
    if (isClosed) return;
    final failure =
        summary.getLeft().toNullable() ?? page.getLeft().toNullable();
    if (failure != null) {
      // A refresh that fails keeps what is on screen.
      emit(
        state.copyWith(
          isLoading: false,
          failure: state.summary == null ? failure : null,
        ),
      );
      return;
    }
    final first = page.getOrElse((_) => const OperationsPage(items: []));
    emit(
      BalanceState(
        summary: summary.toNullable(),
        operations: first.items,
        nextCursor: first.nextCursor,
        isLoading: false,
      ),
    );
  }

  Future<void> loadMore(String languageCode) async {
    final cursor = state.nextCursor;
    if (cursor == null || state.isLoadingMore) return;
    emit(state.copyWith(isLoadingMore: true, moreFailure: null));
    final result = await _repository.operations(languageCode, cursor: cursor);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoadingMore: false, moreFailure: failure),
        (page) => state.copyWith(
          isLoadingMore: false,
          operations: [...state.operations, ...page.items],
          nextCursor: page.nextCursor,
        ),
      ),
    );
  }

  /// Starts a card top-up; Right is the payment to check.
  Future<Either<Failure, String>> topUp(String languageCode, int amount) =>
      _repository.topUp(languageCode, amount);
}
