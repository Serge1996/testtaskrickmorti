

import 'app_mock_config.dart';

class AppConfig {
  const AppConfig({
    this.appMockSettings = const AppMockConfig(),
  });

  final AppMockConfig appMockSettings;
}
