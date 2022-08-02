import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/view/verification/otp_form.dart';
import 'package:mobile_assessment_flutter/view/widgets/custom_button.dart';

import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';

class VerificationScreen extends StatelessWidget {
  static String routeName = '/verification_screen';
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: kBackground,
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: const DecorationImage(
                      image: const AssetImage(backgroundAppCloud),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Verification!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'We sent you an  ',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        TextSpan(
                            text: 'SMS ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: kPrimary.withOpacity(0.7))),
                        TextSpan(
                          text: 'code on \nnumber ',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontFamily: 'Poppins',
                          ),
                        ),
                        TextSpan(
                            text: '+2348108960610',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: kPrimary.withOpacity(0.7)))
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                const OtpForm(),
                buildTimer(),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  'Resend Code',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                const CustomButton(
                  height: 50,
                  width: 50,
                  isIcon: false,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Row buildTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      TweenAnimationBuilder(
        tween: Tween<double>(begin: 60.0, end: 0),
        duration: const Duration(seconds: 60),
        builder: (context, double value, child) {
          if (value == 0) {
            return const Text(
              'Code Expired',
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            );
          }
          return Text(
            '0:${value.toInt()}',
            style: const TextStyle(color: Colors.red),
          );
        },
        onEnd: () {},
      ),
      const SizedBox(width: 30)
    ],
  );
}
