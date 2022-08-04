import 'package:flutter/material.dart';
import 'package:get/get.dart';

double get pixelRatio => MediaQuery.of(Get.context!).devicePixelRatio;

double get screenWidth {
  return MediaQuery.of(Get.context!).size.width;
}

double get screenHeight {
  return MediaQuery.of(Get.context!).size.height;
}

bool get isWide => screenHeight < screenWidth;

//Calculate equivalent of size in design to size in screen height
double eqH(double inDesign) => inDesign / 926 * screenHeight;
// double eqH(double inDesign) => inDesign / 768 * screenHeight;

//Calculate equivalent of size in design to size in screen Width
double eqW(double inDesign) => inDesign / 428 * screenWidth;

EdgeInsets pad({
  double both= 0,
  double? horiz,
  double? vert,
}) =>
    EdgeInsets.symmetric(
      horizontal: eqW(horiz ?? both),
      vertical: eqH(vert ?? both),
    );
