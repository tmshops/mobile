import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/photo_search.dart';

/// Photo search (TZ §5.8).
abstract interface class PhotoSearchRepository {
  /// Photos on the device for the gallery strip, newest first.
  Future<Either<Failure, List<String>>> devicePhotos();

  /// Products like [query], most similar first. [onUploadProgress] gets
  /// 0…1 while the photo is being sent.
  Future<Either<Failure, List<PhotoMatch>>> search(
    String languageCode,
    PhotoQuery query, {
    void Function(double progress)? onUploadProgress,
  });
}
