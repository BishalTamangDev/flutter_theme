import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  // private constructor to prevent external instantiation
  ThemeManager._privateConstructor();

  // static final instance, lazily initialized
  static final ThemeManager _themeManager = ThemeManager._privateConstructor();

  // factory constructor to return same instance
  factory ThemeManager() => _themeManager;

  // theme mode variable
  static ThemeMode _themeMode = ThemeMode.light;

  get getThemeMode => _themeMode;

  //  function to change theme mode
  void toggleThemeMode(bool isDark) {
    _themeMode = isDark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
