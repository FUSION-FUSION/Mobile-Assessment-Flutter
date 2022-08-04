import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/screens/Home/home_page.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

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
              'Congratulations!',
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
            Text(
              'Your account has been successfully created.',
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: kPrimaryBlack,
                ),
              ),
            ),
            SizedBox(height: h * 0.04),
            Image.asset('assets/images/ic-congratulations.png'),
            SizedBox(height: h * 0.05),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  height: 63,
                  width: 194.01,
                  decoration: BoxDecoration(
                    color: kPrimaryBlue,
                    borderRadius: BorderRadius.circular(20.25),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24.3,
                          color: kPrimaryWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
