import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_settings.freezed.dart';

/// Where login codes are sent (TZ §5.2: the first is always SMS).
enum CodeChannel { sms, telegram, email }

/// Account settings kept on the server (TZ §5.19).
@freezed
abstract class AccountSettings with _$AccountSettings {
  const factory AccountSettings({
    required CodeChannel codeChannel,
    required List<ChannelInfo> channels,
    required List<NotificationTopic> topics,
  }) = _AccountSettings;

  const AccountSettings._();

  bool isLinked(CodeChannel channel) =>
      channels.any((c) => c.channel == channel && c.isLinked);
}

@freezed
abstract class ChannelInfo with _$ChannelInfo {
  const factory ChannelInfo({
    required CodeChannel channel,
    required bool isLinked,

    /// The linked email, to show under the row.
    String? address,
  }) = _ChannelInfo;
}

/// One kind of notification. Service ones ([isRequired]) cannot be off.
@freezed
abstract class NotificationTopic with _$NotificationTopic {
  const factory NotificationTopic({
    required String id,

    /// Server text in the request language.
    required String title,
    required bool isRequired,
    required bool isOn,
  }) = _NotificationTopic;
}

/// A code was sent; confirm it with [requestId].
@freezed
abstract class CodeRequest with _$CodeRequest {
  const factory CodeRequest({
    required String requestId,
    required int codeLength,
  }) = _CodeRequest;
}

/// Send [code] to [bot] in Telegram, then check.
@freezed
abstract class TelegramLink with _$TelegramLink {
  const factory TelegramLink({required String bot, required String code}) =
      _TelegramLink;
}

/// What deleting the account would mean (TZ §5.19: warn about debt and
/// active orders).
@freezed
abstract class DeletionCheck with _$DeletionCheck {
  const factory DeletionCheck({
    required int activeOrders,
    required int debt,
    required int balance,
    required bool canDelete,

    /// Server text when [canDelete] is false.
    String? blockReason,
  }) = _DeletionCheck;
}
