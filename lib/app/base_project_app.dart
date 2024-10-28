import 'package:flutter/material.dart';

import '../app_router.dart';
import '../localization/app_localization.dart';
import '../theme/app_theme.dart';

class BaseProjectApp extends StatelessWidget {
  BaseProjectApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
        ],
        theme: AppTheme.themeData(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      );
}
