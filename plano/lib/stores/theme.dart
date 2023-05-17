import 'package:flutter/material.dart';

class ThemeStore extends ChangeNotifier {
  static const text = TextTheme(
    // Source/Detail Title
    displayLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Dock Time
    headlineSmall: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    // Dock Date
    titleLarge: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: Colors.white70,
    ),
    // Generic Themed Buttons
    labelLarge: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.bold,
    ),
  );

  static final light = ThemeData(
    // Source View
    primaryColorLight: const Color(0xFFECEFF1),
    // Text / Active Buttons
    primaryColor: const Color(0xFF37474F),
    primaryColorDark: const Color(0xfff2f2f6),

    // Text Styling
    textTheme: text,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF263238)),

    visualDensity: VisualDensity.compact,
  );

  static final dark = light.copyWith(
    primaryColor: Colors.black,
    primaryColorDark: const Color(0xff1c1c1e),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
    visualDensity: VisualDensity.compact,
  );

  var _theme = light;

  ThemeData get theme => _theme;

  setNightMode() {
    _theme = dark;
    notifyListeners();
  }

  setDayMode() {
    _theme = light;
    notifyListeners();
  }
}
