

import 'dart:async';

import 'package:animate_do/animate_do.dart';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mobile_assessment_flutter/utilities/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/router.gr.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeOut);

    _animation!.addListener(() => setState(() {}));
    _controller!.fling();

    Timer(const Duration(seconds: 6), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      bool? isLoggedIn = prefs.getBool('isLoggedIn');

      isLoggedIn == true
          ? AutoRouter.of(context)
              .pushAndPopUntil(const HomeScreen(), predicate: (route) => false)
          : AutoRouter.of(context)
              .pushAndPopUntil(const Usertype(), predicate: (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: SColors.textsColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: SizedBox(height: 280.h)),
          Center(
            child: ZoomIn(
              duration: const Duration(milliseconds: 1500),
              delay: const Duration(milliseconds: 1500),
              child: JelloIn(
                duration: const Duration(milliseconds: 1200),
                delay: const Duration(milliseconds: 1000),
                child: Container(
                  height: 80.h,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash_logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: SizedBox(height: 280.h)),
        ],
      ),
    );
  }
}
