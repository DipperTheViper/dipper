import 'package:flutter/material.dart';
import 'package:dipper/utils/styles/colors/colors.dart';

abstract class AppThemes {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "nunito",
    backgroundColor: ColorsCategory.white,
    primaryColor: ColorsCategory.primary,
    scaffoldBackgroundColor: ColorsCategory.white,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MaterialColor(
        ColorsCategory.primary.value,
        {
          50: ColorsCategory.primary.withOpacity(0.05),
          100: ColorsCategory.primary.withOpacity(0.1),
          200: ColorsCategory.primary.withOpacity(0.2),
          300: ColorsCategory.primary.withOpacity(0.3),
          400: ColorsCategory.primary.withOpacity(0.4),
          500: ColorsCategory.primary.withOpacity(0.5),
          600: ColorsCategory.primary.withOpacity(0.6),
          700: ColorsCategory.primary.withOpacity(0.7),
          800: ColorsCategory.primary.withOpacity(0.8),
          900: ColorsCategory.primary.withOpacity(0.9),
        },
      ),
    ).copyWith(
      secondary: ColorsCategory.primary,
    ),

    // colorScheme: ColorScheme(
    //   brightness: Brightness.light,
    //   primary: ColorsCategory.primary,
    //   onPrimary: ColorsCategory.primaryLight,
    //   secondary: ColorsCategory.textSecondary,
    //   onSecondary: onSecondary,
    //   error: error,
    //   onError: onError,
    //   background: background,
    //   onBackground: onBackground,
    //   surface: surface,
    //   onSurface: onSurface,
    // ),
    brightness: Brightness.light,
    textTheme: const TextTheme(
      //based on weight
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: ColorsCategory.black,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: ColorsCategory.black,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: ColorsCategory.black,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: ColorsCategory.black,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: ColorsCategory.black,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: ColorsCategory.black,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color: ColorsCategory.black,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: ColorsCategory.black,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: ColorsCategory.black,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: ColorsCategory.black,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: ColorsCategory.black,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: ColorsCategory.black,
      ),
    ),
  );
}
