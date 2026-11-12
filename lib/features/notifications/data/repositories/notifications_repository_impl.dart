import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/app_notification.dart';
import '../../domain/repositories/notifications_repository.dart';
import '../datasources/notifications_remote_data_source.dart';
import '../models/notification_models.dart';

@LazySingleton(as: NotificationsRepository)
class NotificationsRepositoryImpl implements NotificationsRepository {
  const NotificationsRepositoryImpl(this._remote);

  final NotificationsRemoteDataSource _remote;

  @override
  Future<Either<Failure, NotificationsPage>> page(
    String languageCode, {
    String? cursor,
  }) => guardCall(
    () async => (await _remote.page(languageCode, cursor)).toEntity(),
  );

  @override
  Future<Either<Failure, Unit>> markRead(List<String> ids) =>
      guardCall(() async {
        await _remote.markRead(ids);
        return unit;
      });

  @override
  Future<Either<Failure, Unit>> markAllRead() => guardCall(() async {
    await _remote.markAllRead();
    return unit;
  });
}
