import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'package:mobile_assessment_flutter/screens/home_screen/home_screen.dart';

class Registration3 extends StatelessWidget {
  const Registration3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kIntroScreensBGColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: kIntroScreensBGColor,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg-app-cloud.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // "Congratulations!" text
            const Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),

            // "Your account has been..." text
            const Padding(
              padding: EdgeInsets.only(right: 50, bottom: 30),
              child: Text(
                'Your account has been successfully created.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87,
                ),
              ),
            ),

            // image
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: Image.asset(
                'images/ic-congratulations.png',
              ),
            ),

            // "Continue" button
            Align(
              alignment: Alignment.center,
              child: MaterialButton(
                minWidth: 180,
                height: 55,
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // go to home screen
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                color: kCyanishColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
