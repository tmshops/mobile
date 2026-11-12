import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/auth/session_data.dart';
import '../../domain/entities/code_request.dart';

part 'login_models.freezed.dart';
part 'login_models.g.dart';

@freezed
abstract class CodeRequestModel with _$CodeRequestModel {
  const factory CodeRequestModel({
    required String requestId,
    required int codeLength,
    required String channel,
    required String destination,

    /// Seconds until a new code may be requested.
    required int resendAfter,
  }) = _CodeRequestModel;

  const CodeRequestModel._();

  factory CodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CodeRequestModelFromJson(json);

  CodeRequest toEntity(DateTime receivedAt) => CodeRequest(
    id: requestId,
    codeLength: codeLength,
    channel: switch (channel) {
      'telegram' => CodeChannel.telegram,
      'email' => CodeChannel.email,
      _ => CodeChannel.sms,
    },
    destination: destination,
    resendAt: receivedAt.add(Duration(seconds: resendAfter)),
  );
}

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String accessToken,
    required String refreshToken,
    required UserProfileModel profile,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}
