import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'region.dart';
import 'region_repository.dart';

part 'region_cubit.freezed.dart';

@freezed
abstract class RegionState with _$RegionState {
  const factory RegionState({
    required String selectedId,
    @Default(<Region>[]) List<Region> regions,
  }) = _RegionState;

  const RegionState._();

  /// Name of the selected region; `null` until the list is loaded.
  String? get selectedName {
    for (final region in regions) {
      if (region.id == selectedId) return region.name;
    }
    return null;
  }
}

/// Selected delivery region, app-wide (TZ §3 global blocs).
@lazySingleton
class RegionCubit extends Cubit<RegionState> {
  RegionCubit(this._repository)
    : super(RegionState(selectedId: _repository.savedRegionId ?? defaultId));

  final RegionRepository _repository;

  /// Until onboarding asks, the capital is the most likely answer.
  static const defaultId = 'ashgabat';

  /// Loads names in [languageCode]; keeps the old list if offline.
  Future<void> load(String languageCode) async {
    final result = await _repository.getRegions(languageCode);
    result.match((_) {}, (regions) {
      if (!isClosed) emit(state.copyWith(regions: regions));
    });
  }

  Future<void> select(String id) async {
    if (id == state.selectedId) return;
    emit(state.copyWith(selectedId: id));
    await _repository.saveRegionId(id);
  }
}
