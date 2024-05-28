import 'package:flutter/material.dart';
import 'package:ecommerce_project_chienbm/core/src_core.dart';

class DarkTheme implements ThemeCore {
  static DarkTheme? _instance;

  factory DarkTheme() => _instance ??= DarkTheme._();

  DarkTheme._();

  @override
  ThemeData get themeData {
    return ThemeData.dark(useMaterial3: true).copyWith(
      appBarTheme: appBarTheme(),
      bottomNavigationBarTheme: bottomNavigationBarThemeData(),
      bottomSheetTheme: bottomSheetThemeData(),
    );
  }

  @override
  AppBarTheme appBarTheme() {
    // TODO: implement appBarTheme
    throw UnimplementedError();
  }

  @override
  BottomNavigationBarThemeData bottomNavigationBarThemeData() {
    // TODO: implement bottomNavigationBarThemeData
    throw UnimplementedError();
  }

  @override
  BottomSheetThemeData bottomSheetThemeData() {
    // TODO: implement bottomSheetThemeData
    throw UnimplementedError();
  }

  @override
  ButtonThemeData buttonThemeData() {
    // TODO: implement buttonThemeData
    throw UnimplementedError();
  }

  @override
  FloatingActionButtonThemeData floatingActionButtonThhemeData() {
    // TODO: implement floatingActionButtonThhemeData
    throw UnimplementedError();
  }

  @override
  IconThemeData iconThemeData() {
    // TODO: implement iconThemeData
    throw UnimplementedError();
  }

  @override
  InputDecoration inputDecoration() {
    // TODO: implement inputDecoration
    throw UnimplementedError();
  }

  @override
  TextTheme textTheme() {
    // TODO: implement textTheme
    throw UnimplementedError();
  }
}
