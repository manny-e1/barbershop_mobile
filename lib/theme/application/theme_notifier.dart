import 'package:barbershop_frontend/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends StateNotifier<ThemeMode> {
  final ThemeRepository _themeRepo;

  ThemeNotifier(this._themeRepo) : super(_themeRepo.getThemeData());

  void getThemeState() {
    state = _themeRepo.getThemeData();
  }

  void updateThemeState(ThemeMode themeMode) {
    _themeRepo.change(themeMode);
    getThemeState();
  }
}
