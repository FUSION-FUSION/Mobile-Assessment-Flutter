// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mobile_assessment_flutter/util/constants/strings.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/registration/choose_user.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 500,
        splash: Image.asset("$imageDir/splash_logo.png",alignment: Alignment.center,),
        nextScreen: const ChooseUserScreen(),
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.rightToLeftWithFade,
        animationDuration: const Duration(seconds: 2),
        backgroundColor: Colors.black);
  }
}
