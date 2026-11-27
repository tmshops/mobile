import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/domain/product_summary.dart';

part 'video_clip.freezed.dart';

/// One clip of the feed and the product it sells (TZ §5.4).
@freezed
abstract class VideoClip with _$VideoClip {
  const factory VideoClip({
    required String id,

    /// Shown before the video loads.
    required String posterUrl,
    required Duration duration,
    required ProductSummary product,

    /// Website link of the product, for «Поделиться».
    required String shareUrl,
    @Default(0) int likeCount,
    @Default(false) bool isLiked,
  }) = _VideoClip;
}

@freezed
abstract class VideoPage with _$VideoPage {
  const factory VideoPage({
    required List<VideoClip> clips,

    /// `null`: the end of the feed.
    String? nextCursor,
  }) = _VideoPage;
}
