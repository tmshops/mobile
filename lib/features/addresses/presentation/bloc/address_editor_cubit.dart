import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/delivery_address.dart';
import '../../domain/repositories/address_repository.dart';

part 'address_editor_cubit.freezed.dart';

@freezed
abstract class AddressEditorState with _$AddressEditorState {
  const factory AddressEditorState({
    /// The point under the pin; `null` until the location is known.
    GeoPoint? center,

    /// What is at [center]; `null` while it is being looked up.
    PlaceInfo? place,
    Failure? placeFailure,
    @Default('') String details,
    @Default(false) bool isDefault,

    /// Set when editing a saved address.
    String? id,
    @Default(false) bool isSaving,
    Failure? saveFailure,

    /// Set once saved: the editor closes.
    DeliveryAddress? saved,
  }) = _AddressEditorState;

  const AddressEditorState._();

  bool get isLocating =>
      center != null && place == null && placeFailure == null;

  bool get canSave => center != null && place != null && !isSaving;
}

/// Address on the map (UI_DESIGN §7.9, TZ §5.16): the map moves under a
/// fixed pin; when it stops, the backend says what is there.
@injectable
class AddressEditorCubit extends Cubit<AddressEditorState> {
  AddressEditorCubit(this._repository, {@ignoreParam Duration? settle})
    : _settle = settle ?? const Duration(milliseconds: 400),
      super(const AddressEditorState());

  final AddressRepository _repository;
  final Duration _settle;
  String _languageCode = '';
  Timer? _lookup;

  /// [existing] to edit a saved address; otherwise starts at the phone's
  /// location.
  Future<void> start(String languageCode, {DeliveryAddress? existing}) async {
    _languageCode = languageCode;
    if (existing != null) {
      return emit(
        AddressEditorState(
          id: existing.id,
          center: existing.point,
          place: PlaceInfo(address: existing.address, region: existing.region),
          details: existing.details,
          isDefault: existing.isDefault,
        ),
      );
    }
    await myLocation();
  }

  Future<void> myLocation() async {
    final result = await _repository.deviceLocation();
    if (isClosed) return;
    result.match((failure) => emit(state.copyWith(placeFailure: failure)), (
      point,
    ) {
      moved(point);
      _lookup?.cancel();
      unawaited(_lookUp(point));
    });
  }

  /// The map moved; the address is looked up once it stops.
  void moved(GeoPoint point) {
    emit(state.copyWith(center: point, place: null, placeFailure: null));
    _lookup?.cancel();
    _lookup = Timer(_settle, () => _lookUp(point));
  }

  Future<void> retryLookup() async {
    final center = state.center;
    if (center == null) return myLocation();
    emit(state.copyWith(placeFailure: null));
    await _lookUp(center);
  }

  Future<void> _lookUp(GeoPoint point) async {
    final result = await _repository.placeAt(_languageCode, point);
    // A later move wins.
    if (isClosed || state.center != point) return;
    result.match(
      (failure) => emit(state.copyWith(placeFailure: failure)),
      (place) => emit(state.copyWith(place: place)),
    );
  }

  void detailsChanged(String text) => emit(state.copyWith(details: text));

  void defaultChanged({required bool isDefault}) =>
      emit(state.copyWith(isDefault: isDefault));

  Future<void> save() async {
    final center = state.center;
    if (!state.canSave || center == null) return;
    emit(state.copyWith(isSaving: true, saveFailure: null));
    final result = await _repository.save(
      _languageCode,
      AddressDraft(
        id: state.id,
        point: center,
        details: state.details,
        isDefault: state.isDefault,
      ),
    );
    if (isClosed) return;
    result.match(
      (failure) => emit(state.copyWith(isSaving: false, saveFailure: failure)),
      (saved) => emit(state.copyWith(isSaving: false, saved: saved)),
    );
  }

  @override
  Future<void> close() {
    _lookup?.cancel();
    return super.close();
  }
}
