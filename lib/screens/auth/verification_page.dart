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
  int secondsRemaining = 120;
  bool enableResend = false;

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
          enableResend = true;
        });
      }
    });
    defaultPinTheme = PinTheme(
      width: 52,
      height: 52,
      margin: EdgeInsets.only(left: Dimensions.sizeWidthPercent(27)),
      textStyle: TextStyle(
          fontSize: Dimensions.sizeHeightPercent(24),
          color: AppColors.primaryBlack,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: Dimensions.sizeWidthPercent(1), color: Colors.grey[300]!),
        ),
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
                left: Dimensions.sizeHeightPercent(26.33),
                right: Dimensions.sizeHeightPercent(26.33),
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
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " SMS",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryBlue,
                          ),
                        ),
                        TextSpan(
                          text: " code on number",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text: " +2348108960610",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryBlue,
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(22.44)),
                Pinput(
                  defaultPinTheme: defaultPinTheme,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
