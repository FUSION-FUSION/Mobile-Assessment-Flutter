import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(const Duration(seconds: 3), () {
      controller.reverse();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      body: ScaleTransition(
        scale: animation,
        child: Padding(
          padding: EdgeInsets.only(
              top: Dimensions.sizeHeightPercent(338),
              left: Dimensions.sizeWidthPercent(108),
              right: Dimensions.sizeWidthPercent(108)),
          child: Image.asset(
            "assets/images/splash_logo.png",
            width: Dimensions.sizeWidthPercent(212),
            height: Dimensions.sizeHeightPercent(56),
          ),
        ),
      ),
    );
  }
}
