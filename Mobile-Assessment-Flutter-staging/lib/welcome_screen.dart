// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/background_wrapper.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(children: [
      const BackGroundWrapper(),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: size.height * .1,
                // ),
                const Text('What kind of user are you?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                const Text(
                  'We will adapt the app to suit your needs.',
                ),
                CustomButton(
                    text: 'text',
                    onPressed: () {},
                    size: Size(double.infinity, 50)),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                    text: 'text2',
                    onPressed: () {},
                    size: Size(double.infinity, 50)),
              ],
            ),
          )),
    ]);
  }
}

class CustomButton extends StatelessWidget {
  final String text;
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
        minimumSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}
