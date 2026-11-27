import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_content.dart';

abstract interface class HomeRepository {
  /// Last saved Home for [languageCode], or `null` when there is none.
  Future<Either<Failure, HomeContent?>> getCachedHome(String languageCode);

  /// Downloads Home and replaces the cache on success.
  Future<Either<Failure, HomeContent>> fetchHome(String languageCode);
}
