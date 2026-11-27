import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/delivery_address.dart';
import '../../domain/repositories/address_repository.dart';

part 'addresses_cubit.freezed.dart';

@freezed
abstract class AddressesState with _$AddressesState {
  const factory AddressesState({
    @Default(true) bool isLoading,
    @Default(<DeliveryAddress>[]) List<DeliveryAddress> addresses,

    /// Loading failed with nothing to show.
    Failure? failure,

    /// «Сделать основным» or «Удалить» failed: a toast, the list stays.
    Failure? actionFailure,
  }) = _AddressesState;
}

/// «Адреса» (UI_DESIGN §7.24): the list, the default one, delete.
@injectable
class AddressesCubit extends Cubit<AddressesState> {
  AddressesCubit(this._repository) : super(const AddressesState());

  final AddressRepository _repository;
  String _languageCode = '';

  Future<void> load(String languageCode) async {
    _languageCode = languageCode;
    emit(state.copyWith(isLoading: state.addresses.isEmpty, failure: null));
    final result = await _repository.addresses(languageCode);
    if (isClosed) return;
    result.match(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          // A refresh that fails keeps the list.
          failure: state.addresses.isEmpty ? failure : null,
          actionFailure: state.addresses.isEmpty ? null : failure,
        ),
      ),
      (addresses) =>
          emit(state.copyWith(isLoading: false, addresses: addresses)),
    );
  }

  Future<void> setDefault(String id) async {
    final before = state.addresses;
    emit(
      state.copyWith(
        actionFailure: null,
        addresses: [for (final a in before) a.copyWith(isDefault: a.id == id)],
      ),
    );
    final result = await _repository.setDefault(id);
    if (isClosed) return;
    result.match(
      (failure) =>
          emit(state.copyWith(addresses: before, actionFailure: failure)),
      (_) => load(_languageCode),
    );
  }

  Future<void> delete(String id) async {
    final before = state.addresses;
    emit(
      state.copyWith(
        actionFailure: null,
        addresses: [
          for (final a in before)
            if (a.id != id) a,
        ],
      ),
    );
    final result = await _repository.delete(id);
    if (isClosed) return;
    result.match(
      (failure) =>
          emit(state.copyWith(addresses: before, actionFailure: failure)),
      // The server may have made another one the default.
      (_) => load(_languageCode),
    );
  }
}
