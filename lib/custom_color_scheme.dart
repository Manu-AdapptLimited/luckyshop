import 'package:flutter/material.dart';

extension CustomeColorScheme on ColorScheme {
  Color get success => const Color(0xff28a745);
  Color get info => const Color(0xFF17a2b8);
  Color get warning => const Color(0xFFffc107);
  Color get danger => const Color(0xFFdc3545);
}

extension CustomTextThemeStyle on TextTheme {
  TextStyle shopTheme(context) =>
      Theme.of(context).brightness == Brightness.light
          ? TextStyle(
              fontSize: 18,
              color: Colors.black,
              
            )
          : TextStyle(
              fontSize: 14,
              color: Colors.black54,
             
            );
}
