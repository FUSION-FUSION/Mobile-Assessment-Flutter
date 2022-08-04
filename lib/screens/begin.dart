import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/screens/launch_screen.dart';

class Begin extends StatefulWidget {
  const Begin({Key? key}) : super(key: key);

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _navigateToLaunch();
  // }

  // _navigateToLaunch() async {
  //   await Future.delayed(Duration(milliseconds: 2000), () {});
  //   Navigator.pushReplacementNamed(context, '/intro');
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splash: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 108.w),
          child: Image.asset('assets/images/splash_logo.png'),
        ),
      ),
      duration: 50,
      splashTransition: SplashTransition.scaleTransition,
      nextScreen: Launch(),
    );
  }
}
