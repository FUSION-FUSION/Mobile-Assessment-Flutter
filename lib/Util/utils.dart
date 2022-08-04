import 'package:flutter/material.dart';

import 'colors.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = (screenWidth!) / 100;
    blockSizeVertical = (screenHeight!) / 100;
    header = SizeConfig.blockSizeHorizontal! * 6.0;
  }

  static double? header;
}

TextStyle headerStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: SizeConfig.header,
  letterSpacing: 1.0,
);

TextStyle subHeaderStyle = TextStyle(
  color: kGreyColor,
  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
  letterSpacing: 1.3,
);

EdgeInsets userPadding() =>
    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 120.0);
EdgeInsets appPadding() =>
    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);

BoxShadow appBoxShadow() {
  return const BoxShadow(
      color: kBoxShadowColor, blurRadius: 0.3, offset: Offset(0, 0));
}
