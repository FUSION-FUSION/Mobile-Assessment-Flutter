import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/get_started_screen.dart';
import 'package:mobile_assessment_flutter/core/screen_size_config.dart';

import '../../core/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => GetStartedScreen())
            ));
  }

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.blackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(108)),
        child: Center(
            child: Image.asset('assets/images/splash_logo.png') 
            
        )),
      
    );
  }
}
