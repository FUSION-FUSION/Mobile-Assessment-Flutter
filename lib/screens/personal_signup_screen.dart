import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/home_screen.dart';
import '../wigdets/app_styles.dart';
import '../wigdets/text_space.dart';
import 'login_screen.dart';

class PersonalSignupScreen extends StatelessWidget {
  const PersonalSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          //To display the text.
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

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text fields to collect details.
                const Gap(100),
                Text(
                  "Welcome!",
                  style: Styles.headlineStyle1,
                ),

                const Gap(15), //this is to have space in between the text.

                //displaying second text
                Text(
                  "Create an account to get started\n with Cargo Express.",
                  style: Styles.headlineStyle3,
                ),
              ],
            ),
          ),

          const Gap(15),
          //this is to have space in between the text and textforms.
          //Textform field.
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 700,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Name',
                  style: Styles.headlineStyle3,
                ),
                const Gap(5),
                const TextSpace(),
                const Gap(25),
                Text(
                  'Your Email',
                  style: Styles.headlineStyle3,
                ),
                const TextSpace(),
                const Gap(25),
                Text(
                  'Phone Number',
                  style: Styles.headlineStyle3,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Text('+234'),
                ),
                const Gap(25),
                Text(
                  'Password',
                  style: Styles.headlineStyle3,
                ),
                const Gap(5),
                const TextSpace(),
                const Gap(25),
                Text(
                  'Confirm Password',
                  style: Styles.headlineStyle3,
                ),
                const Gap(5),
                const TextSpace(),
                const Gap(25),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: Styles.headlineStyle3,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log in',
                            style: Styles.headlineStyle3
                                .copyWith(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            // Background color

                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              'Back',
                              style: Styles.headlineStyle2,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFeeedf2),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //Get.toNamed(() => LoginScreen());
                            },
                            child: Text(
                              'Next',
                              style: Styles.headlineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
