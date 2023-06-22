import "package:flutter/material.dart";
import "package:flutter/services.dart";

final ThemeData themeData = ThemeData(
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
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    titleTextStyle: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    elevation: 0.4,
    foregroundColor: Colors.black,
    centerTitle: false,
  ),
  listTileTheme: const ListTileThemeData(
    minLeadingWidth: 8,
    contentPadding: EdgeInsets.symmetric(horizontal: 5),
  ),
  popupMenuTheme: const PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  ),
);
