import 'package:barbershop_frontend/core/providers.dart';
import 'package:barbershop_frontend/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeRepoProvider = Provider((ref) => ThemeRepository(ref.read(hiveProvider('darkModeTutorial'))));

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>(
    (ref) => ThemeNotifier(ref.read(themeRepoProvider)));