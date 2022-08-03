import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class VerifyScreen2 extends StatelessWidget {
  const VerifyScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kPrimaryblueGrey,
              kPrimaryWhite,
            ]),
        image: DecorationImage(
          image: AssetImage('assets/images/bg-app-cloud.png'),
          alignment: Alignment.topCenter,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h * 0.16),
            Text(
              'Verification!',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26.33,
                  color: kPrimaryBlack,
                ),
              ),
            ),
            SizedBox(height: h * 0.01),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'We sent you an ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.55,
                        color: kPrimaryBlack,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'SMS ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.55,
                        color: kPrimaryBlue,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'code on ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.55,
                        color: kPrimaryBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'number ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.55,
                        color: kPrimaryBlack,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '+234815599025',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 17.55,
                        color: kPrimaryBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.02),
            Wrap(
              spacing: 15,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 66.66,
                    width: 57,
                    decoration: BoxDecoration(
                      color: Color(0xffFDFEFF),
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
              ],
            ),
            SizedBox(height: h * 0.01),
            Padding(
              padding: const EdgeInsets.only(left: 235),
              child: Text(
                'Code Expiried',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: kPrimaryRed,
                  ),
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            Center(
              child: Text(
                'Resend Code',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: kPrimaryBlack,
                  ),
                ),
              ),
            ),
            SizedBox(height: h * 0.04),
            Center(
              child: Container(
                height: 59,
                width: 59,
                decoration:
                    BoxDecoration(color: kPrimaryBlue, shape: BoxShape.circle),
                child: Center(
                    child: Icon(
                  Icons.arrow_forward_rounded,
                  color: kPrimaryWhite,
                  size: 30,
                )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
