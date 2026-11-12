import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/account_settings.dart';
import '../../domain/repositories/settings_repository.dart';

part 'channel_link_cubit.freezed.dart';

enum LinkStep { email, emailCode, telegram, done }

@freezed
abstract class ChannelLinkState with _$ChannelLinkState {
  const factory ChannelLinkState({
    required LinkStep step,
    CodeRequest? request,
    TelegramLink? telegram,
    @Default(false) bool isBusy,
    Failure? failure,

    /// «Проверить» found no message from the customer yet.
    @Default(false) bool isNotYet,
  }) = _ChannelLinkState;
}

/// Linking a code channel (TZ §5.19: «привязка канала через
/// подтверждение»): email by a code, Telegram by sending a code to the bot.
@injectable
class ChannelLinkCubit extends Cubit<ChannelLinkState> {
  ChannelLinkCubit(this._repository)
    : super(const ChannelLinkState(step: LinkStep.email));

  final SettingsRepository _repository;

  void startEmail() => emit(const ChannelLinkState(step: LinkStep.email));

  Future<void> sendEmail(String languageCode, String email) async {
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.startEmailLink(languageCode, email.trim());
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (request) =>
            ChannelLinkState(step: LinkStep.emailCode, request: request),
      ),
    );
  }

  Future<void> confirmEmail(String languageCode, String code) async {
    final request = state.request;
    if (request == null || state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null));
    final result = await _repository.confirmEmailLink(
      languageCode,
      request.requestId,
      code,
    );
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (_) => const ChannelLinkState(step: LinkStep.done),
      ),
    );
  }

  Future<void> startTelegram() async {
    emit(const ChannelLinkState(step: LinkStep.telegram, isBusy: true));
    final result = await _repository.startTelegramLink();
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (link) => ChannelLinkState(step: LinkStep.telegram, telegram: link),
      ),
    );
  }

  Future<void> checkTelegram() async {
    if (state.isBusy) return;
    emit(state.copyWith(isBusy: true, failure: null, isNotYet: false));
    final result = await _repository.checkTelegramLink();
    if (isClosed) return;
    emit(
      result.match(
        (failure) => state.copyWith(isBusy: false, failure: failure),
        (isLinked) => isLinked
            ? const ChannelLinkState(step: LinkStep.done)
            : state.copyWith(isBusy: false, isNotYet: true),
      ),
    );
  }
}
