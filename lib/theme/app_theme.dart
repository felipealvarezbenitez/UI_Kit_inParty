import 'package:flutter/material.dart';
import 'package:inparty_components/theme/colors_app.dart';

Color primary = const Color.fromARGB(255, 131, 178, 59 );

ColorsApp colorsApp = ColorsApp(theme: "light");

final ThemeData themelight = ThemeData(
    colorScheme:  ColorScheme(
        brightness: Brightness.light,
        primary: colorsApp.primary1,
        onPrimary: Colors.white,
        secondary: Colors.greenAccent,
        onSecondary: Colors.white,
        error: Colors.redAccent,
        onError: Colors.white,
        background: colorsApp.blackBackgroundPrimary,
        onBackground: Colors.white,
        surface: colorsApp.backgroundSecondary,
        onSurface: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          iconTheme:  IconThemeData(
            color: Colors.black
            ),
        ),
        inputDecorationTheme:  InputDecorationTheme(
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 20),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        fillColor: colorsApp.backgroundSecondary,
        filled: true,
        hintStyle: const TextStyle(
          color: Colors.grey,
        )));


final ThemeData themedark = ThemeData(
    colorScheme:  ColorScheme(
        brightness: Brightness.dark,
        primary: colorsApp.primary1,
        onPrimary: Colors.white,
        secondary: Colors.greenAccent,
        onSecondary: Colors.white,
        error: Colors.redAccent,
        onError: Colors.white,
        background: colorsApp.backgroundPrimary,
        onBackground: colorsApp.backgroundSecondary,
        surface: colorsApp.blackBackgroundPrimary,
        onSurface: colorsApp.blackBackgroundSecondary),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          iconTheme:  IconThemeData(
            color: Colors.black
            ),
        ),
        inputDecorationTheme:  InputDecorationTheme(
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 20),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        fillColor: colorsApp.backgroundSecondary,
        filled: true,
        hintStyle: const TextStyle(
          color: Colors.grey,
        )));