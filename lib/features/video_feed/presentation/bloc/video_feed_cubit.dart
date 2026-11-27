import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/video_clip.dart';
import '../../domain/repositories/video_feed_repository.dart';

part 'video_feed_cubit.freezed.dart';

@freezed
abstract class VideoFeedState with _$VideoFeedState {
  const factory VideoFeedState({
    @Default(true) bool isLoading,
    @Default(<VideoClip>[]) List<VideoClip> clips,
    String? nextCursor,
    @Default(false) bool isLoadingMore,

    /// The first page failed.
    Failure? failure,
    @Default(0) int current,

    /// Auto-play is muted; the choice holds for the session (TZ §5.4).
    @Default(true) bool isMuted,
  }) = _VideoFeedState;
}

/// The video feed (TZ §5.4, UI_DESIGN §7.3): pages ahead as the customer
/// swipes, likes optimistically.
@injectable
class VideoFeedCubit extends Cubit<VideoFeedState> {
  VideoFeedCubit(this._repository) : super(const VideoFeedState());

  final VideoFeedRepository _repository;
  String _languageCode = '';

  /// The rest of the page is loaded this close to its end.
  static const preloadAhead = 2;

  /// Mute choice for the session, across openings of the feed.
  static bool _sessionMuted = true;

  @visibleForTesting
  static void resetSession() => _sessionMuted = true;

  Future<void> load(String languageCode, {String? startId}) async {
    _languageCode = languageCode;
    emit(
      state.copyWith(isLoading: true, failure: null, isMuted: _sessionMuted),
    );
    final result = await _repository.feed(languageCode, startId: startId);
    if (isClosed) return;
    result.match(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (page) => emit(
        state.copyWith(
          isLoading: false,
          clips: page.clips,
          nextCursor: page.nextCursor,
        ),
      ),
    );
  }

  Future<void> pageChanged(int index) async {
    emit(state.copyWith(current: index));
    if (index >= state.clips.length - preloadAhead) await _loadMore();
  }

  Future<void> _loadMore() async {
    final cursor = state.nextCursor;
    if (cursor == null || state.isLoadingMore) return;
    emit(state.copyWith(isLoadingMore: true));
    final result = await _repository.feed(_languageCode, cursor: cursor);
    if (isClosed) return;
    result.match(
      // The next swipe near the end tries again.
      (_) => emit(state.copyWith(isLoadingMore: false)),
      (page) => emit(
        state.copyWith(
          isLoadingMore: false,
          clips: [...state.clips, ...page.clips],
          nextCursor: page.nextCursor,
        ),
      ),
    );
  }

  void toggleSound() {
    _sessionMuted = !state.isMuted;
    emit(state.copyWith(isMuted: _sessionMuted));
  }

  Future<void> toggleLike(String id) async {
    final clip = state.clips.where((c) => c.id == id).firstOrNull;
    if (clip == null) return;
    final isLiked = !clip.isLiked;
    _replace(
      id,
      (c) => c.copyWith(
        isLiked: isLiked,
        likeCount: c.likeCount + (isLiked ? 1 : -1),
      ),
    );
    final result = await _repository.like(id, isLiked: isLiked);
    if (isClosed) return;
    // Put it back if the server said no.
    result.match((_) => _replace(id, (_) => clip), (_) {});
  }

  void _replace(String id, VideoClip Function(VideoClip) change) => emit(
    state.copyWith(
      clips: [for (final c in state.clips) c.id == id ? change(c) : c],
    ),
  );
}
