import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class SiginScreen extends StatelessWidget {
  const SiginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.16),
                Text(
                  'Sign In',
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
                  'Sign in to continue cargo express',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 17.55,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.02),
                Text(
                  'Phone number/ Email',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17.55,
                      color: kPrimaryBlack,
                    ),
                  ),
                ),
                Container(
                  width: 390,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color(0xffFDFEFF),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                    border: InputBorder.none,
                  )),
                ),
                SizedBox(height: h * 0.02),
                Text(
                  'Create an account',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: kPrimaryBlue,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.04),
                Container(
                  width: 182.45,
                  height: 71.15,
                  decoration: BoxDecoration(
                    color: kPrimaryWhite,
                    borderRadius: BorderRadius.circular(20.25),
                  ),
                  child: Center(
                    child: Text(
                      'Sign in',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24.3,
                          color: kPrimaryBlack,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
