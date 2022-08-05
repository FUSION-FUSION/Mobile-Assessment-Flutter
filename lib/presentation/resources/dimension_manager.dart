import 'package:get/get.dart';

final double screenHeight = Get.context!.height;
final double screenWidth = Get.context!.width;
// final double screenDrawerWidth= Get.context!

double getHeight(double convertHeight) {
  const figmaDesignHeight = 926;
  double newScreenHeight = figmaDesignHeight / convertHeight;
  return screenHeight / newScreenHeight;
}

double getWidth(double convertWidth) {
  const figmaDesignWidth = 428;
  double newScreenWidth = figmaDesignWidth / convertWidth;
  return screenWidth / newScreenWidth;
}
