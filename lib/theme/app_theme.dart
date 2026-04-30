import 'package:flutter/material.dart';

class AppTheme {
  static const Color sand = Color(0xFFF3E9D2);
  static const Color gold = Color(0xFFC9A227);
  static const Color nightBlue = Color(0xFF112240);
  static const Color turquoise = Color(0xFF3FBFBF);
  static const Color papyrusBrown = Color(0xFF8B6C42);

  static ThemeData get lightTheme {
    final base = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: gold,
        brightness: Brightness.light,
        primary: gold,
        secondary: turquoise,
        surface: Colors.white,
      ),
      scaffoldBackgroundColor: sand,
    );

    return base.copyWith(
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: nightBlue,
      ),
      cardTheme: CardThemeData(
        elevation: 3,
        shadowColor: nightBlue.withValues(alpha: 0.14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        prefixIconColor: papyrusBrown,
        hintStyle: const TextStyle(color: Colors.black54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
      textTheme: base.textTheme.copyWith(
        headlineSmall: const TextStyle(
          fontWeight: FontWeight.bold,
          color: nightBlue,
        ),
        titleMedium: const TextStyle(
          fontWeight: FontWeight.w700,
          color: nightBlue,
        ),
        bodyMedium: const TextStyle(color: Color(0xFF2E2E2E), height: 1.35),
      ),
    );
  }

  static ThemeData get darkTheme {
    final base = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: gold,
        brightness: Brightness.dark,
        primary: gold,
        secondary: turquoise,
      ),
      scaffoldBackgroundColor: const Color(0xFF0B1B2E),
    );

    return base.copyWith(
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shadowColor: Colors.black54,
        color: const Color(0xFF142B46),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF1A3554),
        hintStyle: const TextStyle(color: Colors.white70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
