import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/congratulations_screen.dart';

import '../wigdets/app_styles.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 200,
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
                const Gap(20),
                Text(
                  "Verification!",
                  style: Styles.headlineStyle1,
                ),

                const Gap(15), //this is to have space in between the text.

                //displaying second text
                Text(
                  "We sent you an SMS code on\n number +234810960610.",
                  style: Styles.headlineStyle3,
                ),
              ],
            ),
          ),
          const Gap(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Gap(1),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Gap(1),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Gap(1),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Gap(1),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const Gap(10),
          Column(
            children: [
              Text(
                "Resend Code",
                style: Styles.headlineStyle1,
              ),
              const Gap(15),
              IconButton(
                  icon: const Icon(
                    Icons.arrow_circle_right_rounded,
                    size: 72,
                    color: Colors.blueAccent,
                  ),
                  onPressed: () {
                    Get.to(CongratulationsScreen());
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
