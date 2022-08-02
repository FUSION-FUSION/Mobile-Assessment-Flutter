import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/user_kind/user_kind_screen.dart';
import 'package:mobile_assessment_flutter/view/verification/verification_screen.dart';
import 'package:mobile_assessment_flutter/view/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  UserKindScreen.routeName: (context) => UserKindScreen(),
  VerificationScreen.routeName: (context) => VerificationScreen()
};