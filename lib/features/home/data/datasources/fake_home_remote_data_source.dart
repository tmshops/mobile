import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/home_models.dart';
import '../../../../core/dev/fake_backend/fake_home_samples.dart';
import 'home_remote_data_source.dart';

/// Dev stand-in for the Home API until the backend exists.
///
/// Returns raw JSON in the agreed shape (so parsing is exercised), waits
/// like a real request, and fails with [NetworkException] when the phone
/// is offline so the offline states can be tried with airplane mode.
@LazySingleton(as: HomeRemoteDataSource, env: [Environment.dev])
class FakeHomeRemoteDataSource implements HomeRemoteDataSource {
  const FakeHomeRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;

  static const _latency = Duration(milliseconds: 700);
  static const _pageSize = 10;
  static const _pageCount = 5;

  Future<void> _request() async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    await Future<void>.delayed(_latency);
  }

  @override
  Future<HomeResponseModel> getHome(String languageCode) async {
    await _request();
    final json = FakeHomeSamples.home(languageCode, now: DateTime.now());
    return _parse(() => HomeResponseModel.fromJson(json));
  }

  @override
  Future<ProductPageModel> getRecommendations({
    required String languageCode,
    String? cursor,
  }) async {
    await _request();
    final page = cursor == null ? 0 : int.tryParse(cursor) ?? 0;
    final json = {
      'items': [
        for (var i = 0; i < _pageSize; i++)
          FakeHomeSamples.product(
            languageCode,
            page * _pageSize + i + FakeHomeSamples.feedSeedOffset,
          ),
      ],
      'next_cursor': page + 1 < _pageCount ? '${page + 1}' : null,
    };
    return _parse(() => ProductPageModel.fromJson(json));
  }

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
