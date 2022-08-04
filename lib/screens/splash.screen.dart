import 'package:flutter/material.dart';

import '../../__lib.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNext();
  }

  void goToNext() async {
    await Future.delayed(const Duration(seconds: 2));
    replaceScreen(const OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c040405,
      body: 
          Container(padding: EdgeInsets.only(bottom: eqH(125)),
            child: Center(
              child: assetsImage(
                AppAssets.logo,
                height: eqH(48),
                width: eqW(74),
              ),
            ),
          ),
          
    );
  }
}
