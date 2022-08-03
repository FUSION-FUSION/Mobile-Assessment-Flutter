import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/app_theme.dart';
import 'package:mobile_assessment_flutter/views/themes/light_theme.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  AppTheme theme = LightTheme();

  void setCurrentTheme(AppTheme theme) {
    this.theme = theme;
    notifyListeners();
  }

  static AppTheme current(BuildContext context, {bool listen = true}) {
    return Provider.of<ThemeProvider>(context, listen: listen).theme;
  }
}