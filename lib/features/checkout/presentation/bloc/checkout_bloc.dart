import 'dart:math';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/cart/cart_item.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/checkout.dart';
import '../../domain/usecases/checkout_use_cases.dart';

part 'checkout_bloc.freezed.dart';

@freezed
sealed class CheckoutEvent with _$CheckoutEvent {
  const factory CheckoutEvent.started({
    required String languageCode,
    required String regionId,
    required List<CartItem> lines,
    String? promoCode,

    /// The signed-in customer, used when nothing was saved on the device.
    Recipient? profileRecipient,
  }) = CheckoutStarted;

  /// Any edit on the form; the screen builds the new draft.
  const factory CheckoutEvent.draftChanged(CheckoutDraft draft) =
      CheckoutDraftChanged;

  const factory CheckoutEvent.regionChanged(String regionId) =
      CheckoutRegionChanged;

  /// «Повторить» after a failed preview, or back online.
  const factory CheckoutEvent.previewRetried() = CheckoutPreviewRetried;

  /// «Оплатить» / «Подтвердить новую сумму».
  const factory CheckoutEvent.submitted() = CheckoutSubmitted;
}

enum CheckoutStatus {
  editing,
  submitting,

  /// The server total changed on submit; the new one awaits confirmation.
  priceChanged,
  placed,
}

@freezed
abstract class CheckoutState with _$CheckoutState {
  const factory CheckoutState({
    @Default(CheckoutDraft()) CheckoutDraft draft,
    CheckoutPreview? preview,
    @Default(true) bool isPreviewLoading,
    Failure? previewFailure,
    @Default(CheckoutStatus.editing) CheckoutStatus status,
    Failure? submitFailure,

    /// Set after the first «Оплатить», so errors show only once asked.
    @Default(false) bool showProblems,
    PlacedOrder? order,
  }) = _CheckoutState;

  const CheckoutState._();

  List<DraftProblem> get problems => draft.problems(preview);

  bool get canSubmit =>
      preview != null &&
      !isPreviewLoading &&
      status != CheckoutStatus.submitting &&
      status != CheckoutStatus.placed;
}

/// One-screen checkout (TZ §5.12): every price-relevant change asks the
/// server for a new preview; «Оплатить» validates, then places the order
/// once — guarded by an Idempotency-Key.
@injectable
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc(
    this._loadSaved,
    this._getPreview,
    this._placeOrder, {
    @ignoreParam Random? random,
  }) : _random = random ?? Random.secure(),
       super(const CheckoutState()) {
    on<CheckoutEvent>(_onChange, transformer: _editsOnly);
    // A second tap while the order is being created does nothing.
    on<CheckoutSubmitted>(_onSubmitted, transformer: droppable());
  }

  static Stream<CheckoutEvent> _editsOnly(
    Stream<CheckoutEvent> events,
    EventMapper<CheckoutEvent> mapper,
  ) => restartable<CheckoutEvent>()(
    events.where((e) => e is! CheckoutSubmitted),
    mapper,
  );

  final LoadSavedRecipientUseCase _loadSaved;
  final GetCheckoutPreviewUseCase _getPreview;
  final PlaceOrderUseCase _placeOrder;
  final Random _random;

  static const debounce = Duration(milliseconds: 350);
  static const _keyBytes = 16;

  String _languageCode = '';
  String _regionId = '';
  List<CartItem> _lines = const [];
  String? _promoCode;

  /// Reused when «Оплатить» is retried after a network error for the same
  /// draft and total, so the server never creates the order twice.
  String? _idempotencyKey;
  Object? _keyFor;

  Future<void> _onChange(
    CheckoutEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    var wait = true;
    switch (event) {
      case CheckoutStarted(
        :final languageCode,
        :final regionId,
        :final lines,
        :final promoCode,
        :final profileRecipient,
      ):
        _languageCode = languageCode;
        _regionId = regionId;
        _lines = lines;
        _promoCode = promoCode;
        if (state.draft == const CheckoutDraft()) {
          final (saved, address) = await _loadSaved();
          final recipient = saved.isValid ? saved : profileRecipient ?? saved;
          emit(
            state.copyWith(
              draft: state.draft.copyWith(
                recipient: recipient,
                address: address,
              ),
            ),
          );
        }
        wait = false;
      case CheckoutDraftChanged(:final draft):
        final old = state.draft;
        emit(
          state.copyWith(
            draft: draft,
            submitFailure: null,
            // An edit after «цена изменилась» goes back to normal editing.
            status: state.status == CheckoutStatus.priceChanged
                ? CheckoutStatus.editing
                : state.status,
          ),
        );
        // Every event restarts the handler, so a keystroke cancels a preview
        // in flight; when one was loading, this handler takes it over.
        if (!_affectsPrice(old, draft) && !state.isPreviewLoading) return;
      case CheckoutRegionChanged(:final regionId):
        if (regionId == _regionId) {
          if (!state.isPreviewLoading) return;
          break;
        }
        _regionId = regionId;
        // Pickup points are per region: the old choice no longer applies.
        emit(state.copyWith(draft: state.draft.copyWith(pickupPointId: null)));
        wait = false;
      case CheckoutPreviewRetried():
        wait = false;
      case CheckoutSubmitted():
        return;
    }
    await _refreshPreview(emit, wait: wait);
  }

  static bool _affectsPrice(CheckoutDraft a, CheckoutDraft b) =>
      a.method != b.method ||
      a.deliveryType != b.deliveryType ||
      a.serviceIds.length != b.serviceIds.length ||
      !a.serviceIds.containsAll(b.serviceIds) ||
      a.payment != b.payment;

  Future<void> _refreshPreview(
    Emitter<CheckoutState> emit, {
    required bool wait,
  }) async {
    if (_languageCode.isEmpty) return;
    emit(state.copyWith(isPreviewLoading: true, previewFailure: null));
    if (wait) await Future<void>.delayed(debounce);
    if (emit.isDone) return;
    final result = await _getPreview(
      languageCode: _languageCode,
      regionId: _regionId,
      lines: _lines,
      draft: state.draft,
      promoCode: _promoCode,
    );
    emit(
      result.match(
        (failure) =>
            state.copyWith(isPreviewLoading: false, previewFailure: failure),
        (preview) => state.copyWith(
          preview: preview,
          isPreviewLoading: false,
          // Keep the shown choice in line with what the server priced.
          draft: state.draft.copyWith(deliveryType: preview.deliveryType),
        ),
      ),
    );
  }

  Future<void> _onSubmitted(
    CheckoutSubmitted event,
    Emitter<CheckoutState> emit,
  ) async {
    final preview = state.preview;
    if (!state.canSubmit || preview == null) return;
    if (state.problems.isNotEmpty) {
      emit(state.copyWith(showProblems: true));
      return;
    }
    final total = preview.summary.total;
    final key = _keyForAttempt((state.draft, total));
    emit(
      state.copyWith(
        status: CheckoutStatus.submitting,
        submitFailure: null,
        showProblems: true,
      ),
    );
    final result = await _placeOrder(
      languageCode: _languageCode,
      regionId: _regionId,
      lines: _lines,
      draft: state.draft,
      expectedTotal: total,
      idempotencyKey: key,
      promoCode: _promoCode,
    );
    emit(
      result.match(
        (failure) => state.copyWith(
          status: CheckoutStatus.editing,
          submitFailure: failure,
        ),
        (outcome) => switch (outcome) {
          OrderPlaced(:final order) => state.copyWith(
            status: CheckoutStatus.placed,
            order: order,
          ),
          OrderPriceChanged(preview: final fresh) => state.copyWith(
            status: CheckoutStatus.priceChanged,
            preview: fresh,
          ),
        },
      ),
    );
  }

  /// Same draft and total as the last attempt → same key; else a new one.
  String _keyForAttempt(Object attempt) {
    final existing = _idempotencyKey;
    if (existing != null && attempt == _keyFor) return existing;
    final bytes = List.generate(_keyBytes, (_) => _random.nextInt(256));
    final key = [
      for (final b in bytes) b.toRadixString(16).padLeft(2, '0'),
    ].join();
    _idempotencyKey = key;
    _keyFor = attempt;
    return key;
  }
}
