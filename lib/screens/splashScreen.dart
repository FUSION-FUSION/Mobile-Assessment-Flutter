import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/user_type_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context)
            .pushNamedAndRemoveUntil(UserType.routeName, (route) => false));
    return Scaffold(
        backgroundColor: Colors.black,
        body: AnimatedBuilder(
          animation: animationController,
          builder: (context, _) => Stack(
            children: [
              Positioned(
                top: 300,
                left: ((animationController.value *
                            MediaQuery.of(context).size.width /
                            2) -
                        212 / 2) -
                    (212 - animationController.value * 212),
                child: SizedBox(
                  width: 212,
                  child: Image.asset('assets/Shipify-Assets/splash_logo.png',
                      fit: BoxFit.fitWidth),
                ),
              ),
            ],
          ),
        ));
  }
}
