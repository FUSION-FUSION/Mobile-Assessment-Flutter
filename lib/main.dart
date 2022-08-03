import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/features/routing/app_router.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/splash_logo.png'),
      nextScreen: MaterialApp.router(
        routerDelegate: goRouter.routerDelegate,
        routeInformationParser: goRouter.routeInformationParser,
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
      ),
      backgroundColor: Colors.black,
      duration: 3000,
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
