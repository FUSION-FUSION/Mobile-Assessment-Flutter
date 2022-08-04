import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';

class ShipifyTheme {
  static ThemeData theme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: AppColor.primary,
      secondary: AppColor.toplinear,
      onSecondary: AppColor.toplinear,
      error: AppColor.warning,
      onError: AppColor.warning,
      background: AppColor.toplinear,
      onBackground: AppColor.toplinear,
      surface: AppColor.toplinear,
      onSurface: AppColor.toplinear,
    ),
    scaffoldBackgroundColor: AppColor.toplinear,
    backgroundColor: AppColor.toplinear,
    bottomAppBarColor: AppColor.primary,
    primaryColor: AppColor.primary,
    fontFamily: 'Poppins',
  );
}
