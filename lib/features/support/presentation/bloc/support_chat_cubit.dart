import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/chat.dart';
import '../../domain/repositories/support_repository.dart';

part 'support_chat_cubit.freezed.dart';

@freezed
abstract class SupportChatState with _$SupportChatState {
  const factory SupportChatState({
    /// Newest first, the customer's unsent ones included.
    @Default(<ChatMessage>[]) List<ChatMessage> messages,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadingOlder,
    String? olderCursor,

    /// The first page failed: nothing to show but «Повторить».
    Failure? failure,

    /// For the «+» sheet; empty until loaded.
    @Default(<OrderRef>[]) List<OrderRef> orders,
    @Default(<String>[]) List<String> photos,
  }) = _SupportChatState;

  const SupportChatState._();

  bool get hasOlder => olderCursor != null;
}

/// The support chat (UI_DESIGN §7.22, TZ §5.17): history paged upwards,
/// sending with «отправляется / ошибка → повторить», and news every
/// [pollInterval] while open — the dev stand-in for a websocket.
@injectable
class SupportChatCubit extends Cubit<SupportChatState> {
  SupportChatCubit(
    this._repository, {
    @ignoreParam DateTime Function()? now,
    @ignoreParam Duration? pollInterval,
  }) : _now = now ?? DateTime.now,
       _pollInterval = pollInterval ?? const Duration(seconds: 3),
       super(const SupportChatState());

  final SupportRepository _repository;
  final DateTime Function() _now;
  final Duration _pollInterval;

  String _languageCode = '';
  Timer? _poll;
  var _localId = 0;

  /// Unsent drafts by local message id, for «Повторить».
  final _drafts = <String, ChatDraft>{};

  Future<void> load(String languageCode) async {
    _languageCode = languageCode;
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _repository.history(languageCode);
    if (isClosed) return;
    result.match(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (page) => emit(
        state.copyWith(
          isLoading: false,
          messages: page.messages,
          olderCursor: page.olderCursor,
        ),
      ),
    );
    _poll?.cancel();
    _poll = Timer.periodic(_pollInterval, (_) => refresh());
    unawaited(_loadAttachments());
  }

  Future<void> _loadAttachments() async {
    final orders = await _repository.recentOrders(_languageCode);
    final photos = await _repository.devicePhotos();
    if (isClosed) return;
    // Without them the «+» sheet just offers less; the chat still works.
    emit(
      state.copyWith(
        orders: orders.getOrElse((_) => state.orders),
        photos: photos.getOrElse((_) => state.photos),
      ),
    );
  }

  Future<void> loadOlder() async {
    final cursor = state.olderCursor;
    if (cursor == null || state.isLoadingOlder) return;
    emit(state.copyWith(isLoadingOlder: true));
    final result = await _repository.history(
      _languageCode,
      olderCursor: cursor,
    );
    if (isClosed) return;
    result.match(
      (_) => emit(state.copyWith(isLoadingOlder: false)),
      (page) => emit(
        state.copyWith(
          isLoadingOlder: false,
          messages: [...state.messages, ...page.messages],
          olderCursor: page.olderCursor,
        ),
      ),
    );
  }

  /// New messages and changed request cards since the newest one shown.
  Future<void> refresh() async {
    if (state.isLoading || state.failure != null) return;
    final newest = state.messages
        .where((m) => m.status == MessageStatus.sent)
        .firstOrNull;
    final result = await _repository.news(
      _languageCode,
      after: newest?.sentAt,
    );
    if (isClosed) return;
    // A failed check is retried at the next tick.
    result.match((_) {}, (news) {
      final known = {for (final m in state.messages) m.id};
      final cards = {for (final m in news.requests) m.id: m};
      emit(
        state.copyWith(
          messages: [
            for (final m in news.messages)
              if (!known.contains(m.id)) m,
            for (final m in state.messages) cards[m.id] ?? m,
          ],
        ),
      );
    });
  }

  Future<void> send(ChatDraft draft) async {
    final id = 'local-${_localId++}';
    _drafts[id] = draft;
    final pending = ChatMessage(
      id: id,
      isMine: true,
      sentAt: _now(),
      content: _contentOf(draft),
      status: MessageStatus.sending,
    );
    emit(state.copyWith(messages: [pending, ...state.messages]));
    await _deliver(id, draft);
  }

  Future<void> retry(String localId) async {
    final draft = _drafts[localId];
    if (draft == null) return;
    _replace(localId, (m) => m.copyWith(status: MessageStatus.sending));
    await _deliver(localId, draft);
  }

  /// A request card from the «Найдите мне товар» form.
  void showRequest(ChatMessage card) {
    if (state.messages.any((m) => m.id == card.id)) return;
    emit(state.copyWith(messages: [card, ...state.messages]));
  }

  Future<void> _deliver(String localId, ChatDraft draft) async {
    final result = await _repository.send(_languageCode, draft);
    if (isClosed) return;
    result.match(
      (_) => _replace(localId, (m) => m.copyWith(status: MessageStatus.failed)),
      (sent) {
        _drafts.remove(localId);
        _replace(localId, (_) => sent);
      },
    );
  }

  void _replace(String id, ChatMessage Function(ChatMessage) change) => emit(
    state.copyWith(
      messages: [
        for (final m in state.messages) m.id == id ? change(m) : m,
      ],
    ),
  );

  static ChatContent _contentOf(ChatDraft draft) {
    if (draft.orderNumber case final number?) return ChatContent.order(number);
    if (draft.images.isNotEmpty) return ChatContent.images(draft.images);
    return ChatContent.text(draft.text ?? '');
  }

  @override
  Future<void> close() {
    _poll?.cancel();
    return super.close();
  }
}
