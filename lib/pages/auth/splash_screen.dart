import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/pages/auth/intro.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  double _height = 50.0;
  double _width = 20.0;
  @override
  void initState() {
    super.initState();
    setVisibility();
    Timer(
      Duration(milliseconds: 4800),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Intro(),
        ),
      ),
    );
  }

  void setVisibility() {
    Timer(
      Duration(seconds: 1),
      (() {
        setState(() {
          visible = true;
          _height = 64;
          _width = 212;
        });
      }),
    );
  }

  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.black,
          child: AnimatedOpacity(
            opacity: visible ? 1.0 : 0.2,
            duration: Duration(milliseconds: 2000),
            child: Center(
              child: AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 4000),
                height: _height,
                width: _width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/splash_logo.png"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          )),
    );
  }
}
