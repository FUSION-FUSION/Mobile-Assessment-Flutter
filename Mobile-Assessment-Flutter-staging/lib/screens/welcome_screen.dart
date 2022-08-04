// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/background_wrapper.dart';
import 'package:mobile_assessment_flutter/screens/custom_registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'Welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundWrapper(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 110),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHeader(
                    header: 'What kind of user are you?',
                    subheader: 'We will adapt the app to suit your \nneeds.'),
                SizedBox(height: size.height * .085),
                CustomButton(
                    text: Text(
                      'Personal',
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RegistrationScreen.id,
                      );
                    },
                    size: Size(double.infinity, size.height * .15)),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                    text: Text(
                      'E-commerce',
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RegistrationScreen(isPersonal: false)));
                    },
                    size: Size(double.infinity, size.height * .15)),
              ],
            ),
          )),
    ]);
  }
}

class CustomButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;
  final Size size;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // primary: Colors.white,
          minimumSize: size,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: text);
  }
}
