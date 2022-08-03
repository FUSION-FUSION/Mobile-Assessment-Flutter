import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

class AppBackground extends StatelessWidget {
  final Widget body;
  const AppBackground({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: backgroundBlue,
            image: const DecorationImage(
                image: AssetImage('assets/Shipify-Assets/bg-app-cloud.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: body,
        ));
  }
}
