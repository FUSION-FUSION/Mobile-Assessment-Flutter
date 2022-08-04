import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/ecommerce_user_screen.dart';
import 'package:mobile_assessment_flutter/Screens/personal_user_screen.dart';
import 'package:mobile_assessment_flutter/Screens/signin_screen.dart';
import 'package:mobile_assessment_flutter/Screens/user_type_screen.dart';
import 'package:mobile_assessment_flutter/Screens/verification_screen.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';

import 'Screens/congratulation_screen.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: kscaffoldColor),
      // initialRoute: UserTypeScreen.id,
      initialRoute: HomeScreen.id,
      routes: {
        UserTypeScreen.id: (context) => const UserTypeScreen(),
        EcommerceUserScreen.id: (context) => const EcommerceUserScreen(),
        PersonalUserScreen.id: (context) => const PersonalUserScreen(),
        VerificationScreen.id: (context) => const VerificationScreen(),
        SignInScreen.id: (context) => const SignInScreen(),
        CongratulationScreen.id: (context) => const CongratulationScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
