import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/promotion.dart';
import '../../domain/repositories/promotions_repository.dart';

part 'promotions_cubits.freezed.dart';

@freezed
abstract class PromotionsState with _$PromotionsState {
  const factory PromotionsState({
    @Default(true) bool isLoading,
    @Default(<Promotion>[]) List<Promotion> items,
    Failure? failure,
  }) = _PromotionsState;
}

/// «Акции» list (UI_DESIGN §7.16).
@injectable
class PromotionsCubit extends Cubit<PromotionsState> {
  PromotionsCubit(this._repository, {@ignoreParam DateTime Function()? now})
    : _now = now ?? DateTime.now,
      super(const PromotionsState());

  final PromotionsRepository _repository;
  final DateTime Function() _now;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _repository.list(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(
          isLoading: false,
          failure: state.items.isEmpty ? failure : null,
        ),
        // The server leaves ended ones out; the device clock may disagree.
        (items) => PromotionsState(
          isLoading: false,
          items: [
            for (final p in items)
              if (p.endsAt.isAfter(_now())) p,
          ],
        ),
      ),
    );
  }

  /// A countdown reached zero: that card goes.
  void ended(String slug) => emit(
    state.copyWith(
      items: [
        for (final p in state.items)
          if (p.slug != slug) p,
      ],
    ),
  );
}

@freezed
abstract class PromotionState with _$PromotionState {
  const factory PromotionState({
    @Default(true) bool isLoading,
    PromotionDetails? details,
    @Default(false) bool isNotFound,
    Failure? failure,
  }) = _PromotionState;
}

/// One promotion's banner and conditions; its products are the catalog's.
@injectable
class PromotionCubit extends Cubit<PromotionState> {
  PromotionCubit(this._repository) : super(const PromotionState());

  final PromotionsRepository _repository;

  Future<void> load(String languageCode, String slug) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _repository.details(languageCode, slug);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoading: false, failure: failure),
        (details) => PromotionState(
          isLoading: false,
          details: details,
          isNotFound: details == null,
        ),
      ),
    );
  }
}
