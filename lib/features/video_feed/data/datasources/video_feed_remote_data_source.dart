import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_video_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Video feed API (TZ §5.4). Throws `NetworkException` / `ServerException`.
abstract interface class VideoFeedRemoteDataSource {
  /// `{items: [{id, poster_url, duration_ms, likes, is_liked, product}],
  /// next_cursor}`.
  Future<Map<String, dynamic>> feed(
    String languageCode, {
    String? startId,
    String? cursor,
  });

  Future<void> like(String id, {required bool isLiked});
}

@LazySingleton(as: VideoFeedRemoteDataSource, env: [Environment.dev])
class FakeVideoFeedRemoteDataSource implements VideoFeedRemoteDataSource {
  const FakeVideoFeedRemoteDataSource(this._backend, this._networkInfo);

  final FakeVideoBackend _backend;
  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 400);

  @override
  Future<Map<String, dynamic>> feed(
    String languageCode, {
    String? startId,
    String? cursor,
  }) => _call(
    () => _backend.feed(languageCode, startId: startId, cursor: cursor),
  );

  @override
  Future<void> like(String id, {required bool isLiked}) =>
      _call(() => _backend.like(id, isLiked: isLiked));

  Future<T> _call<T>(T Function() run) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
    try {
      return run();
    } on ServerException {
      rethrow;
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
