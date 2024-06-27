import 'package:flutter/material.dart';
import 'package:tarweej/config/theme/colors/dark_theme_colors.dart';

class DarkThemeManager {
  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkThemeColors.scaffoldBackgroundColor,
    bottomAppBarTheme: const BottomAppBarTheme(
      color: DarkThemeColors.bottomNavigationBarColor,
    ),
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
    cardColor: DarkThemeColors.cardColor,
  );
}
