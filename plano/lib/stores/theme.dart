import 'package:flutter/material.dart';

class ThemeStore extends ChangeNotifier {
  static TextTheme text = const TextTheme(
    // Source/Detail Title
    displayLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Dock Time
    headlineSmall: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    // Dock Date
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white70,
    ),
    // Generic Themed Buttons
    labelLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  );

  static ThemeData light = ThemeData(
    // Source View
    primaryColorLight: const Color(0xFFECEFF1),
    // Text / Active Buttons
    primaryColor: const Color(0xFF37474F),
    primaryColorDark: const Color(0xfff2f2f6),

    // Text Styling
    textTheme: text, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black), bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF263238)),
  );

  static ThemeData dark = light.copyWith(
    primaryColor: Colors.black,
    primaryColorDark: const Color(0xff1c1c1e), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
  );

  ThemeData theme = light;

  setNightMode() {
    theme = dark;
    notifyListeners();
  }

  setDayMode() {
    theme = light;
    notifyListeners();
  }
}
