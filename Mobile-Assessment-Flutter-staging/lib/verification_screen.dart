import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/background_wrapper.dart';
import 'package:mobile_assessment_flutter/custom_registration_screen.dart';

class VerificationScreen extends StatefulWidget {
  static const String id = 'verification_screen';
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundWrapper(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
              padding: const EdgeInsets.only(top: 60, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextHeader(
                      header: 'Verification!',
                      subheader: 'Sign in to continue to cargo express'),
                  SizedBox(height: size.height * .02),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Resend code',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(45, 45),
                          shape: const CircleBorder()),
                      child: const Icon(Icons.arrow_forward),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}
