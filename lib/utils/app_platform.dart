import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'extensions/locale_extensions.dart';

class AppPlatform {
  AppPlatform._();

  static final bool isAndroid = !kIsWeb && Platform.isAndroid;

  static final bool isIOS = !kIsWeb && Platform.isIOS;

  static const bool isWeb = kIsWeb;

  static Locale get locale =>
      isWeb ? const Locale('en') : localeFromString(Platform.localeName);
}
