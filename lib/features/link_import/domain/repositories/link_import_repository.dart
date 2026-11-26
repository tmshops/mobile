import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/link_import.dart';

/// «Товар по ссылке» (TZ §5.9): the server opens the marketplace page,
/// translates it and prices it, which may take up to a minute.
abstract interface class LinkImportRepository {
  /// Sends [link]; a product already in the catalog is [LinkImportDone] at
  /// once, otherwise the task starts as [LinkImportPending].
  Future<Either<Failure, LinkImportStatus>> start(String link);

  Future<Either<Failure, LinkImportStatus>> status(String taskId);
}
