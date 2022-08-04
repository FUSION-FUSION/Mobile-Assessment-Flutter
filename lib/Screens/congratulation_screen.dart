import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/signin_screen.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:mobile_assessment_flutter/Widgets/background_image.dart';

import '../Util/colors.dart';
import '../Widgets/user_topsection.dart';
import '../Widgets/welcome_button.dart';

class CongratulationScreen extends StatelessWidget {
  static const id = '/congratulations';
  const CongratulationScreen({Key? key}) : super(key: key);

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundImage(),
          Container(
            padding: userPadding(),
            child: Column(
              children: [
                const UserTopSection(
                  header: 'Congratulations!',
                  subHeader: 'Your account has been successfully \ncreated.',
                ),
                const Padding(
                  padding: EdgeInsets.all(45.0),
                  child: Image(
                    image: AssetImage(
                      'assets/images/ic-congratulations.png',
                    ),
                    width: double.infinity,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    WelcomeButton(
                      text: 'Continue',
                      bgcolor: const Color(0XFF46a5ba),
                      textcolor: kWhiteColor,
                      onTap: () {
                        Navigator.popAndPushNamed(context, SignInScreen.id);
                      },
                      borderColor: const Color(0XFF46a5ba),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
