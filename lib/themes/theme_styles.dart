import 'package:flutter/material.dart';
import 'theme_colors.dart';

class ThemeStyles{
static TextStyle primaryText = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w500,
  color: ThemeColors.black,
);

static TextStyle secondaryText = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w400,
  color: ThemeColors.black,
);

static TextStyle buttonText = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w600,
  color: ThemeColors.white,
);

static TextStyle details = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: ThemeColors.black,
);}