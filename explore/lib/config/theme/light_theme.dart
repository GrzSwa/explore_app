import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color.fromRGBO(239, 239, 239, 1),
    primary: Color.fromRGBO(0, 102, 177, 1),
    secondary: Color.fromRGBO(13, 222, 174, 1),
  ),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      fontSize: 22,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(49, 49, 48, 1),
    ),
    labelMedium: TextStyle(
      fontSize: 17,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w700,
      color: Color.fromRGBO(49, 49, 48, 0.8),
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w300,
      color: Color.fromRGBO(49, 49, 48, 0.8),
    ),
    displayLarge: TextStyle(
      fontSize: 20,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w800,
      color: Color.fromRGBO(0, 102, 177, 1),
    ),
    displayMedium: TextStyle(
      fontSize: 14,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(49, 49, 48, 1),
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(49, 49, 48, 1),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: const Color.fromRGBO(0, 102, 177, 1),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: "Roboto",
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(0, 102, 177, 1),
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: "Roboto",
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
      ),
    ),
  ),
);
