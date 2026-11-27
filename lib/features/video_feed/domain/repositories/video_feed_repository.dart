import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/video_clip.dart';

/// The video feed (TZ §5.4): order and paging come from the server.
abstract interface class VideoFeedRepository {
  /// The first page, from [startId]; then the page at [cursor].
  Future<Either<Failure, VideoPage>> feed(
    String languageCode, {
    String? startId,
    String? cursor,
  });

  Future<Either<Failure, Unit>> like(String id, {required bool isLiked});
}
