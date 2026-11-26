import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/chat.dart';
import '../../domain/repositories/support_repository.dart';

part 'find_request_cubit.freezed.dart';

@freezed
abstract class FindRequestState with _$FindRequestState {
  const factory FindRequestState({
    @Default('') String description,
    @Default(<String>[]) List<String> photos,
    @Default('') String link,

    /// Device photos to choose from.
    @Default(<String>[]) List<String> gallery,
    @Default(false) bool isSending,
    Failure? failure,

    /// Set once sent: the card to show in the chat.
    ChatMessage? sent,
  }) = _FindRequestState;

  const FindRequestState._();

  /// TZ §5.17: a description, a photo or a link — at least one.
  bool get canSend =>
      !isSending &&
      (description.trim().isNotEmpty ||
          photos.isNotEmpty ||
          link.trim().isNotEmpty);
}

/// «Найдите мне товар» form (UI_DESIGN §7.22): description, up to
/// [maxPhotos] photos or a link; the request goes into the support chat.
@injectable
class FindRequestCubit extends Cubit<FindRequestState> {
  FindRequestCubit(this._repository) : super(const FindRequestState());

  final SupportRepository _repository;

  static const maxPhotos = 5;

  /// [description] and [photo] come from where the form was opened: a
  /// search that found nothing, a photo search.
  Future<void> start({String description = '', String? photo}) async {
    emit(
      FindRequestState(
        description: description,
        photos: [?photo],
      ),
    );
    final gallery = await _repository.devicePhotos();
    if (isClosed) return;
    // Without the gallery the form still takes a description or a link.
    emit(state.copyWith(gallery: gallery.getOrElse((_) => const [])));
  }

  void descriptionChanged(String text) =>
      emit(state.copyWith(description: text, failure: null));

  void linkChanged(String text) =>
      emit(state.copyWith(link: text, failure: null));

  void togglePhoto(String url) {
    final photos = state.photos;
    if (photos.contains(url)) {
      return emit(state.copyWith(photos: [...photos]..remove(url)));
    }
    if (photos.length >= maxPhotos) return;
    emit(state.copyWith(photos: [...photos, url]));
  }

  Future<void> submit(String languageCode) async {
    if (!state.canSend) return;
    emit(state.copyWith(isSending: true, failure: null));
    final link = state.link.trim();
    final result = await _repository.findForMe(
      languageCode,
      description: state.description.trim(),
      photos: state.photos,
      link: link.isEmpty ? null : link,
    );
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isSending: false, failure: failure),
        (card) => state.copyWith(isSending: false, sent: card),
      ),
    );
  }
}
