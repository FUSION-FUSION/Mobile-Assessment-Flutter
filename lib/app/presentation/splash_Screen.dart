import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/get_started_screen.dart';
import 'package:mobile_assessment_flutter/core/screen_size_config.dart';

import '../../core/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut);

    _animationController.forward();

    _animation.addListener(() {
      setState(() {});
    });

    Timer(
        Duration(seconds: 7),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => GetStartedScreen())));
  }


  @override
  void dispose() {
    _animationController.dispose();
    _animation.removeListener(() { });
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.blackColor,
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(108)),
          child: Center(
            child: Container(
              height: _animation.value * 200,
              
              child: Image.asset('assets/images/splash_logo.png')),
          )),
    );
  }
}
