import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_notifications_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/notification_models.dart';

/// Notifications API. Throws `NetworkException` / `ServerException`.
abstract interface class NotificationsRemoteDataSource {
  Future<NotificationsPageModel> page(String languageCode, String? cursor);

  Future<void> markRead(List<String> ids);

  Future<void> markAllRead();
}

@LazySingleton(as: NotificationsRemoteDataSource, env: [Environment.dev])
class FakeNotificationsRemoteDataSource
    implements NotificationsRemoteDataSource {
  FakeNotificationsRemoteDataSource(this._networkInfo, this._backend);

  final NetworkInfo _networkInfo;
  final FakeNotificationsBackend _backend;

  static const _latency = Duration(milliseconds: 350);

  Future<T> _call<T>(T Function() run) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return run();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }

  @override
  Future<NotificationsPageModel> page(String languageCode, String? cursor) =>
      _call(
        () => NotificationsPageModel.fromJson(
          _backend.page(languageCode, cursor),
        ),
      );

  @override
  Future<void> markRead(List<String> ids) =>
      _call(() => _backend.markRead(ids));

  @override
  Future<void> markAllRead() => _call(_backend.markAllRead);
}
