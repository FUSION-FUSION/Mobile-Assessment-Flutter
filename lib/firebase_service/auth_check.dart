import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/home/home_screen.dart';
import 'package:mobile_assessment_flutter/screens/onboarding/splash_screen.dart';

class AuthCheck extends StatelessWidget {
  static const routeName = "AuthCheck";

  const AuthCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stream = FirebaseAuth.instance.authStateChanges();
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return const HomeScreen();
          } else if (snapshot.hasError) {
            return Expanded(
                child: Container(
              color: Colors.red,
            ));
          } else {
            return const SplashScreen();
          }
        },
      ),
    );
  }
}
