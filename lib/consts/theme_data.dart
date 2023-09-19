import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          //0A1931 //white yellow 0xFFFCF8EC
          isDarkTheme ? Colors.black45 : Colors.white, //whole screen color
      primaryColor: Colors.blue, //dono
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary:
                isDarkTheme ? Colors.grey : Colors.white, //selected icon color
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor: isDarkTheme ? Colors.black : Colors.white, //dono
      canvasColor:
          isDarkTheme ? Colors.black87 : Colors.grey[50], //bottom bar color
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
    );
  }
}
