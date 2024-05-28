import 'package:flutter/material.dart';

abstract class ThemeCore {
  InputDecoration inputDecoration();
  TextTheme textTheme();
  BottomSheetThemeData bottomSheetThemeData();
  BottomNavigationBarThemeData bottomNavigationBarThemeData();
  ButtonThemeData buttonThemeData();
  FloatingActionButtonThemeData floatingActionButtonThhemeData();
  IconThemeData iconThemeData();
  AppBarTheme appBarTheme();

  ThemeData get themeData;
}
