import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  Color color,
  FontWeight fontWeight,
) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

//  regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontFamily.poppins, color, FontWeightManager.regular);
}

// light style

TextStyle getLightStyle(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontFamily.poppins, color, FontWeightManager.light);
}

// bold text style

TextStyle getBoldStyle({double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontFamily.poppins, color, FontWeightManager.bold);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontFamily.poppins, color, FontWeightManager.semiBold);
}

//medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontFamily.poppins, color, FontWeightManager.medium);
}
