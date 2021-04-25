import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    backgroundColor: Color(0xffffffff),
    primaryColor: Color(0xff050f2e),
    scaffoldBackgroundColor: Color(0xffffffff),
    bottomAppBarTheme: BottomAppBarTheme(
        color: Color(0xffffffff), shape: CircularNotchedRectangle()),
    primaryColorBrightness: Brightness.light,
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.black,
    brightness: Brightness.light,
    highlightColor: Color(0xff7faeff),
    disabledColor: Color(0xffadadad),
    unselectedWidgetColor: Color(0xffadadad),
    hintColor: Color(0xffadadad),
    shadowColor: Color(0xfffbfbfb),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Color(0xff000000)),
    appBarTheme:
        AppBarTheme(elevation: 0, centerTitle: false, color: Color(0xffffffff)),
    primaryIconTheme: IconThemeData(
      color: Color(0xff3780ff),
    ),
    iconTheme: IconThemeData(
      color: Color(0xffbababa),
    ),
    buttonTheme: ButtonThemeData(
        buttonColor: Color(0xff3780ff),
        shape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))));

ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    backgroundColor: Color(0xff050f2e),
    primaryColor: Color(0xffffffff),
    scaffoldBackgroundColor: Color(0xff050f2e),
    bottomAppBarTheme: BottomAppBarTheme(
        color: Color(0xff040c24), shape: CircularNotchedRectangle()),
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.white,
    brightness: Brightness.dark,
    highlightColor: Color(0xff7faeff),
    disabledColor: Color(0xff19213c),
    unselectedWidgetColor: Color(0xffadadad),
    shadowColor: Color(0xfffbfbfb).withOpacity(.3),
    textSelectionTheme: TextSelectionThemeData(cursorColor: Color(0xffffffff)),
    hintColor: Color(0xffadadad),
    appBarTheme:
        AppBarTheme(elevation: 0, centerTitle: false, color: Color(0xff050f2e)),
    primaryIconTheme: IconThemeData(
      color: Color(0xff1055af),
    ),
    buttonTheme: ButtonThemeData(
        buttonColor: Color(0xff3780ff),
        shape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))));
