import 'package:flutter/material.dart';

ThemeData lightColorScheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: lightprimary,
      onPrimary: lightonprimary,
      secondary: secondary,
      onSecondary: onsecondary,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textOnboard),
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(white),
      trackColor: WidgetStatePropertyAll(green),
      trackOutlineColor: WidgetStatePropertyAll(green)
    )
);

ThemeData darkColorScheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: darkprimary,
      onPrimary: darkonprimary,
      secondary: secondary,
      onSecondary: onsecondary,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textOnboard,fontSize: 14),
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(white),
      trackColor: WidgetStatePropertyAll(green),
      trackOutlineColor: WidgetStatePropertyAll(green)
    )
  );

const Color info = Color(0xFF379AE6);
const Color warning = Color(0xFFEFB034);
const Color error = Color(0xFFDE3B40);
const Color success = Color(0xFF1DD75B);
const Color white = Color.fromARGB(255, 255, 255, 255);
const Color black = Color.fromARGB(255, 0, 0, 0);
const Color green = Color.fromARGB(255, 109, 251, 166);

const Color lightprimary = Color.fromARGB(255, 242, 239, 237);
const Color darkprimary = Color.fromARGB(255, 10, 16, 38);

const Color lightonprimary = Color.fromARGB(255, 6, 0, 71);
const Color darkonprimary = Color.fromARGB(255, 242, 239, 237);

const Color secondary = Color.fromARGB(255, 128, 109, 251);
const Color onsecondary = Color.fromARGB(255, 167, 166, 165);

const Color textOnboard = Color.fromARGB(255, 122, 123, 122);


