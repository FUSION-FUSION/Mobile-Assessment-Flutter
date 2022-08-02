import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/splash_logo.png',
      nextScreen: Container(),
      backgroundColor: ThemeProvider.current(context).darkBackgroundColor,
      duration: 3000,
      splashTransition: SplashTransition.scaleTransition,
      curve: Curves.linear,
    );
  }
}
