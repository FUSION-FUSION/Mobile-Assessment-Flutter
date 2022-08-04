import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/tracking/map_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash: Image.asset(
          'assets/images/splash_logo.png',
          fit: BoxFit.contain,
        ),
        duration: 20,
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: MapScreen());
  }
}


