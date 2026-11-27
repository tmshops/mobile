import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/home_content.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_local_data_source.dart';
import '../datasources/home_remote_data_source.dart';
import '../models/home_mappers.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(
    this._remote,
    this._local, {
    // Clock override for tests.
    @ignoreParam DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final HomeRemoteDataSource _remote;
  final HomeLocalDataSource _local;
  final DateTime Function() _now;

  @override
  Future<Either<Failure, HomeContent?>> getCachedHome(
    String languageCode,
  ) async {
    try {
      final cached = await _local.read(languageCode);
      return right(
        cached?.response.toEntity(
          fetchedAt: cached.fetchedAt,
          isFromCache: true,
        ),
      );
    } on CacheException {
      return left(const CacheFailure());
    }
  }

  @override
  Future<Either<Failure, HomeContent>> fetchHome(String languageCode) async {
    try {
      final response = await _remote.getHome(languageCode);
      final fetchedAt = _now();
      try {
        await _local.write(
          languageCode,
          CachedHome(response: response, fetchedAt: fetchedAt),
        );
      } on CacheException {
        // A failed cache write must not hide fresh content.
      }
      return right(response.toEntity(fetchedAt: fetchedAt));
    } on AppException catch (e) {
      return left(_mapException(e));
    }
  }

  static Failure _mapException(AppException e) => switch (e) {
    NetworkException() => const NetworkFailure(),
    ServerException(:final code, :final message) => ServerFailure(
      code: code,
      message: message,
    ),
    CacheException() => const CacheFailure(),
  };
}
