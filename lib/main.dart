import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/database/hive_initializer.dart';
import 'core/di/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  await configureDependencies(appEnvironment);
  runApp(const TmshopApp());
}
