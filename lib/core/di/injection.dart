import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

/// Registers every injectable class. Call once in `main()` after Hive init.
@InjectableInit()
Future<void> configureDependencies(String environment) =>
    getIt.init(environment: environment);

/// Selected with `--dart-define=APP_ENV=prod`. Defaults to dev, which uses
/// fake data sources until the real API exists.
const appEnvironment = String.fromEnvironment(
  'APP_ENV',
  defaultValue: Environment.dev,
);
