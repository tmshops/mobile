import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/link_import.dart';
import '../../domain/repositories/link_import_repository.dart';

part 'link_import_cubit.freezed.dart';

@freezed
sealed class LinkImportState with _$LinkImportState {
  const factory LinkImportState.working(LinkImportStep step) =
      LinkImportWorking;

  /// Open this product instead of the waiting screen.
  const factory LinkImportState.done(String productId) = LinkImportReady;

  /// Could not be loaded; the link went to an operator (TZ §5.9).
  const factory LinkImportState.failed() = LinkImportGaveUp;

  /// The request itself failed (offline, server error): can be retried.
  const factory LinkImportState.error(Failure failure) = LinkImportError;
}

/// The waiting screen of «Товар по ссылке» (UI_DESIGN §7.6, TZ §5.9):
/// asks about the task every [pollInterval] until it is done, failed or
/// [timeout] passes. Closing the cubit (leaving the screen, «Отмена»)
/// stops asking; the task carries on on the server.
@injectable
class LinkImportCubit extends Cubit<LinkImportState> {
  LinkImportCubit(
    this._repository, {
    @ignoreParam Duration? pollInterval,
    @ignoreParam Duration? timeout,
  }) : _pollInterval = pollInterval ?? const Duration(seconds: 2),
       _timeout = timeout ?? const Duration(seconds: 60),
       super(const LinkImportState.working(LinkImportStep.opening));

  final LinkImportRepository _repository;
  final Duration _pollInterval;
  final Duration _timeout;

  /// Bumped by every [start]: a loop of an older start stops.
  int _run = 0;

  Future<void> start(String link) async {
    final run = ++_run;
    final watch = Stopwatch()..start();
    emit(const LinkImportState.working(LinkImportStep.opening));
    var result = await _repository.start(link);
    while (!isClosed && run == _run) {
      final String taskId;
      switch (result) {
        case Left(value: final failure):
          return emit(LinkImportState.error(failure));
        case Right(value: LinkImportDone(:final productId)):
          return emit(LinkImportState.done(productId));
        case Right(value: LinkImportFailed()):
          return emit(const LinkImportState.failed());
        case Right(value: LinkImportPending(taskId: final id, :final step)):
          emit(LinkImportState.working(step));
          taskId = id;
      }
      if (watch.elapsed >= _timeout) {
        return emit(const LinkImportState.failed());
      }
      await Future<void>.delayed(_pollInterval);
      if (isClosed || run != _run) return;
      result = await _repository.status(taskId);
    }
  }
}
