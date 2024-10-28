import 'package:flutter/material.dart';

import '../injection_container.dart' as di;
import '../utils/screen_orientation_utils.dart';
import 'app_config.dart';
import 'base_project_app.dart';

class App {
  static bool isTestRun = false;

  static bool get isStaging => isTestRun || const bool.fromEnvironment('staging');
}

Future<void> runBaseProjectApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init(appConfig);
  await ScreenOrientation.setPortrait();

  runApp(BaseProjectApp());
}
