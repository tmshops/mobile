import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/product/domain/product_summary.dart';

part 'photo_search.freezed.dart';

/// The chosen area of the photo, in fractions of its width and height.
@freezed
abstract class PhotoCrop with _$PhotoCrop {
  const factory PhotoCrop({
    required double left,
    required double top,
    required double width,
    required double height,
  }) = _PhotoCrop;

  /// The whole photo.
  static const full = PhotoCrop(left: 0, top: 0, width: 1, height: 1);
}

/// What to look for (TZ §5.8): a photo from the camera or gallery, or the
/// photo of a product for «Найти похожие».
@freezed
abstract class PhotoQuery with _$PhotoQuery {
  const factory PhotoQuery({
    required String imageUrl,

    /// Set for «Найти похожие»: the server already has the photo, so
    /// nothing is uploaded, and the product itself is left out.
    String? productId,
    PhotoCrop? crop,
  }) = _PhotoQuery;

  const PhotoQuery._();

  bool get needsUpload => productId == null;
}

/// A product that looks like the photo.
@freezed
abstract class PhotoMatch with _$PhotoMatch {
  const factory PhotoMatch({
    required ProductSummary product,

    /// 0…1, as the server scored it.
    required double similarity,
  }) = _PhotoMatch;
}
