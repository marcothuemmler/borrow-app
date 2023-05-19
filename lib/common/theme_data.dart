import "package:flutter/material.dart";

final themeData = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 32,
      ),
      textStyle: const TextStyle(fontSize: 19),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 32,
      ),
      textStyle: const TextStyle(fontSize: 19),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(size: 36),
    unselectedIconTheme: IconThemeData(size: 36),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    foregroundColor: Colors.black,
    centerTitle: false,
  ),
);
