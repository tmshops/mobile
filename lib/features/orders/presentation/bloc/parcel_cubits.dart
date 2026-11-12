import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/parcel.dart';
import '../../domain/usecases/orders_use_cases.dart';
import 'loadable.dart';

part 'parcel_cubits.freezed.dart';

/// «Мои посылки».
@injectable
class ParcelsCubit extends Cubit<Loadable<List<ParcelSummary>>> {
  ParcelsCubit(this._getParcels) : super(const Loadable());

  final GetParcelsUseCase _getParcels;

  String _languageCode = '';

  Future<void> load(String languageCode) {
    _languageCode = languageCode;
    return refresh();
  }

  Future<void> refresh() async {
    if (state.isLoading || _languageCode.isEmpty) return;
    emit(state.started());
    final result = await _getParcels(languageCode: _languageCode);
    if (isClosed) return;
    emit(result.match(state.failed, state.loaded));
  }
}

@freezed
abstract class ParcelState with _$ParcelState {
  const factory ParcelState({
    @Default(Loadable<ParcelDetails>()) Loadable<ParcelDetails> parcel,

    /// «Отправить сейчас» is on its way.
    @Default(false) bool isSending,
    Failure? actionFailure,

    /// Set once the parcel was sent, for a confirming toast.
    @Default(false) bool wasSent,
  }) = _ParcelState;

  const ParcelState._();

  bool get canChange => !isSending && parcel.hasData && !parcel.isFromCache;
}

/// Parcel tracking (TZ §5.15).
@injectable
class ParcelCubit extends Cubit<ParcelState> {
  ParcelCubit(this._getParcel, this._sendNow) : super(const ParcelState());

  final GetParcelUseCase _getParcel;
  final SendParcelNowUseCase _sendNow;

  String _languageCode = '';
  String _number = '';

  Future<void> load({
    required String languageCode,
    required String number,
  }) async {
    _languageCode = languageCode;
    _number = number;
    await refresh();
  }

  Future<void> refresh() async {
    if (state.parcel.isLoading || _number.isEmpty) return;
    emit(state.copyWith(parcel: state.parcel.started()));
    final result = await _getParcel(
      languageCode: _languageCode,
      number: _number,
    );
    if (isClosed) return;
    emit(
      state.copyWith(
        parcel: result.match(state.parcel.failed, state.parcel.loaded),
      ),
    );
  }

  /// «Отправить сейчас», after the customer confirmed.
  Future<void> sendNow() async {
    if (!state.canChange) return;
    emit(state.copyWith(isSending: true, actionFailure: null, wasSent: false));
    final result = await _sendNow(languageCode: _languageCode, number: _number);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isSending: false, actionFailure: failure),
        (parcel) => state.copyWith(
          isSending: false,
          wasSent: true,
          parcel: Loadable(data: parcel, fetchedAt: DateTime.now()),
        ),
      ),
    );
  }
}
