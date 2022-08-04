import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/commerce_signup_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_signup_screen.dart';
import 'package:mobile_assessment_flutter/wigdets/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 300,
            width: double.infinity,

            //setting the background image.
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg-app-cloud.png",
                ),
                fit: BoxFit.cover,
              ),
            ),

            //Displaying the text on the main screen
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Gap(100),
                Text(
                  "What kind of user are\n you?",
                  style: Styles.headlineStyle1,
                ),

                const Gap(15), //this is to have space in between the text.

                //displaying second text
                Text(
                  "We will adapt the app to suit your\n needs.",
                  style: Styles.headlineStyle3,
                ),
              ],
            ),
          ),

          const Gap(10), //space between the 2 containers.
          //second container.
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 600,
            width: double.infinity,
            child: Column(
              children: [
                //creating the first card for personal login
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const PersonalSignupScreen());
                    },
                    child: Text(
                      'Personal',
                      style: Styles.headlineStyle1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF2979FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
                const Gap(40),
                //creating the second card for Business login.
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const CommerceSignupScreen());
                    },
                    child: Text(
                      'E-commerce',
                      style: Styles.headlineStyle1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF2979FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
