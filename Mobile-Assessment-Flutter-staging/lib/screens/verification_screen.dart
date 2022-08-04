import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/background_wrapper.dart';
import 'package:mobile_assessment_flutter/screens/congratulations.dart';
import 'package:mobile_assessment_flutter/screens/custom_registration_screen.dart';

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
        const Duration(seconds: 2),
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
                  TextHeader(
                    header: 'Verification!',
                    norm: false,
                    textWidget: RichText(
                      maxLines: 2,
                      text: const TextSpan(
                        text: 'We sent you an',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 16, letterSpacing: 2),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' SMS',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontSize: 16,
                                letterSpacing: 2),
                          ),
                          TextSpan(
                            text: ' code on',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                letterSpacing: 1.5),
                          ),
                          TextSpan(
                            text: ' \nnumber',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                letterSpacing: 2),
                          ),
                          TextSpan(
                            text: ' +2348108960610',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontSize: 16,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * .03),
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
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 10)
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
                            fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CongratulationScreen.id);
                      },
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

//otp settings
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  const OtpInput(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      height: 55,
      width: 50,
      child: TextField(
        autofocus: false,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
