import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/user_type_screen.dart';

import 'package:mobile_assessment_flutter/core/size_config.dart';

import '../../core/constants.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => UserTypeScreen())));
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
            child: Image.asset(
              'images/splash_logo.png',
            ),
          )),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Image.asset('images/splash_logo.png'),
//           ),
          
//         ],
        
//       ),
//       // centered: true,
//       backgroundColor: Colors.black,
//       nextScreen:SplashScreen(),
//       splashIconSize: 500,
//       // duration:10000,
//       // splashTransition: SplashTransition.fadeTransition,
//       // pageTransitionType:PageTransitionType.rightToLeftPop,
//       curve: Curves.fastOutSlowIn,
//       animationDuration: const Duration(seconds: 10),
//       );
//   }
// }
