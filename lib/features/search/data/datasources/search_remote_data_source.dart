import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_search_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Search hints API (TZ §5.7). Throws `NetworkException` /
/// `ServerException`.
abstract interface class SearchRemoteDataSource {
  /// `{queries: [...]}`.
  Future<Map<String, dynamic>> popular(String languageCode);

  /// `{suggestions: [...], did_you_mean?}`.
  Future<Map<String, dynamic>> hints(String languageCode, String text);
}

@LazySingleton(as: SearchRemoteDataSource, env: [Environment.dev])
class FakeSearchRemoteDataSource implements SearchRemoteDataSource {
  FakeSearchRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;
  final _backend = FakeSearchBackend();

  static const _latency = Duration(milliseconds: 250);

  @override
  Future<Map<String, dynamic>> popular(String languageCode) =>
      _call(() => _backend.popular(languageCode));

  @override
  Future<Map<String, dynamic>> hints(String languageCode, String text) =>
      _call(() => _backend.suggest(languageCode, text));

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
