import 'package:flutter/material.dart';

// light theme
ThemeData lightTheme = ThemeData(
  useMaterial3: false,

  // color scheme
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blueAccent,
    brightness: Brightness.light,
  ),

  // floating action button theme
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    splashColor: Colors.blueAccent,
  ),

  // dialog theme
  dialogTheme: DialogThemeData(
    contentTextStyle: TextStyle(color: Colors.grey),
  ),

//   snackbar theme
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.grey.shade100,
    elevation: 1,
    contentTextStyle: TextStyle(color: Colors.black),
  ),
);

// dark theme
ThemeData darkTheme = ThemeData(
  useMaterial3: false,

  // color scheme
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blueAccent,
    brightness: Brightness.dark,
  ),

  // floating action button
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    splashColor: Colors.blueAccent,
  ),

  // dialog theme
  dialogTheme: DialogThemeData(
    contentTextStyle: TextStyle(color: Colors.grey),
  ),

//   snackbar theme
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    elevation: 1,
    backgroundColor: Colors.black54,
    contentTextStyle: TextStyle(color: Colors.white),
  ),
);
