import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/registration_screens/choose_purpose_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  delayThenPushReplacementToRegistration() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ChoosePurposeScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
    delayThenPushReplacementToRegistration();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Image.asset('images/splash_logo.png'),
        ),
      ),
    );
  }
}
