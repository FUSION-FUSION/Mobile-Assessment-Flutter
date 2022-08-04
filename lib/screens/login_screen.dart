import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/home_screen.dart';
import 'package:mobile_assessment_flutter/screens/official_page.dart';
import '../wigdets/app_styles.dart';
import '../wigdets/text_space.dart';
import 'commerce_signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 900,
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
                  "Sign in",
                  style: Styles.headlineStyle1,
                ),

                const Gap(15),
                //this is to have space in between the text.

                //displaying second text
                Text(
                  "Sign in to continue Cargo express.",
                  style: Styles.headlineStyle3,
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
                        'Phone Number/ Email',
                        style: Styles.headlineStyle3,
                      ),
                      const Gap(5),
                      const TextSpace(),
                      const Gap(25),
                      Text(
                        'Password',
                        style: Styles.headlineStyle3,
                      ),
                      const TextSpace(),
                      const Gap(25),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Get.to(HomeScreen());
                            },
                            child: Text(
                              'Create an Account',
                              style: Styles.headlineStyle3
                                  .copyWith(color: Colors.blue),
                            ),
                          ),
                          const Gap(25),
                          SizedBox(
                            height: 100,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(const OfficialPage());
                              },
                              child: Text(
                                'Sign In',
                                style: Styles.headlineStyle1.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF2979FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(18), // <-- Radius
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
