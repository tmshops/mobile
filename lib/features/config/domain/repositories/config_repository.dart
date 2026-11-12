import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/app_config.dart';

/// App config (TZ §8.2): one request at launch, kept on the device.
abstract interface class ConfigRepository {
  /// The last config saved on the device; Right(null) on first launch.
  Future<Either<Failure, AppConfig?>> cached();

  /// Asks the server and saves the answer for the next launch.
  Future<Either<Failure, AppConfig>> fetch(String languageCode);
}
