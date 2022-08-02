import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/backgroung_wrapper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [BackGroundWrapper()]);
  }
}
