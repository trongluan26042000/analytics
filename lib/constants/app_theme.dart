import 'package:analytics/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static final CustomTheme _theme = CustomTheme._internal();

  factory CustomTheme() {
    return _theme;
  }

  CustomTheme._internal();

  static const ColorScheme darkScheme = ColorScheme.dark(
      brightness: Brightness.dark,
      primary: darkPurple200,
      onPrimary: Colors.black,
      secondary: darkTeal200,
      onSecondary: Colors.black,
      error: darkError,
      onError: Colors.black,
      background: darkBlack12,
      onBackground: Colors.white,
      surface: darkBlack2c,
      onSurface: Colors.white
  );

  ThemeData buildDarkTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      colorScheme: darkScheme,
      toggleableActiveColor: darkPurple200,
      primaryColor: darkPurple200,
      primaryColorLight: darkPurple200,
      scaffoldBackgroundColor: Colors.black,
      cardColor: darkBlack2c,
      errorColor: darkError,
      buttonTheme: const ButtonThemeData(
        colorScheme: darkScheme,
        textTheme: ButtonTextTheme.normal,
      ),
      primaryIconTheme: _customDarkIconTheme(base.iconTheme),
      textTheme: _buildDarkTextTheme(base.textTheme),
      primaryTextTheme: _buildDarkTextTheme(base.primaryTextTheme),
      iconTheme: _customDarkIconTheme(base.iconTheme),
    );
  }

  TextTheme _buildDarkTextTheme(TextTheme base) {
    return base
        .copyWith(
      caption: base.caption?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: defaultLetterSpacing,
      ),
      button: base.button?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: defaultLetterSpacing,
      ),
    )
        .apply(
      fontFamily: 'Rubik',
      displayColor: Colors.white,
      bodyColor: Colors.white,
    );
  }

  IconThemeData _customDarkIconTheme(IconThemeData original) {
    return original.copyWith(color: Colors.white);
  }

}



