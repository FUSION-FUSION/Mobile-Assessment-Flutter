import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double designWidth = 428;
  static double designHeight = 926;


  static sizeHeightPercent(double size) {
    double sizeHeight = size / designHeight;
    return screenHeight * sizeHeight;
  }


  static sizeWidthPercent(double size) {
    double sizeWidth = size / designWidth;
    return screenWidth * sizeWidth;
  }
}