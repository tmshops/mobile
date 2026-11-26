import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../domain/entities/search_hints.dart';
import '../../domain/repositories/search_repository.dart';
import '../datasources/search_local_data_source.dart';
import '../datasources/search_remote_data_source.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  const SearchRepositoryImpl(this._remote, this._local);

  final SearchRemoteDataSource _remote;
  final SearchLocalDataSource _local;

  @override
  Future<Either<Failure, List<String>>> history() =>
      guardCall(() async => _local.read());

  @override
  Future<Either<Failure, List<String>>> remember(String query) =>
      guardCall(() async {
        final text = query.trim();
        // The same query in another letter case is one entry, kept as
        // typed the last time.
        final next = [
          text,
          for (final q in _local.read())
            if (q.toLowerCase() != text.toLowerCase()) q,
        ].take(historyLimit).toList();
        await _local.write(next);
        return next;
      });

  @override
  Future<Either<Failure, List<String>>> forget(String query) =>
      guardCall(() async {
        final next = [
          for (final q in _local.read())
            if (q != query) q,
        ];
        await _local.write(next);
        return next;
      });

  @override
  Future<Either<Failure, Unit>> clearHistory() => guardCall(() async {
    await _local.write(const []);
    return unit;
  });

  @override
  Future<Either<Failure, List<String>>> popular(String languageCode) =>
      guardCall(() async {
        final json = await _remote.popular(languageCode);
        return _parse(() => (json['queries'] as List<dynamic>).cast<String>());
      });

  @override
  Future<Either<Failure, SearchHints>> hints(
    String languageCode,
    String text,
  ) => guardCall(() async {
    final json = await _remote.hints(languageCode, text);
    return _parse(
      () => SearchHints(
        suggestions: (json['suggestions'] as List<dynamic>).cast<String>(),
        didYouMean: json['did_you_mean'] as String?,
      ),
    );
  });

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
