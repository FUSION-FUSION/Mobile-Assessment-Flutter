import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeInOut)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.of(context).pushNamed(WelcomeScreen.id);
        }
      });
    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ScaleTransition(
          scale: animation!,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              height: 80.0,
              child: Image(
                image: AssetImage('assets/splash_logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
