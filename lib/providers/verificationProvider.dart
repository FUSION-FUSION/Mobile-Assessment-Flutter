import 'dart:async';

import 'package:flutter/material.dart';

class VerificationProvider with ChangeNotifier {
  String pin = '';
  late Timer timer;
  bool doneCounting = false;

  int seconds = 59;
  bool _isValid = true;

  setIsValid(bool value) {
    _isValid = value;
    notifyListeners();
  }

  get isValid {
    return _isValid;
  }

  void addPin(String text) {
    pin = pin + text;
    notifyListeners();
  }

  void subtractPin() {
    pin = pin.substring(0, pin.length - 1);
    notifyListeners();
  }

  get currTime {
    return seconds;
  }

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds--;
      } else {
        doneCounting = true;
      }
      notifyListeners();
    });
  }

  resetTimer() {
    seconds = 59;
    notifyListeners();
  }
}
