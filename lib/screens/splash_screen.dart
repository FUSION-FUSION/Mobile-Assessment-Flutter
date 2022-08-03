import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/utils/constants/colors.dart';
import 'package:mobile_assessment_flutter/utils/constants/re_usable.dart';
import 'package:mobile_assessment_flutter/utils/size_layout.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  Widget build(BuildContext context) {
    SizeLayout.init(context);
    return Scaffold(
      backgroundColor: Palette.kBlackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getScreenWidth(108)),
        child: Center(
          child: Image.asset('${imagePath}splash_logo.png'),
        ),
      ),
    );
  }
}
