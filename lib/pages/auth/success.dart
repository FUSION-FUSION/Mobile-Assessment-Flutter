import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/pages/app/home.dart';
import 'package:mobile_assessment_flutter/utils/constants.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(left: 25, right: 25, top: 75),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Congratulations!",
                style: TextStyle(
                  fontSize: 27,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 50, top: 7),
                child: Text(
                  "Your account has been successfully created",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 308,
                    width: 310,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/ic-congratulations.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(70, 165, 186, 0.2),
                        spreadRadius: 4,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      )
                    ]),
                    height: 63,
                    width: 194,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Text("Continue"),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                        primary: babyBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
