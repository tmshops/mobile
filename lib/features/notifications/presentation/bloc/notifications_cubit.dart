import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/app_notification.dart';
import '../../domain/repositories/notifications_repository.dart';

part 'notifications_cubit.freezed.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(true) bool isLoading,
    @Default(<AppNotification>[]) List<AppNotification> items,
    @Default(0) int unreadCount,
    String? nextCursor,
    @Default(false) bool isLoadingMore,

    /// The first page failed: nothing to show.
    Failure? failure,

    /// The next page failed: the list stays, with «Повторить» under it.
    Failure? moreFailure,
  }) = _NotificationsState;

  const NotificationsState._();

  bool get hasMore => nextCursor != null;
}

/// Notification centre (UI_DESIGN §7.21, TZ §5.17). Marking read shows at
/// once; a failed call only means the server learns it next time.
@injectable
class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit(this._repository) : super(const NotificationsState());

  final NotificationsRepository _repository;

  Future<void> load(String languageCode) async {
    emit(state.copyWith(isLoading: true, failure: null, moreFailure: null));
    final result = await _repository.page(languageCode);
    if (isClosed) return;
    emit(
      result.match(
        // A failed refresh keeps the list on screen.
        (failure) => state.copyWith(
          isLoading: false,
          failure: state.items.isEmpty ? failure : null,
        ),
        (page) => NotificationsState(
          isLoading: false,
          items: page.items,
          unreadCount: page.unreadCount,
          nextCursor: page.nextCursor,
        ),
      ),
    );
  }

  Future<void> loadMore(String languageCode) async {
    final cursor = state.nextCursor;
    if (cursor == null || state.isLoadingMore) return;
    emit(state.copyWith(isLoadingMore: true, moreFailure: null));
    final result = await _repository.page(languageCode, cursor: cursor);
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isLoadingMore: false, moreFailure: failure),
        (page) => state.copyWith(
          isLoadingMore: false,
          items: [...state.items, ...page.items],
          nextCursor: page.nextCursor,
          unreadCount: page.unreadCount,
        ),
      ),
    );
  }

  Future<void> markRead(String id) async {
    final isUnread = state.items.any((n) => n.id == id && !n.isRead);
    if (!isUnread) return;
    emit(
      state.copyWith(
        items: [
          for (final n in state.items)
            n.id == id ? n.copyWith(isRead: true) : n,
        ],
        unreadCount: state.unreadCount > 0 ? state.unreadCount - 1 : 0,
      ),
    );
    await _repository.markRead([id]);
  }

  Future<void> markAllRead() async {
    if (state.unreadCount == 0) return;
    emit(
      state.copyWith(
        items: [for (final n in state.items) n.copyWith(isRead: true)],
        unreadCount: 0,
      ),
    );
    await _repository.markAllRead();
  }
}
