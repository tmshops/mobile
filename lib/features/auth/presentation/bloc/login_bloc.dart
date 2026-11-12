import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/auth/user_profile.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/code_request.dart';
import '../../domain/repositories/login_repository.dart';
import '../../domain/usecases/login_use_cases.dart';

part 'login_bloc.freezed.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  /// National digits only, as [PhoneField] reports them.
  const factory LoginEvent.phoneChanged(String phone) = LoginPhoneChanged;

  const factory LoginEvent.consentChanged({required bool hasConsent}) =
      LoginConsentChanged;

  /// «Получить код».
  const factory LoginEvent.codeRequested({required String languageCode}) =
      LoginCodeRequested;

  /// «Отправить снова».
  const factory LoginEvent.resendRequested({required String languageCode}) =
      LoginResendRequested;

  /// Typing in the code boxes clears the last error.
  const factory LoginEvent.codeEdited() = LoginCodeEdited;

  const factory LoginEvent.codeSubmitted({
    required String languageCode,
    required String code,
  }) = LoginCodeSubmitted;

  /// «Изменить номер».
  const factory LoginEvent.phoneEditRequested() = LoginPhoneEditRequested;
}

enum LoginStep { phone, code }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String phone,
    @Default(false) bool hasConsent,
    @Default(LoginStep.phone) LoginStep step,

    /// A request is on its way: buttons show a spinner, taps are ignored.
    @Default(false) bool isBusy,
    CodeRequest? request,
    Failure? failure,

    /// Set by the first «Получить код», so field errors show only once
    /// asked.
    @Default(false) bool showErrors,
    UserProfile? profile,
  }) = _LoginState;

  const LoginState._();

  static const phoneLength = 8;

  bool get isPhoneValid => phone.length == phoneLength;

  bool get isDone => profile != null;

  String? get _errorCode => switch (failure) {
    ServerFailure(:final code) => code,
    _ => null,
  };

  bool get isBlocked => _errorCode == LoginErrorCodes.blocked;

  /// The code can no longer be used: only a new one helps.
  bool get isCodeExpired => _errorCode == LoginErrorCodes.codeExpired;
}

/// Phone → code → signed in (TZ §5.2). Starting the session is the
/// repository's job; this bloc only reports [LoginState.isDone].
@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._requestCode, this._verifyCode) : super(const LoginState()) {
    on<LoginPhoneChanged>(
      (event, emit) => emit(state.copyWith(phone: event.phone, failure: null)),
    );
    on<LoginConsentChanged>(
      (event, emit) => emit(state.copyWith(hasConsent: event.hasConsent)),
    );
    on<LoginCodeRequested>(_onCodeRequested, transformer: droppable());
    on<LoginResendRequested>(_onResend, transformer: droppable());
    on<LoginCodeEdited>((_, emit) {
      if (state.failure != null && !state.isCodeExpired) {
        emit(state.copyWith(failure: null));
      }
    });
    on<LoginCodeSubmitted>(_onCodeSubmitted, transformer: droppable());
    on<LoginPhoneEditRequested>(
      (_, emit) => emit(
        state.copyWith(step: LoginStep.phone, failure: null, request: null),
      ),
    );
  }

  final RequestCodeUseCase _requestCode;
  final VerifyCodeUseCase _verifyCode;

  Future<void> _onCodeRequested(
    LoginCodeRequested event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isBusy) return;
    if (!state.isPhoneValid || !state.hasConsent) {
      emit(state.copyWith(showErrors: true));
      return;
    }
    await _send(event.languageCode, emit);
  }

  Future<void> _onResend(
    LoginResendRequested event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isBusy || state.step != LoginStep.code) return;
    await _send(event.languageCode, emit);
  }

  Future<void> _send(String languageCode, Emitter<LoginState> emit) async {
    emit(state.copyWith(isBusy: true, failure: null, showErrors: true));
    final result = await _requestCode(
      languageCode: languageCode,
      phone: state.phone,
    );
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (request) => state.copyWith(
          isBusy: false,
          step: LoginStep.code,
          request: request,
        ),
      ),
    );
  }

  Future<void> _onCodeSubmitted(
    LoginCodeSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    final request = state.request;
    if (state.isBusy || request == null || state.isCodeExpired) return;
    if (event.code.length != request.codeLength) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _verifyCode(
      languageCode: event.languageCode,
      requestId: request.id,
      code: event.code,
    );
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (profile) => state.copyWith(isBusy: false, profile: profile),
      ),
    );
  }
}
