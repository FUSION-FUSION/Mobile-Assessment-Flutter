import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/providers/verificationProvider.dart';
import 'package:mobile_assessment_flutter/screens/verificiation_screen/widgets/pinNumber.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';

import 'package:provider/provider.dart';

class VerificationPin extends StatefulWidget {
  const VerificationPin({Key? key}) : super(key: key);

  @override
  State<VerificationPin> createState() => _VerificationPinState();
}

class _VerificationPinState extends State<VerificationPin> {
  final pinControllerOne = TextEditingController();
  final pinControllerTwo = TextEditingController();
  final pinControllerThree = TextEditingController();
  final pinControllerFour = TextEditingController();
  final pinControllerFive = TextEditingController();

  final borderDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.circular(17), borderSide: BorderSide.none);
  int pinIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        PinNumber(
          border: borderDecoration,
          controller: pinControllerOne,
        ),
        PinNumber(
          border: borderDecoration,
          controller: pinControllerTwo,
        ),
        PinNumber(
          border: borderDecoration,
          controller: pinControllerThree,
        ),
        PinNumber(
          border: borderDecoration,
          controller: pinControllerFour,
        ),
        PinNumber(
          border: borderDecoration,
          controller: pinControllerFive,
        )
      ]),
    );
  }
}
