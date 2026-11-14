import 'package:injectable/injectable.dart';

import '../../../../core/dev/fake_backend/fake_photo_search_backend.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

/// Photo search API (TZ §5.8) and, until image_picker is added, the
/// device's camera and gallery. Throws `NetworkException` /
/// `ServerException`.
abstract interface class PhotoSearchRemoteDataSource {
  /// Photo URLs the "device" holds, newest first.
  Future<List<String>> devicePhotos();

  /// `{items: [{…product tile, similarity}]}`. [crop] is
  /// `[left, top, width, height]` in 0…1.
  Future<Map<String, dynamic>> search(
    String languageCode, {
    required String imageUrl,
    String? productId,
    List<double>? crop,
    void Function(double progress)? onUploadProgress,
  });
}

/// Dev stand-in: "uploads" the photo with progress, then answers from
/// [FakePhotoSearchBackend].
@LazySingleton(as: PhotoSearchRemoteDataSource, env: [Environment.dev])
class FakePhotoSearchRemoteDataSource implements PhotoSearchRemoteDataSource {
  FakePhotoSearchRemoteDataSource(this._networkInfo);

  final NetworkInfo _networkInfo;
  final _backend = FakePhotoSearchBackend();

  static const _uploadSteps = 10;
  static const _uploadStep = Duration(milliseconds: 90);
  static const _latency = Duration(milliseconds: 700);

  @override
  Future<List<String>> devicePhotos() async => _backend.photos();

  @override
  Future<Map<String, dynamic>> search(
    String languageCode, {
    required String imageUrl,
    String? productId,
    List<double>? crop,
    void Function(double progress)? onUploadProgress,
  }) async {
    if (!await _networkInfo.isOnline) throw const NetworkException();
    if (onUploadProgress != null) {
      for (var step = 1; step <= _uploadSteps; step++) {
        await Future<void>.delayed(_uploadStep);
        onUploadProgress(step / _uploadSteps);
      }
    }
    await Future<void>.delayed(_latency);
    try {
      return _backend.search(
        languageCode,
        imageUrl: imageUrl,
        productId: productId,
        crop: crop,
      );
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
