import 'package:flutter/material.dart';

class SColors {
  SColors._();
  static Color primaryColor = const Color(0xFF46A5BA);
  static Color textsColor = const Color.fromARGB(253, 0, 0, 0);
  static Color hintTextColor = const Color.fromARGB(0, 75, 75, 75);
 
  static Color subtextColor = const Color.fromARGB(153, 53, 53, 53);
  static Color variantButtonColor = const Color(0xFFFFFFFF);
  static Color lineargradientColor1 = const Color(0xFFDBE4E9);
  static Color lineargradientColor2 = const Color(0xFFF0F0F3);
  static Color neededColor = const Color.fromARGB(255, 136, 216, 247);

  static Map<int, Color> colorMap = {
    50: const Color.fromRGBO(43, 43, 80, .1),
    100: const Color.fromRGBO(43, 43, 80, .2),
    200: const Color.fromRGBO(43, 43, 80, .3),
    300: const Color.fromRGBO(43, 43, 80, .4),
    400: const Color.fromRGBO(43, 43, 80, .5),
    500: const Color.fromRGBO(43, 43, 80, .6),
    600: const Color.fromRGBO(43, 43, 80, .7),
    700: const Color.fromRGBO(43, 43, 80, .8),
    800: const Color.fromRGBO(43, 43, 80, .9),
    900: const Color.fromRGBO(43, 43, 80, 1),
  };

  static MaterialColor primaryColorswatch = MaterialColor(0xFF27BAF2, colorMap);
}
