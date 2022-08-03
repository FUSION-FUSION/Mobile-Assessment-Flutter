import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:mobile_assessment_flutter/widgets/gradient_background.dart';
import 'package:pinput/pinput.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  late PinTheme defaultPinTheme;
  late Timer timer;
  int secondsRemaining = 60;
  bool codeExpired = false;
  late PinTheme followingPinTheme;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          codeExpired = true;
        });
      }
    });
    defaultPinTheme = PinTheme(
      width: 57,
      height: 66.6,
      textStyle: TextStyle(
          fontSize: Dimensions.sizeHeightPercent(24),
          color: AppColors.primaryBlack,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.sizeHeightPercent(17)),
        color: AppColors.primaryWhite,
        border: Border.all(
            width: Dimensions.sizeWidthPercent(1), color: Colors.grey[300]!),
      ),
    );
    followingPinTheme = defaultPinTheme.copyWith(
      margin: EdgeInsets.only(
        right: Dimensions.sizeHeightPercent(15),
      ),
    );
  }

  @override
  dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: Dimensions.sizeHeightPercent(26),
                right: Dimensions.sizeHeightPercent(26),
                top: Dimensions.sizeHeightPercent(130)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: 'Verification!',
                  size: 26.33,
                  bold: true,
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(4)),
                RichText(
                  text: TextSpan(
                      text: "We sent you an",
                      style: GoogleFonts.poppins(
                        fontSize: Dimensions.sizeHeightPercent(16),
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " SMS",
                          style: GoogleFonts.poppins(
                            fontSize: Dimensions.sizeHeightPercent(16),
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryBlue,
                          ),
                        ),
                        TextSpan(
                          text: " code on number",
                          style: GoogleFonts.poppins(
                            fontSize: Dimensions.sizeHeightPercent(16),
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text: " +2348108960610",
                          style: GoogleFonts.poppins(
                            fontSize: Dimensions.sizeHeightPercent(16),
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryBlue,
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(22.44)),
                Pinput(
                  defaultPinTheme: defaultPinTheme,
                  followingPinTheme: followingPinTheme,
                  keyboardType: TextInputType.number,
                  length: 5,
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(14.34)),
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.sizeWidthPercent(
                          codeExpired ? 250 : 280.0)),
                  child: AppText(
                    text: codeExpired
                        ? 'Code Expired'
                        : durationString(secondsRemaining),
                    size: 16,
                    color: AppColors.timeText,
                  ),
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(22)),
                Center(
                  child: AppText(
                    text: 'Resend Code',
                    size: 18,
                    bold: true,
                    color: AppColors.primaryBlack,
                  ),
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(30)),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (!codeExpired) {
                        setState(() {
                          secondsRemaining = 0;
                          codeExpired = true;
                        });
                      }
                    },
                    child: Container(
                      height: Dimensions.sizeHeightPercent(59),
                      width: Dimensions.sizeWidthPercent(59),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryBlue,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.primaryWhite,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String durationString(int duration) {
  var minutes = duration ~/ 60;
  var seconds = duration % 60;

  return '$minutes:${seconds < 10 ? '0$seconds' : seconds}';
}
