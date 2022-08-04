import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 10,
      splashTransition: SplashTransition.scaleTransition,
            splash: Image.asset('assets/splash_logo.png',
            width: 10,), nextScreen: HomeScreen(),
    );
  }

}
