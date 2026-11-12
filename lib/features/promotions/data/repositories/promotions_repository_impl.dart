import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/promotion.dart';
import '../../domain/repositories/promotions_repository.dart';
import '../datasources/promotions_remote_data_source.dart';
import '../models/promotion_models.dart';

@LazySingleton(as: PromotionsRepository)
class PromotionsRepositoryImpl implements PromotionsRepository {
  const PromotionsRepositoryImpl(this._remote);

  final PromotionsRemoteDataSource _remote;

  @override
  Future<Either<Failure, List<Promotion>>> list(String languageCode) =>
      guardCall(
        () async => [
          for (final p in await _remote.list(languageCode)) p.toEntity(),
        ],
      );

  @override
  Future<Either<Failure, PromotionDetails?>> details(
    String languageCode,
    String slug,
  ) => guardCall(
    () async => (await _remote.details(languageCode, slug))?.toEntity(),
  );
}
