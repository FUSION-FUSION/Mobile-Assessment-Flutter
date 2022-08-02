import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../widgets/widgets.dart';



class AuthProvider extends ChangeNotifier {
  bool isLoggedIn = false;

  SharedPreferences? prefs;

  setLoggedIn(value) {
    isLoggedIn = value;
    notifyListeners();
  }


}
