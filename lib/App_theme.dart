import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();
  static const Color _lightOnPrimaryColor = Colors.black;
  static Color _lightPrimaryVarientColor = Colors.grey.shade200;
  static const Color _color = Colors.black54;
  static const Color _lightPrimaryColor = Colors.white;
  static const Color _lightSecondaryColor = Color.fromRGBO(246, 246, 246, 1);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: _lightPrimaryVarientColor,
    colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        primaryVariant: _lightPrimaryVarientColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor),
    textTheme: _lightTextTheme,
  );
  static final TextTheme _lightTextTheme = TextTheme(
    bodyText1: _lightShopName,
    bodyText2: _lightShopAddress,
    
  );

  static final TextStyle _lightShopName = TextStyle(
      fontSize: 18, color: _lightOnPrimaryColor, fontWeight: FontWeight.bold);
  static final TextStyle _lightShopAddress =
      TextStyle(fontSize: 14, color: _color, fontWeight: FontWeight.w500);

  static const Color _darkBackgroundColor = Color.fromRGBO(48, 48, 48, 1);
  static const Color _darkSurfaceColor = Color.fromRGBO(66, 66, 66, 1);
  static const Color _darkOnPrimaryColor = Colors.white;

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: _darkBackgroundColor,

    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: _darkOnPrimaryColor
      )
    ),
    colorScheme: ColorScheme.dark(
        surface: _darkSurfaceColor, onPrimary: _darkOnPrimaryColor),
    textTheme: _darkTextTheme,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    bodyText1: _darkShopName,
    bodyText2: _darkShomeAddress,
  );
  static final TextStyle _darkShopName =
      _lightShopName.copyWith(color: _darkOnPrimaryColor);
  static final TextStyle _darkShomeAddress =
      _lightShopAddress.copyWith(color: Colors.grey[300]);



      






      
}
