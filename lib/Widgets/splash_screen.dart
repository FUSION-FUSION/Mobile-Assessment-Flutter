import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 1), upperBound: 1);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);

    animationController.forward();
    animationController.addListener(() {
      setState(() {
        print(animationController);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 130.0, left: 90, right: 90),
          child: Image(
            image: const AssetImage('assets/images/splash_logo.png'),
            height: animationController.value * 90,
          ),
        ),
      ),
    );
  }
}
