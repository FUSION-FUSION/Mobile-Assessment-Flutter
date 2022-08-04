import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../../__lib.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  var securityCodeController = TextEditingController();
  Timer? countdownTimer;
  Duration myDuration = const Duration(minutes: 1);
  String? timer;

  void onSubmit(String input) {}

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
        timer = 'Code Expired';
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void initState() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
    super.initState();
  }

  @override
  void dispose() {
    countdownTimer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

    return OnboardingScaffold(
      title: 'Verification',
      child: Column(children: [
        verticalSpace(height: 4),
        spanTextButton(textBlocks: [
          const TextSpan(
              text: 'We sent you an ',
              style: TextStyle(
                fontWeight: FontWeight.w100,
              )),
          TextSpan(
            text: 'SMS ',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              color: AppColors.brandBlue,
            ),
          ),
          const TextSpan(
              text: 'code on\n',
              style: TextStyle(
                fontWeight: FontWeight.w100,
              )),
          const TextSpan(
              text: 'number ',
              style: TextStyle(
                fontWeight: FontWeight.w100,
              )),
          TextSpan(
            text: '+2348108960610',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              color: AppColors.brandBlue,
            ),
          ),
        ]),
        verticalSpace(height: 28.44),
        PinCodeTextField(
          onDone: onSubmit,
          controller: securityCodeController,
          autofocus: true,
          hideCharacter: true,
          defaultBorderColor: AppColors.offWhite,
          hasTextBorderColor: AppColors.offWhite,
          pinBoxRadius: 17,
          highlightPinBoxColor: Colors.transparent,
          maxLength: 5,
          pinBoxWidth: eqW(57),
          pinBoxHeight: eqH(66.66),
          wrapAlignment: WrapAlignment.center,
          pinTextStyle: GoogleFonts.poppins(fontSize: 32, wordSpacing: 10),
          pinTextAnimatedSwitcherTransition:
              ProvidedPinBoxTextAnimation.scalingTransition,
          pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 300),
          highlightAnimationBeginColor: Colors.black,
          highlightAnimationEndColor: Colors.white12,
          keyboardType: TextInputType.number,
          pinBoxOuterPadding: pad(horiz: 8),
        ),
        verticalSpace(height: 14.34),
        Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: eqW(16)),
              child:
                  text(timer ?? '$minutes:$seconds', color: AppColors.orange),
            )),
        verticalSpace(height: 22),
        text('Resend Code'),
        verticalSpace(height: 36),
        button(
            padding: pad(both: 19.65),
            shape: const CircleBorder(),
            onPressed: () => pushScreen(const CreateAccountSuccessScreen()),
            child: assetsImage(AppAssets.forwardArrow))
      ]),
    );
  }
}
