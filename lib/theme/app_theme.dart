import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'colors.dart';

@immutable
class AppTheme {
  const AppTheme._();

  static ThemeData themeData() => ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          surface: ColorPalette.white,
          secondary: ColorPalette.accent,
        ),
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            color: ColorPalette.grey,
          ),
          titleMedium: TextStyle(
            color: ColorPalette.nero,
          ),
        ),
      );

  static TextStyle characterNameTextStyle = const TextStyle(
    color: ColorPalette.nero,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    fontFamily: FontFamily.lato,
  );
}
