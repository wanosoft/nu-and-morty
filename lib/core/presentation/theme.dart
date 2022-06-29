import 'package:flutter/material.dart';

class NuContaMarketplaceTheme {
  NuContaMarketplaceTheme._();

  static ThemeData themeData = ThemeData(
    primaryColor: Colors.deepPurple,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.deepPurpleAccent,
    ),
    textTheme: TextTheme(
      bodyText1: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
      ),
      button: const TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 16.0,
      ),
      headline1: const TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    primaryTextTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.grey.shade900,
      ),
      bodyText2: TextStyle(
        color: Colors.grey.shade900,
      ),
      headline1: TextStyle(
        color: Colors.grey.shade900,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: Colors.grey.shade900,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
