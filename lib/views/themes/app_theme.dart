import 'package:flutter/material.dart';

abstract class AppTheme {
  final Color primaryColor;
  final Color primaryTextColor;
  final Color darkBackgroundColor;
  final Color grayTextColor;
  final Color textfieldBackgroundColor;
  final Color borderColor;
  final Color lightButtonColor;
  final Color textDangerColor;
  final Color backgroundColor;
  final Color dropShadowColor1;
  final Color dropShadowColor2;

  final Gradient backgroundGradient;

  AppTheme({
    required this.primaryColor,
    required this.primaryTextColor,
    required this.darkBackgroundColor,
    required this.backgroundGradient,
    required this.grayTextColor,
    required this.textfieldBackgroundColor,
    required this.borderColor,
    required this.lightButtonColor,
    required this.textDangerColor,
    required this.backgroundColor,
    required this.dropShadowColor1,
    required this.dropShadowColor2,
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
