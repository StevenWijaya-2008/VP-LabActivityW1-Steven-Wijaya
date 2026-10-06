// lib/core/theme/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static const Color seedColor = Color(0xFFC2185B);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.light,
      ),
      cardTheme: const CardThemeData(
        elevation: 1,
        margin: EdgeInsets.only(bottom: 8),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.dark,
      ),
      cardTheme: const CardThemeData(
        elevation: 1,
        margin: EdgeInsets.only(bottom: 8),
      ),
    );
  }
}