import 'package:flutter/material.dart';

class ScreenSizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = ScreenSizeConfig.screenHeight;
  return (inputHeight / 926.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = ScreenSizeConfig.screenWidth;
  return (inputWidth / 428.0) * screenWidth;
}

