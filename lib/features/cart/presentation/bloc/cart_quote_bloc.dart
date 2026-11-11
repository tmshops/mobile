import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/cart_quote.dart';
import '../../domain/usecases/get_cart_quote_use_case.dart';

part 'cart_quote_bloc.freezed.dart';

@freezed
sealed class CartQuoteEvent with _$CartQuoteEvent {
  /// Screen opened, or the language changed.
  const factory CartQuoteEvent.started({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
  }) = CartQuoteStarted;

  /// Quantity, tick, variant or removal: recalculated after a short pause.
  const factory CartQuoteEvent.linesChanged(List<CartItem> lines) =
      CartQuoteLinesChanged;

  const factory CartQuoteEvent.regionChanged(String regionId) =
      CartQuoteRegionChanged;

  const factory CartQuoteEvent.promoApplied(String code) =
      CartQuotePromoApplied;

  const factory CartQuoteEvent.promoRemoved() = CartQuotePromoRemoved;

  /// «Повторить» or back online.
  const factory CartQuoteEvent.retried() = CartQuoteRetried;
}

@freezed
abstract class CartQuoteState with _$CartQuoteState {
  const factory CartQuoteState({
    /// Last good answer; kept on screen while a new one loads or fails.
    CartQuote? quote,
    @Default(false) bool isLoading,
    Failure? failure,

    /// Code being checked or applied; cleared when the server rejects it.
    String? promoCode,

    /// Server text for a rejected code, shown under the field.
    String? promoError,
  }) = _CartQuoteState;
}

/// Server totals for the cart (TZ §5.10): lines change on screen at once;
/// the total follows after a pause, and a failure keeps the last totals.
@injectable
class CartQuoteBloc extends Bloc<CartQuoteEvent, CartQuoteState> {
  CartQuoteBloc(this._getQuote) : super(const CartQuoteState()) {
    // A newer change cancels the pending recalculation.
    on<CartQuoteEvent>(_onEvent, transformer: restartable());
  }

  final GetCartQuoteUseCase _getQuote;

  static const debounce = Duration(milliseconds: 400);

  String _languageCode = '';
  String _regionId = '';
  List<CartItem> _lines = const [];

  Future<void> _onEvent(
    CartQuoteEvent event,
    Emitter<CartQuoteState> emit,
  ) async {
    var wait = true;
    switch (event) {
      case CartQuoteStarted(:final languageCode, :final regionId, :final lines):
        _languageCode = languageCode;
        _regionId = regionId;
        _lines = lines;
        wait = false;
      case CartQuoteLinesChanged(:final lines):
        if (lines == _lines) return;
        _lines = lines;
      case CartQuoteRegionChanged(:final regionId):
        if (regionId == _regionId) return;
        _regionId = regionId;
        wait = false;
      case CartQuotePromoApplied(:final code):
        final trimmed = code.trim();
        if (trimmed.isEmpty) return;
        emit(state.copyWith(promoCode: trimmed, promoError: null));
        wait = false;
      case CartQuotePromoRemoved():
        emit(state.copyWith(promoCode: null, promoError: null));
        wait = false;
      case CartQuoteRetried():
        wait = false;
    }
    await _requote(emit, wait: wait);
  }

  Future<void> _requote(
    Emitter<CartQuoteState> emit, {
    required bool wait,
  }) async {
    if (_languageCode.isEmpty) return;
    if (_lines.isEmpty) {
      emit(state.copyWith(quote: null, isLoading: false, failure: null));
      return;
    }
    emit(state.copyWith(isLoading: true, failure: null));
    if (wait) await Future<void>.delayed(debounce);
    // A newer change took over during the pause: let it send the request.
    if (emit.isDone) return;
    final result = await _getQuote(
      languageCode: _languageCode,
      lines: _lines,
      regionId: _regionId,
      promoCode: state.promoCode,
    );
    emit(
      result.match(
        (failure) => state.copyWith(isLoading: false, failure: failure),
        (quote) {
          final promo = quote.promo;
          final rejected = promo != null && !promo.isApplied;
          return state.copyWith(
            quote: quote,
            isLoading: false,
            failure: null,
            // A rejected code is not sent again with later changes.
            promoCode: rejected ? null : state.promoCode,
            promoError: rejected ? promo.message : null,
          );
        },
      ),
    );
  }
}
