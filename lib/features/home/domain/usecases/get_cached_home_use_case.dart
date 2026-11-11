import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_content.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetCachedHomeUseCase {
  const GetCachedHomeUseCase(this._repository);

  final HomeRepository _repository;

  Future<Either<Failure, HomeContent?>> call(String languageCode) =>
      _repository.getCachedHome(languageCode);
}
