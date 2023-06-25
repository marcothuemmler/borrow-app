import "package:flutter/material.dart";
import "package:flutter/services.dart";

final ThemeData themeData = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      textStyle: const TextStyle(fontSize: 16),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 20,
      ),
      textStyle: const TextStyle(fontSize: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(size: 30),
    unselectedIconTheme: IconThemeData(size: 30),
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  primarySwatch: Colors.blue,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    elevation: 0.4,
    foregroundColor: Colors.black,
    centerTitle: false,
  ),
  listTileTheme: ListTileThemeData(
    minLeadingWidth: 8,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    contentPadding: const EdgeInsets.symmetric(horizontal: 5),
  ),
  popupMenuTheme: const PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  ),
);
