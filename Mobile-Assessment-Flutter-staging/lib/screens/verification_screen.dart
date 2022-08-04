import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/background_wrapper.dart';
import 'package:mobile_assessment_flutter/screens/congratulations.dart';
import 'package:mobile_assessment_flutter/widgets/header_text.dart';
import 'package:mobile_assessment_flutter/widgets/otp_input.dart';
import 'package:mobile_assessment_flutter/widgets/verification_rich_text.dart';

class VerificationScreen extends StatefulWidget {
  static const String id = 'verification_screen';
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

final TextEditingController field1 = TextEditingController();
final TextEditingController field2 = TextEditingController();
final TextEditingController field3 = TextEditingController();
final TextEditingController field4 = TextEditingController();
final TextEditingController field5 = TextEditingController();
String errorText = '00:52';

class _VerificationScreenState extends State<VerificationScreen> {
  void changeErrText() {
    Timer(
        const Duration(seconds: 3),
        () => setState(() {
              errorText = 'Code Expired';
            }));
  }

  @override
  void initState() {
    changeErrText();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundWrapper(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top: 110, right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextHeader(
                  header: 'Verification!',
                  norm: false,
                  textWidget: VerificationRichText(),
                ),
                SizedBox(
                  height: size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpInput(field1),
                    OtpInput(field2),
                    OtpInput(field3),
                    OtpInput(field4),
                    OtpInput(field5),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      errorText,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend code',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        CongratulationScreen.id,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff46a5ba),
                      minimumSize: const Size(45, 45),
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
