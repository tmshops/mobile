import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../dev/fake_backend/fake_notifications_backend.dart';
import '../error/exceptions.dart';
import '../error/failures.dart';
import '../error/guard.dart';
import '../network/network_info.dart';

/// Unread notifications of the signed-in customer.
abstract interface class NotificationsCountRepository {
  Future<Either<Failure, int>> unreadCount();
}

/// Count API. Throws `NetworkException` / `ServerException`.
abstract interface class NotificationsCountRemoteDataSource {
  Future<int> unreadCount();
}

@LazySingleton(as: NotificationsCountRemoteDataSource, env: [Environment.dev])
class FakeNotificationsCountRemoteDataSource
    implements NotificationsCountRemoteDataSource {
  FakeNotificationsCountRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeNotificationsBackend _backend;

  @override
  Future<int> unreadCount() async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    return _backend.unreadCount();
  }
}

@LazySingleton(as: NotificationsCountRepository)
class NotificationsCountRepositoryImpl implements NotificationsCountRepository {
  const NotificationsCountRepositoryImpl(this._remote);

  final NotificationsCountRemoteDataSource _remote;

  @override
  Future<Either<Failure, int>> unreadCount() => guardCall(_remote.unreadCount);
}

/// Unread count for the Profile tab dot and the Home bell (TZ §3:
/// NotificationsCounterCubit is a global bloc). The notification centre
/// sets it directly when it knows a fresher number.
@lazySingleton
class NotificationsCounterCubit extends Cubit<int> {
  NotificationsCounterCubit(this._repository) : super(0);

  final NotificationsCountRepository _repository;

  /// Signed in or back in the app. A failure keeps the last number.
  Future<void> refresh() async {
    final result = await _repository.unreadCount();
    if (isClosed) return;
    result.match((_) {}, emit);
  }

  void set(int count) => emit(count < 0 ? 0 : count);

  /// Signed out: nothing is unread for a guest.
  void clear() => emit(0);
}
