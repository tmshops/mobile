import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../../../core/product/data/product_summary_model.dart';
import '../../domain/entities/video_clip.dart';
import '../../domain/repositories/video_feed_repository.dart';
import '../datasources/video_feed_remote_data_source.dart';

@LazySingleton(as: VideoFeedRepository)
class VideoFeedRepositoryImpl implements VideoFeedRepository {
  const VideoFeedRepositoryImpl(this._remote);

  final VideoFeedRemoteDataSource _remote;

  @override
  Future<Either<Failure, VideoPage>> feed(
    String languageCode, {
    String? startId,
    String? cursor,
  }) => guardCall(() async {
    final json = await _remote.feed(
      languageCode,
      startId: startId,
      cursor: cursor,
    );
    try {
      return VideoPage(
        clips: [
          for (final c
              in (json['items'] as List<dynamic>).cast<Map<String, dynamic>>())
            VideoClip(
              id: c['id'] as String,
              posterUrl: c['poster_url'] as String,
              duration: Duration(milliseconds: c['duration_ms'] as int),
              likeCount: c['likes'] as int? ?? 0,
              isLiked: c['is_liked'] as bool? ?? false,
              shareUrl: c['share_url'] as String,
              product: ProductSummaryModel.fromJson(
                c['product'] as Map<String, dynamic>,
              ).toEntity(),
            ),
        ],
        nextCursor: json['next_cursor'] as String?,
      );
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  });

  @override
  Future<Either<Failure, Unit>> like(String id, {required bool isLiked}) =>
      guardCall(() async {
        await _remote.like(id, isLiked: isLiked);
        return unit;
      });
}
