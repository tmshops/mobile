import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/search_hints.dart';

/// TZ §5.7: the history keeps the last 20 queries.
const historyLimit = 20;

/// Search screen data (TZ §5.7): the device's own history and the
/// server's popular queries and hints. Results are a catalog list.
abstract interface class SearchRepository {
  /// Up to [historyLimit] queries, newest first.
  Future<Either<Failure, List<String>>> history();

  /// Puts [query] on top of the history; returns the new history.
  Future<Either<Failure, List<String>>> remember(String query);

  /// Removes [query]; returns the new history.
  Future<Either<Failure, List<String>>> forget(String query);

  Future<Either<Failure, Unit>> clearHistory();

  Future<Either<Failure, List<String>>> popular(String languageCode);

  Future<Either<Failure, SearchHints>> hints(String languageCode, String text);
}
