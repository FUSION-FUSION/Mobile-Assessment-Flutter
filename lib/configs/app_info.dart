import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../__lib.dart';

class AppInfo {
  static const bool isWeb = kIsWeb;
  static final TextTheme appTextTheme = GoogleFonts.poppinsTextTheme();
  static const MaterialColor appPrimarySwatch = Colors.lightBlue;

  static const String appTitle = 'Shipify';
  static String appLogo = AppAssets.logo;
}
