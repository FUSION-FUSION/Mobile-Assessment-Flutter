import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(
          height: 300,
        ),
        AnimatedBuilder(
          animation: animation,
          builder: (context, _) => Center(
            child: SizedBox(
              width: 212,
              child: Image.asset('assets/Shipify-Assets/splash_logo.png',
                  fit: BoxFit.contain),
            ),
          ),
        )
      ]),
    );
  }
}
