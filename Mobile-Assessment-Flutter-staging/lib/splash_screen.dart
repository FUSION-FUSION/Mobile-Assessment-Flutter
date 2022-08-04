import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/congratulations.dart';
import 'package:mobile_assessment_flutter/custom_registration_screen.dart';
import 'package:mobile_assessment_flutter/sign_in.dart';
import 'package:mobile_assessment_flutter/verification_screen.dart';
import 'package:mobile_assessment_flutter/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('assets/splash_logo.png'),
        nextScreen: const WelcomeScreen());
  }
}
