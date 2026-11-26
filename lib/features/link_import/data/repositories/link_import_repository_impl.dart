import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/link_import.dart';
import '../../domain/repositories/link_import_repository.dart';
import '../datasources/link_import_remote_data_source.dart';

@LazySingleton(as: LinkImportRepository)
class LinkImportRepositoryImpl implements LinkImportRepository {
  const LinkImportRepositoryImpl(this._remote);

  final LinkImportRemoteDataSource _remote;

  @override
  Future<Either<Failure, LinkImportStatus>> start(String link) =>
      guardCall(() async {
        final json = await _remote.start(link);
        return _parse(() {
          if (json['product_id'] case final String id) {
            return LinkImportStatus.done(id);
          }
          return LinkImportStatus.pending(
            taskId: json['task_id'] as String,
            step: LinkImportStep.opening,
          );
        });
      });

  @override
  Future<Either<Failure, LinkImportStatus>> status(String taskId) =>
      guardCall(() async {
        final json = await _remote.status(taskId);
        return _parse(
          () => switch (json['status']) {
            'done' => LinkImportStatus.done(json['product_id'] as String),
            'pending' => LinkImportStatus.pending(
              taskId: taskId,
              step: switch (json['step']) {
                'translating' => LinkImportStep.translating,
                'pricing' => LinkImportStep.pricing,
                _ => LinkImportStep.opening,
              },
            ),
            _ => const LinkImportStatus.failed(),
          },
        );
      });

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
