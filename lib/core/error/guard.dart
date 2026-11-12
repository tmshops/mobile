import 'package:fpdart/fpdart.dart';

import 'exceptions.dart';
import 'failures.dart';

/// Runs a data-source call and maps its exceptions to a [Failure]
/// (repositories return `Either`, data sources throw).
Future<Either<Failure, T>> guardCall<T>(Future<T> Function() run) async {
  try {
    return right(await run());
  } on NetworkException {
    return left(const NetworkFailure());
  } on ServerException catch (e) {
    return left(ServerFailure(code: e.code, message: e.message));
  } on CacheException {
    return left(const CacheFailure());
  }
}
