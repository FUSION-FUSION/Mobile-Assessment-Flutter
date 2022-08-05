//  getTextstyle

import 'package:flutter/cupertino.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';

TextStyle _getTextStye({
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
  required String fontfamily,
}) {
  return TextStyle(
      fontFamily: fontfamily,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight);
}

//  regular textstyle
TextStyle getRegularTextStyle({
  required Color color,
  required double fontSize,
}) {
  return _getTextStye(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeightManager.regular,
    fontfamily: FontConstant.fontFamily,
  );
}

//  light
TextStyle getLightTextStyle({
  required Color color,
  required double fontSize,
}) {
  return _getTextStye(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeightManager.light,
    fontfamily: FontConstant.fontFamily,
  );
}

//  medium
TextStyle getMediumTextStyle({
  required Color color,
  required double fontSize,
}) {
  return _getTextStye(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeightManager.medium,
    fontfamily: FontConstant.fontFamily,
  );
}

// bold
TextStyle getBoldTextStyle({
  required Color color,
  required double fontSize,
}) {
  return _getTextStye(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
    fontfamily: FontConstant.fontFamily,
  );
}

//  semibold
TextStyle getSemiBoldTextStyle({
  required Color color,
  required double fontSize,
}) {
  return _getTextStye(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeightManager.semiBold,
    fontfamily: FontConstant.fontFamily,
  );
}
