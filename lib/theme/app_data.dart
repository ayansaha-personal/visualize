import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Light Theme for whole app
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryContainer: Colors.white38,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      elevation: 8.0,
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 40.0,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
    ),
  );

  // Dark Theme for whole app
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      onPrimary: Colors.black,
      primaryContainer: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 40.0,
      ),
      titleMedium: TextStyle(
        color: Colors.white70,
        fontSize: 20.0,
      ),
      titleSmall: TextStyle(
        color: Colors.white70,
        fontSize: 14.0,
      ),
    ),
  );
}
