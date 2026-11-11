/// What went wrong, as seen by the presentation layer.
///
/// Repositories map exceptions to these; the UI maps them to localised
/// text. [ServerFailure.message] is already localised by the server
/// (TZ §7.1) and may be shown as-is.
sealed class Failure {
  const Failure();
}

/// The device has no connection, or the request never reached the server.
final class NetworkFailure extends Failure {
  const NetworkFailure();
}

/// The server answered with an error or an unreadable response.
final class ServerFailure extends Failure {
  const ServerFailure({this.code, this.message});

  final String? code;

  /// User-facing text from the server, in the request language.
  final String? message;
}

/// Local storage could not be read or written.
final class CacheFailure extends Failure {
  const CacheFailure();
}

/// Input rejected by the server or by client-side checks.
final class ValidationFailure extends Failure {
  const ValidationFailure({this.fields = const {}});

  /// Field name → user-facing message.
  final Map<String, String> fields;
}

/// Anything not covered above; logged, shown as a generic error.
final class UnexpectedFailure extends Failure {
  const UnexpectedFailure();
}
