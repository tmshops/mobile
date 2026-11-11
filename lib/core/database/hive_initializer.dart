import 'package:hive_ce_flutter/hive_ce_flutter.dart';

/// Prepares Hive. Call once in `main()` before `configureDependencies()`;
/// boxes are opened by the DI module so they can be injected.
Future<void> initHive() => Hive.initFlutter();
