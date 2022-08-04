import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth Screens/auth_welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

   AnimationController? controller;
   Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(seconds: 3)
    );
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeInOut)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context) => AuthWelcomeScreen()));
      }
    });
    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
        child: Center(
          child: ScaleTransition(
            scale: animation!,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: SizedBox(
                height: 80.0.h,
                child: Image(
                  image: AssetImage("assets/images/splash_logo.png"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
