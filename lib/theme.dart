import 'package:flutter/material.dart';

class ThemeProvider extends  ChangeNotifier {
  ThemeData _selectedTheme;

  ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.green,
  );

  ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
  );

  ThemeProvider({bool isDarkMode}) {
    _selectedTheme = isDarkMode ? dark : light;
  }

  void swapTheme() {
    _selectedTheme = _selectedTheme == dark ? light : dark;
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;
}
