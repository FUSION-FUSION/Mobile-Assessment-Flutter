import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex('#e1e7ec');
  static Color lightBlue = HexColor.fromHex('#46a5ba');
  static Color white = HexColor.fromHex('#ffffff');
  static Color textcolor = HexColor.fromHex('#6e6f71');

  //  new colors

  static Color error = HexColor.fromHex('#e61f34');
  static Color onboardingtitleColor = HexColor.fromHex('#525252');
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    hexString = hexString.replaceAll('#', '');
    if (hexString.length == 6) {
      hexString = 'ff' + hexString;
    }
    return Color(int.parse(hexString, radix: 16));
  }
}
