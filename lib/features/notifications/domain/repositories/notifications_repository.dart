import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/app_notification.dart';

abstract interface class NotificationsRepository {
  /// Newest first, page by page (TZ §8: cursor paging).
  Future<Either<Failure, NotificationsPage>> page(
    String languageCode, {
    String? cursor,
  });

  Future<Either<Failure, Unit>> markRead(List<String> ids);

  Future<Either<Failure, Unit>> markAllRead();
}
