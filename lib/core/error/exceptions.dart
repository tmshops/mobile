/// Thrown by data sources; repositories turn these into `Failure`s.
sealed class AppException implements Exception {
  const AppException([this.cause]);

  /// The original error, kept for logging only. Never shown to users.
  final Object? cause;
}

/// No connection, timeout, DNS failure.
final class NetworkException extends AppException {
  const NetworkException([super.cause]);
}

/// Error status or a response that could not be parsed.
final class ServerException extends AppException {
  const ServerException({this.code, this.message, Object? cause})
    : super(cause);

  final String? code;
  final String? message;
}

/// Hive read / write / decode error.
final class CacheException extends AppException {
  const CacheException([super.cause]);
}
