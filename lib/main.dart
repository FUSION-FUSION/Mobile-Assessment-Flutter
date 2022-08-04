import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/screens/begin.dart';
import 'package:mobile_assessment_flutter/screens/congartulation.dart';
import 'package:mobile_assessment_flutter/screens/e-commerce_screen.dart';
import 'package:mobile_assessment_flutter/screens/home_screen.dart';
import 'package:mobile_assessment_flutter/screens/launch_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_screen.dart';
import 'package:mobile_assessment_flutter/screens/trackSCreen.dart';
import 'package:mobile_assessment_flutter/screens/veri.dart';

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
    return ScreenUtilInit(
      splitScreenMode: false,
      minTextAdapt: true,
      designSize: const Size(428, 926),
      builder: (BuildContext context, child) => MaterialApp(
        theme: ThemeData(
          primaryColor: Colors
              .black, //here it goes try changing this to your preferred colour
        ),
        debugShowCheckedModeBanner: false,
        home: const Begin(),
        routes: {
          '/intro': (context) => const Launch(),
          '/personal': (context) => const Personal(),
          '/verify': (context) => const Verification(),
          '/login': (context) => const Login(),
          '/commerce': (context) => const Commerce(),
          '/congrats': (context) => const Congrats(),
          '/very': (context) => const Veri(),
          '/home': (context) => const Home(),
          '/track': (context) => const Track()
        },
      ),
    );
  }
}
