import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_link_import_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Link import API (TZ §5.9). Throws `NetworkException` /
/// `ServerException`.
abstract interface class LinkImportRemoteDataSource {
  /// `{product_id}` or `{task_id}`.
  Future<Map<String, dynamic>> start(String link);

  /// `{status: pending|done|failed, step?, product_id?}`.
  Future<Map<String, dynamic>> status(String taskId);
}

@LazySingleton(as: LinkImportRemoteDataSource, env: [Environment.dev])
class FakeLinkImportRemoteDataSource implements LinkImportRemoteDataSource {
  FakeLinkImportRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;

  /// One server for the app's life: a task survives leaving the screen.
  final _backend = FakeLinkImportBackend();

  static const _latency = Duration(milliseconds: 400);

  @override
  Future<Map<String, dynamic>> start(String link) =>
      _call(() => _backend.start(link));

  @override
  Future<Map<String, dynamic>> status(String taskId) =>
      _call(() => _backend.status(taskId));

  Future<Map<String, dynamic>> _call(
    Map<String, dynamic> Function() run,
  ) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return run();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
