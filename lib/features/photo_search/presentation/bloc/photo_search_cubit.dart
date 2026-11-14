import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/photo_search.dart';
import '../../domain/repositories/photo_search_repository.dart';

part 'photo_search_cubit.freezed.dart';

enum PhotoSearchStatus { uploading, searching, done, failure }

@freezed
abstract class PhotoSearchState with _$PhotoSearchState {
  const factory PhotoSearchState({
    @Default(PhotoSearchStatus.uploading) PhotoSearchStatus status,

    /// 0…1 while [PhotoSearchStatus.uploading].
    @Default(0) double uploadProgress,
    @Default(<PhotoMatch>[]) List<PhotoMatch> matches,
    Failure? failure,
  }) = _PhotoSearchState;
}

/// Results of a photo search (UI_DESIGN §7.6, TZ §5.8): the photo is sent
/// with progress, then the matches come most similar first.
@injectable
class PhotoSearchCubit extends Cubit<PhotoSearchState> {
  PhotoSearchCubit(this._repository) : super(const PhotoSearchState());

  final PhotoSearchRepository _repository;

  /// Each search gets a number, so a late answer to an older one is
  /// dropped after «Повторить».
  int _run = 0;

  Future<void> search(String languageCode, PhotoQuery query) async {
    final run = ++_run;
    emit(
      PhotoSearchState(
        status: query.needsUpload
            ? PhotoSearchStatus.uploading
            : PhotoSearchStatus.searching,
      ),
    );
    final result = await _repository.search(
      languageCode,
      query,
      onUploadProgress: (progress) {
        if (isClosed || run != _run) return;
        emit(
          progress < 1
              ? state.copyWith(uploadProgress: progress)
              : state.copyWith(
                  status: PhotoSearchStatus.searching,
                  uploadProgress: 1,
                ),
        );
      },
    );
    if (isClosed || run != _run) return;
    emit(
      result.match(
        (failure) => PhotoSearchState(
          status: PhotoSearchStatus.failure,
          failure: failure,
        ),
        (matches) =>
            PhotoSearchState(status: PhotoSearchStatus.done, matches: matches),
      ),
    );
  }
}
