import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../../../core/product/data/product_summary_model.dart';
import '../../domain/entities/photo_search.dart';
import '../../domain/repositories/photo_search_repository.dart';
import '../datasources/photo_search_remote_data_source.dart';

@LazySingleton(as: PhotoSearchRepository)
class PhotoSearchRepositoryImpl implements PhotoSearchRepository {
  const PhotoSearchRepositoryImpl(this._remote);

  final PhotoSearchRemoteDataSource _remote;

  @override
  Future<Either<Failure, List<String>>> devicePhotos() =>
      guardCall(_remote.devicePhotos);

  @override
  Future<Either<Failure, List<PhotoMatch>>> search(
    String languageCode,
    PhotoQuery query, {
    void Function(double progress)? onUploadProgress,
  }) => guardCall(() async {
    final crop = query.crop;
    final json = await _remote.search(
      languageCode,
      imageUrl: query.imageUrl,
      productId: query.productId,
      crop: crop == null
          ? null
          : [crop.left, crop.top, crop.width, crop.height],
      onUploadProgress: query.needsUpload ? onUploadProgress : null,
    );
    try {
      return [
        for (final item in json['items'] as List<dynamic>)
          _match(item as Map<String, dynamic>),
      ];
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  });

  static PhotoMatch _match(Map<String, dynamic> json) => PhotoMatch(
    product: ProductSummaryModel.fromJson(json).toEntity(),
    similarity: (json['similarity'] as num).toDouble(),
  );
}
