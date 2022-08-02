import 'package:flutter/material.dart';

abstract class AppTheme {
  final Color primaryColor;
  final Color primaryTextColor;
  final Color darkBackgroundColor;

  const AppTheme({
    required this.primaryColor,
    required this.primaryTextColor,
    required this.darkBackgroundColor,
  });
}
