import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_request.freezed.dart';

/// Where the server sent the code (TZ §5.2: the customer picks the channel;
/// the first code always goes by SMS).
enum CodeChannel { sms, telegram, email }

/// A sent sign-in code, as the server describes it.
@freezed
abstract class CodeRequest with _$CodeRequest {
  const factory CodeRequest({
    required String id,

    /// 4–6 digits, from the server config.
    required int codeLength,
    required CodeChannel channel,

    /// Masked phone or address the code went to, ready to show.
    required String destination,

    /// When «Отправить снова» becomes available.
    required DateTime resendAt,
  }) = _CodeRequest;
}
