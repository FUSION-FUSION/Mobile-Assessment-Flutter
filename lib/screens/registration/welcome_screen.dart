import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/home/home_screen.dart';
import 'package:mobile_assessment_flutter/util/constants/strings.dart';
import 'package:mobile_assessment_flutter/util/navigators.dart';
import 'package:mobile_assessment_flutter/widgets/button_widget.dart';

import '../../util/constants/colors.dart';
import '../../util/constants/styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: backgroundDesign,
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Congratulations!",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        color: textColor1),
                  ),
                  const Text(
                    "Your account has been successfully \ncreated.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: textColor1),
                  ),
                  Image.asset("$imageDir/ic-congratulations.png",alignment: Alignment.center,),
                  const SizedBox(height: 25,),
                  Align(alignment: Alignment.center,
                    child: ButtonWidget(
                        buttoncolor: primaryColor,
                        textcolor: Colors.white,
                        buttonText: "Continue",
                        onPressed: () {changeScreenReplacement(context,  HomeScreen());},
                        buttonHieght: size.height * .08,
                        buttonWidth: size.width * .4,
                        fontsize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
