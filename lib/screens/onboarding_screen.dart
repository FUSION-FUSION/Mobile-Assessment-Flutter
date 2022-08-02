import 'package:flutter/material.dart';

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
                Color.fromARGB(255, 205, 216, 222),
                Colors.white,
              ]),
          image: DecorationImage(
            image: AssetImage('assets/images/bg-app-cloud.png'),
            alignment: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.10),
              Text('What kind of user are you?'),
              SizedBox(height: h * 0.02),
              Text('We will adapt the app to suit your needs'),
              SizedBox(height: h * 0.05),
              Center(
                child: Container(
                  height: h * 0.10,
                  width: w * 0.50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 112, 199, 239),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text('Personal'),
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
