import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_content.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetRecommendationsUseCase {
  const GetRecommendationsUseCase(this._repository);

  final HomeRepository _repository;

  Future<Either<Failure, ProductPage>> call({
    required String languageCode,
    String? cursor,
  }) => _repository.getRecommendations(
    languageCode: languageCode,
    cursor: cursor,
  );
}
