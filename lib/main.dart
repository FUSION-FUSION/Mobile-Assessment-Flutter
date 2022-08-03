import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/ecommerce_screen.dart';
import 'package:mobile_assessment_flutter/screens/get_started_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_screen.dart';
import 'package:mobile_assessment_flutter/screens/splash_screen.dart';
import 'package:mobile_assessment_flutter/screens/verification_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/splashScreen',
     getPages: [
       GetPage(name: '/splashScreen', page: ()=> SplashScreen()),
       GetPage(name: '/getStartedScreen', page: ()=> const GetStartedScreen()),
       GetPage(name: '/personalScreen', page: ()=> const PersonalScreen()),
       GetPage(name: '/eCommerceScreen', page: ()=> const EcommerceScreen()),
       GetPage(name: '/verificationScreen', page: ()=> const VerificationScreen()),
     ],
    );
  }
}
