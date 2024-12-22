import 'package:flutter/material.dart';
import 'package:theme_git/pages/home.dart';
import 'package:theme_git/theme/theme_constant.dart';
import 'package:theme_git/theme/theme_manager.dart';

void main() {
  runApp(const ThemeApp());
}

class ThemeApp extends StatefulWidget {
  const ThemeApp({super.key});

  @override
  State<ThemeApp> createState() => _ThemeAppState();
}

class _ThemeAppState extends State<ThemeApp> {
  @override
  void initState() {
    ThemeManager().addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    ThemeManager().removeListener(themeListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Theme App",
      themeMode: ThemeManager().getThemeMode,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Home(),
    );
  }
}
