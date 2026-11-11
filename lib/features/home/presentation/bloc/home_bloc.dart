import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/home_content.dart';
import '../../domain/usecases/fetch_home_use_case.dart';
import '../../domain/usecases/get_cached_home_use_case.dart';

part 'home_bloc.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  /// First load, or the language changed.
  const factory HomeEvent.started(String languageCode) = HomeStarted;

  /// Pull-to-refresh, retry, reconnect, or a promo timer ran out.
  const factory HomeEvent.refreshed() = HomeRefreshed;
}

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;

  /// Nothing to show yet (no cache): skeleton.
  const factory HomeState.loading() = HomeLoading;

  const factory HomeState.loaded({
    required HomeContent content,

    /// A download is running behind the shown content.
    @Default(false) bool isRefreshing,

    /// The last download failed; [content] is older (cache or previous).
    Failure? refreshFailure,
  }) = HomeLoaded;

  /// Nothing to show and the download failed.
  const factory HomeState.failure(Failure failure) = HomeFailure;
}

/// Server-driven Home: shows the cache at once, then the fresh response
/// (TZ §8, stale-while-revalidate).
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._getCachedHome, this._fetchHome)
    : super(const HomeState.initial()) {
    // A newer request (language switch, refresh) cancels the older one.
    on<HomeEvent>(
      (event, emit) => switch (event) {
        HomeStarted(:final languageCode) => _onStarted(languageCode, emit),
        HomeRefreshed() => _onRefreshed(emit),
      },
      transformer: restartable(),
    );
  }

  final GetCachedHomeUseCase _getCachedHome;
  final FetchHomeUseCase _fetchHome;

  String? _languageCode;

  Future<void> _onStarted(String languageCode, Emitter<HomeState> emit) async {
    _languageCode = languageCode;
    final cached = await _getCachedHome(languageCode);
    // A broken cache is not worth an error screen: just download.
    final content = cached.getOrElse((_) => null);
    emit(
      content == null
          ? const HomeState.loading()
          : HomeState.loaded(content: content, isRefreshing: true),
    );
    await _download(emit);
  }

  Future<void> _onRefreshed(Emitter<HomeState> emit) async {
    if (_languageCode == null) return;
    switch (state) {
      case HomeLoaded(:final content):
        emit(HomeState.loaded(content: content, isRefreshing: true));
      case HomeInitial() || HomeLoading() || HomeFailure():
        emit(const HomeState.loading());
    }
    await _download(emit);
  }

  Future<void> _download(Emitter<HomeState> emit) async {
    // A newer request took over; do not spend a download on this one.
    if (emit.isDone) return;
    final languageCode = _languageCode;
    if (languageCode == null) return;
    final result = await _fetchHome(languageCode);
    emit(
      result.match(
        (failure) => switch (state) {
          HomeLoaded(:final content) => HomeState.loaded(
            content: content,
            refreshFailure: failure,
          ),
          _ => HomeState.failure(failure),
        },
        (content) => HomeState.loaded(content: content),
      ),
    );
  }
}
