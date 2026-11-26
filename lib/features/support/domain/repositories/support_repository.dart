import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/chat.dart';

/// Support chat and «Найдите мне товар» (TZ §5.17). Texts are translated
/// on the server, so every call takes the language.
abstract interface class SupportRepository {
  /// The latest page, or the one before [olderCursor].
  Future<Either<Failure, ChatPage>> history(
    String languageCode, {
    String? olderCursor,
  });

  /// Messages sent after [after], and request cards as they are now.
  Future<Either<Failure, ChatNews>> news(
    String languageCode, {
    DateTime? after,
  });

  Future<Either<Failure, ChatMessage>> send(
    String languageCode,
    ChatDraft draft,
  );

  /// Sends a request; it appears in the chat as a card.
  Future<Either<Failure, ChatMessage>> findForMe(
    String languageCode, {
    required String description,
    required List<String> photos,
    String? link,
  });

  Future<Either<Failure, List<OrderRef>>> recentOrders(String languageCode);

  /// Photos on the device for attachments, newest first.
  Future<Either<Failure, List<String>>> devicePhotos();
}
