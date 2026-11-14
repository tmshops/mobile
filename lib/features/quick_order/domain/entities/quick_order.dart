import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_order.freezed.dart';

/// A sign-in code went to the guest's phone (TZ §5.11).
@freezed
abstract class QuickOrderCode with _$QuickOrderCode {
  const factory QuickOrderCode({
    required String requestId,

    /// 4–6 digits, from the server.
    required int codeLength,

    /// Masked phone the code went to, ready to show.
    required String destination,
  }) = _QuickOrderCode;
}
