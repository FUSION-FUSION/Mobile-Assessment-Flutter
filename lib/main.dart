import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/screens/launch_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_screen.dart';

import 'screens/login_screen.dart';
import 'screens/verification_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Launch(),
      routes: {
        '/intro': (context) => const Launch(),
        '/personal': (context) => const Personal(),
        '/verify': (context) => const Verification(),
        '/login': (context) => const Login()
      },
    );
  }
}

// initialRoute: '/main',
//             routes: {
//               'intro': (context) => const LoadScreen(),
//               '/login': (context) => const SignIn(),
//               '/signup': (context) => const SignUp(),
//               '/home': (context) => const MyHomePage(),
//               '/user': (context) => const Userdd(),
//               '/menu': (context) => const Menu(),
//               '/personal': (context) => const Personal(),
//               '/business': (context) => const Buisness(),
//               '/main': (context) => const MainPage(),
//               '/account': (context) => const Account(),
//               '/verify': (context) => const VerifyEmail(),
//               '/reset': (context) => const PasswordReset(),
//             },
