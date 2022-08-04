import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorManager.white,
      filled: true,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17.0),
          borderSide: const BorderSide(color: ColorManager.white)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17.0),
          borderSide: const BorderSide(color: ColorManager.white)),
      contentPadding: const EdgeInsets.all(8.0),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17.0),
          borderSide: const BorderSide(color: ColorManager.white)),
    ),
    textTheme: TextTheme(
        headline1: getBoldStyle(color: ColorManager.white, fontSize: FontSize.s39_5),
        headline2: getMediumStyle(color: ColorManager.black400, fontSize: FontSize.s26),
        headline3: getMediumStyle(color: ColorManager.black900, fontSize: FontSize.s24),
        bodyText1: getLightStyle(color: ColorManager.black400),
        bodyText2: getSemiBoldStyle(color: ColorManager.black900)),
  );
}
