import 'package:flutter/material.dart';

abstract class ITheme {
  void change(ThemeMode themeMode);
  ThemeMode getThemeData();
}
