import 'package:flutter/material.dart';
import 'package:hello_there/core/generics/styles/app_colors.dart';

/// Themes of the app
class Themes {
  /// primary app theme
  static final ThemeData appTheme = ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
    ),
  );

  /// Themes of the app
  Themes();
}
