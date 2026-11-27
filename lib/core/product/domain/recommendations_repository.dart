import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../error/failures.dart';
import 'product_page.dart';

/// Personal product feed shown under Home and Profile.
abstract interface class RecommendationsRepository {
  /// One page; `cursor == null` loads the first page.
  Future<Either<Failure, ProductPage>> getRecommendations({
    required String languageCode,
    String? cursor,
  });
}

@lazySingleton
class GetRecommendationsUseCase {
  const GetRecommendationsUseCase(this._repository);

  final RecommendationsRepository _repository;

  Future<Either<Failure, ProductPage>> call({
    required String languageCode,
    String? cursor,
  }) => _repository.getRecommendations(
    languageCode: languageCode,
    cursor: cursor,
  );
}
