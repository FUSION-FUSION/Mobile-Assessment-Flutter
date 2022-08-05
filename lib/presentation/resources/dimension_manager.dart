import 'package:flutter/material.dart';
import 'package:get/get.dart';

double getScreenHeight = Get.context!.size!.height;
double getScreenWidth = Get.context!.width;

double getHeight(double convertHeight) {
  const figmaDesignHeight = 926;
  double newScreenHeight = figmaDesignHeight / convertHeight;
  return getScreenHeight / newScreenHeight;
}

double getWidth(double convertWidth) {
  const figmaDesignWidth = 428;
  double newScreenWidth = figmaDesignWidth / convertWidth;
  return getScreenWidth / newScreenWidth;
}
