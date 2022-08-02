import 'package:flutter/material.dart';

abstract class AppTheme {
  final Color primaryColor;
  final Color primaryTextColor;

  const AppTheme({
    required this.primaryColor,
    required this.primaryTextColor,
  });
}
