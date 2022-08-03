import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/widgets.dart';



class AuthProvider extends ChangeNotifier {
  bool isLoggedIn = false;

  SharedPreferences? prefs;

  setLoggedIn(value) {
    isLoggedIn = value;
    notifyListeners();
  }
 //Function to show country pick dialog
  showCustomizedDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return CountrycodePicker(
            onValueSelected: (Country country) {
              _selectedCountry = country;
              notifyListeners();
            },
          );
        });
  }

  Country _selectedCountry = CountryPickerUtils.getCountryByIsoCode('NG');
  Country get selectedCountry => _selectedCountry;


}
