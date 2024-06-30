import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tarweej/config/theme/colors/dark_theme_colors.dart';

class DarkThemeManager {
  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkThemeColors.scaffoldBackgroundColor,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: DarkThemeColors.bottomNavigationBarColor,
    ),
    primaryColor: DarkThemeColors.primaryColor,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: DarkThemeColors.primaryColor,
      onPrimary: DarkThemeColors.onPrimaryColor,
      secondary: DarkThemeColors.secondaryColor,
      onSecondary: DarkThemeColors.onSecondaryColor,
      error: DarkThemeColors.error,
      onError: DarkThemeColors.onError,
      surface: DarkThemeColors.surface,
      onSurface: DarkThemeColors.onSurface,
    ),
    //customizing the textfield theme border
    inputDecorationTheme: LightInputTheme.inputTheme,

    cardColor: DarkThemeColors.cardColor,
  );
}

class LightInputTheme {
  static InputDecorationTheme inputTheme = InputDecorationTheme(
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: DarkThemeColors.error,
      ),
      
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: DarkThemeColors.error,
      ),
     
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(13.r),
      borderSide: const BorderSide(
        color: DarkThemeColors.generalBorderColor,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: DarkThemeColors.generalBorderColor,
      ),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(
        color: DarkThemeColors.generalBorderColor,
      ),
    ),
  );
}
