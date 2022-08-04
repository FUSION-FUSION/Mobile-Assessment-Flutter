import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/congratulations.dart';
import 'package:mobile_assessment_flutter/screens/custom_registration_screen.dart';
import 'package:mobile_assessment_flutter/screens/sign_in.dart';
import 'package:mobile_assessment_flutter/screens/splash_screen.dart';
import 'package:mobile_assessment_flutter/screens/verification_screen.dart';
import 'package:mobile_assessment_flutter/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shipify',
        initialRoute: SplashScreen.id,
        routes: {
          SplashScreen.id: (context) => const SplashScreen(),
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          CongratulationScreen.id: (context) => const CongratulationScreen(),
          SignInScreen.id: (context) => SignInScreen(),
          VerificationScreen.id: (context) => const VerificationScreen(),
        });
  }
}
