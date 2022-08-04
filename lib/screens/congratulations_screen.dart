import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/official_page.dart';

import '../wigdets/app_styles.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
          ),
          SizedBox(
            height: 100,
            child: Column(
              children: [
                const Gap(10),
                Text("Congratulations!", style: Styles.headlineStyle1),
                const Gap(15),
                Text("Your account has been created\n sucessfully",
                    style: Styles.headlineStyle3),
              ],
            ),
          ),
          const Gap(10),
          Container(
            height: 400,
            child: Column(
              children: const [
                Image(
                  image: AssetImage('assets/images/ic-congratulations.png'),
                ),
              ],
            ),
          ),
          const Gap(10),
          SizedBox(
            height: 60,
            width: 40,
            child: ElevatedButton(
              onPressed: () {
                Get.to(const OfficialPage());
              },
              child: Text(
                'Continue',
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
    );
  }
}
