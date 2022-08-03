import 'package:flutter/material.dart';

abstract class AppTheme {
  final Color primaryColor;
  final Color primaryTextColor;
  final Color darkBackgroundColor;
  final Color grayTextColor;

  final Gradient backgroundGradient;

  AppTheme({
    required this.primaryColor,
    required this.primaryTextColor,
    required this.darkBackgroundColor,
    required this.backgroundGradient,
    required this.grayTextColor,
  });

  Text text(
      String text, {
        required Color color,
        required FontWeight fontWeight,
        required double fontSize,
        TextAlign? textAlign,
      }) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
