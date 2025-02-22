import 'package:cep_contacts/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final mainTheme = ThemeData(
    primaryColor: AppColors.fullWhite,
    scaffoldBackgroundColor: AppColors.fullBlack,
    brightness: Brightness.dark,
    fontFamily: "Inter",
    inputDecorationTheme: InputDecorationTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(),
  );
}
