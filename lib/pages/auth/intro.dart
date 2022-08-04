import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/pages/auth/e_commerce_signup.dart';
import 'package:mobile_assessment_flutter/pages/auth/personal_signup.dart';
import 'package:mobile_assessment_flutter/utils/constants.dart';
import 'package:page_transition/page_transition.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 27, vertical: 100),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg-app-cloud.png"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [fadeBackground, background],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text(
                "What kind of user are you?",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50, top: 5),
              child: Text(
                "We will adapt the app to suit your needs",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: PersonalSignup()),
                  );
                },
                child: Text("Personal"),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 36,
                      color: white,
                      fontWeight: FontWeight.w700,
                    ),
                    primary: babyBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: ECommerceSignup()),
                  );
                },
                child: Text("E-commerce"),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 36,
                      color: white,
                      fontWeight: FontWeight.w700,
                    ),
                    primary: babyBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
