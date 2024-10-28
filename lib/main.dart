import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/app_config.dart';
import 'app/app_mock_config.dart';

Future<void> main({
  AppMockConfig? appMockSettings,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  App.isTestRun = appMockSettings?.isTestRun ?? false;
  EquatableConfig.stringify = true;

  final mockSettings = App.isStaging
      ? appMockSettings ??
          const AppMockConfig(
            isMocked: false,
          )
      : const AppMockConfig();
  await runBaseProjectApp(
    AppConfig(
      appMockSettings: mockSettings,
    ),
  );
}