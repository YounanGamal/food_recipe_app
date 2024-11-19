import 'package:flutter/material.dart';

class ThemeApp {
  static const Color primaryColor = Color(0xff129575);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 14,
        ),
        bodyLarge: TextStyle(),
        titleMedium: TextStyle(),
        bodyMedium: TextStyle(),
        titleSmall: TextStyle(),
        bodySmall: TextStyle(),
      ));
  static ThemeData darkTheme = ThemeData();
}
