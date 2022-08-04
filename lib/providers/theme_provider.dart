import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:loop/utilities/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utilities/constants/constants.dart';

class ThemeProvider extends ChangeNotifier {
  final String key = 'theme';
  // var prefs = SharedPreferences.getInstance();
  SharedPreferences? prefs;

  bool darkTheme = false;
  var primaryColor = SColors.primaryColor;
  double fontSize = 14.0.sp;

  ThemeProvider() {
    // darktheme default is set to false
    loadFromPref();
    getPrimaryColor();
  }
  //Switch between light theme and dark theme
  toggleTheme() {
    darkTheme = !darkTheme;
    saveToPrefs();
    notifyListeners();
  }


//Function to change fontSize accross application
  changeFontSize(val) {
    fontSize = val;
    saveFontSizeToPrefs(val);
    notifyListeners();
  }

// Saving preferred fontSize to sharedPreferences
  saveFontSizeToPrefs(val) async {
    await initPrefs();
    prefs?.setDouble('fontSize', val);
  }

//?Fetching saved fontSize
  getFontSizeFromPrefs() async {
    await initPrefs();
    fontSize = prefs?.getDouble('fontSize') ?? 14.0;
  }



//?Function to get saved primary color from SharedPreferjces,
//?If primaryColor is null, default primary color is set to 0XFFFF0090
  getPrimaryColor() async {
    await initPrefs();
    // print(primaryColor);
    return primaryColor;
    // = prefs?.get('primaryColor') ?? const Color(0xFF27BAF2);
  }

//?This here sets the primaryColor to the color Selected from the display Settings
//?and saves the selected color to sharedPreferences,
  setPrimaryColor(val) {
    primaryColor = Color(val);
    saveColorToPrefs(val);
    notifyListeners();
  }

//?Saves color to prefs
  saveColorToPrefs(val) async {
    await initPrefs();
    prefs?.setInt('primaryColor', val);
  }

//?Initializes the sharedPreferences instance;
  initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  //?Loads value of dark theme from sharedPreferences
  loadFromPref() async {
    await initPrefs();
    darkTheme = prefs?.getBool(key) ?? false;
    notifyListeners();
  }

  //?saves value of darktheme to prefs
  saveToPrefs() async {
    await initPrefs();
    prefs?.setBool(key, darkTheme);
  }
}
