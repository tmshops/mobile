import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/domain/product_summary.dart';

part 'chat.freezed.dart';

/// Delivery of the customer's own message (UI_DESIGN §7.22).
enum MessageStatus { sending, sent, failed }

/// What a message carries.
@freezed
sealed class ChatContent with _$ChatContent {
  const factory ChatContent.text(String text) = ChatText;

  /// Photos, shown as a grid for 2–4.
  const factory ChatContent.images(List<String> urls) = ChatImages;

  /// A product an operator suggests.
  const factory ChatContent.product(ProductSummary product) = ChatProduct;

  /// The customer pointed at one of their orders.
  const factory ChatContent.order(String number) = ChatOrder;

  /// A «Найдите мне товар» request.
  const factory ChatContent.request(FindRequest request) = ChatRequest;
}

enum FindRequestStatus { searching, found }

@freezed
abstract class FindRequest with _$FindRequest {
  const factory FindRequest({
    required String id,
    required String description,
    @Default(<String>[]) List<String> photos,
    String? link,
    @Default(FindRequestStatus.searching) FindRequestStatus status,

    /// What the operator found; set once [status] is found.
    ProductSummary? product,
  }) = _FindRequest;
}

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    /// Server id; for a message not yet sent, a local one.
    required String id,
    required bool isMine,
    required DateTime sentAt,
    required ChatContent content,
    @Default(MessageStatus.sent) MessageStatus status,
  }) = _ChatMessage;
}

/// A page of history, newest first.
@freezed
abstract class ChatPage with _$ChatPage {
  const factory ChatPage({
    required List<ChatMessage> messages,

    /// `null`: the start of the conversation.
    String? olderCursor,
  }) = _ChatPage;
}

/// What came since the last look: new messages, newest first, and the
/// current state of every request card.
@freezed
abstract class ChatNews with _$ChatNews {
  const factory ChatNews({
    @Default(<ChatMessage>[]) List<ChatMessage> messages,
    @Default(<ChatMessage>[]) List<ChatMessage> requests,
  }) = _ChatNews;
}

/// One of the customer's orders, for the «Заказ» attachment.
@freezed
abstract class OrderRef with _$OrderRef {
  const factory OrderRef({required String number, required String status}) =
      _OrderRef;
}

/// What the customer sends: exactly one of the fields.
@freezed
abstract class ChatDraft with _$ChatDraft {
  const factory ChatDraft({
    String? text,
    @Default(<String>[]) List<String> images,
    String? orderNumber,
  }) = _ChatDraft;
}
