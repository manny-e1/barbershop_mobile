import 'package:barbershop_frontend/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class ThemeRepository extends ITheme {
  final Box _box;

  ThemeRepository(this._box);

  @override
  void change(ThemeMode themeMode) async {
    String mode = themeMode == ThemeMode.dark
        ? 'dark'
        : themeMode == ThemeMode.light
            ? 'light'
            : 'system';
    await _box.put('themeMode', mode);
  }

  @override
  ThemeMode getThemeData() {
    String? savedMode = _box.get('themeMode');
    ThemeMode themeMode = savedMode == 'dark'
        ? ThemeMode.dark
        : savedMode == 'system'
            ? ThemeMode.system
            : ThemeMode.light;
    return themeMode;
  }
}
