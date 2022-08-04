import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/screens/sigin/welcome_screen.dart';
import 'package:mobile_assessment_flutter/utils/constant.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

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
                'What kind of user are you?',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 26.33,
                    color: kPrimaryBlack,
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Text(
                'We will adapt the app to suit your needs',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 17.55,
                    color: kPrimaryBlack,
                  ),
                ),
              ),
              SizedBox(height: h * 0.05),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 136.78,
                    width: 373.03,
                    decoration: BoxDecoration(
                      color: kPrimaryBlue,
                      borderRadius: BorderRadius.circular(24.87),
                    ),
                    child: Center(
                      child: Text(
                        'Personal',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 39.5,
                            color: kPrimaryWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.96),
              Center(
                child: Container(
                  height: 136.78,
                  width: 373.03,
                  decoration: BoxDecoration(
                    color: kPrimaryBlue,
                    borderRadius: BorderRadius.circular(24.87),
                  ),
                  child: Center(
                    child: Text(
                      'E-commerce',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 39.5,
                          color: kPrimaryWhite,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
