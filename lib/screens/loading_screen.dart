import 'package:flutter/material.dart';
import 'intro_screens/choose_purpose_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  delayThenPushReplacementToRegistration() async {
    await Future.delayed(const Duration(seconds: 3));
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
      backgroundColor: Colors.black!,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Image.asset('images/splash_logo.png'),
        ),
      ),
    );
  }
}
