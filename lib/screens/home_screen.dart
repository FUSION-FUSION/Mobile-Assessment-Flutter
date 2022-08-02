import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shipify/wigdets/app_styles.dart';

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
            decoration: BoxDecoration(
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
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                //creating the first card for personal login
                Container(
                  height: 100,
                  child: Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Styles.blueColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Personal',
                              style: Styles.headlineStyle1.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Gap(40),
                //creating the second card for Business login.
                Container(
                  height: 100,
                  child: Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Styles.blueColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                                'E-commerce',
                                style: Styles.headlineStyle1.copyWith(
                                  color: Colors.white,
                                ),
                              )),
                        ],
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
