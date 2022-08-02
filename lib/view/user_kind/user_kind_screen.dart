import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/constants/assets_constant_name.dart';
import 'package:mobile_assessment_flutter/constants/color_pallette.dart';

import '../widgets/custom_button.dart';

class UserKindScreen extends StatelessWidget {
  const UserKindScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: kBackground,
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgroundAppCloud),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'What kind of user are \n you?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'We will adapt the app to suit your \n needs.',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CustomButton(
                  text: 'Personal',
                  height: height * 0.15,
                  width: width * 0.8,
                  fontSize: 44,
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                CustomButton(
                  text: 'E-commerce',
                  height: height * 0.15,
                  width: width * 0.8,
                  fontSize: 44,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
