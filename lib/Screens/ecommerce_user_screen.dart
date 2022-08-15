import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/verification_screen.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:mobile_assessment_flutter/Widgets/background_image.dart';
import 'package:mobile_assessment_flutter/Widgets/input_widgets.dart';
import 'package:mobile_assessment_flutter/Widgets/user_topsection.dart';
import 'package:mobile_assessment_flutter/Widgets/welcome_button.dart';

import '../Widgets/number_input.dart';

class EcommerceUserScreen extends StatelessWidget {
  static const id = '/ecommerce';
  const EcommerceUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundImage(),
          Container(
            padding: userPadding(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const UserTopSection(
                  header: 'Welcome!',
                  subHeader:
                      'Create an account to get started \nwith Cargo Express',
                ),
                const Spacer(
                  flex: 1,
                ),
                const InputWidget(title: 'Business Name'),
                const InputWidget(title: 'Official E-mail'),
                const NumberInput(title: 'Contact Number'),
                const InputWidget(title: 'Password'),
                const InputWidget(title: 'Confirm Password'),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              color: kGreyColor,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              letterSpacing: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: 'Log In ',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WelcomeButton(
                      text: 'Back',
                      bgcolor: klightButtonColor,
                      textcolor: Colors.black87,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      borderColor: kWhiteColor,
                    ),
                    WelcomeButton(
                      text: 'Next',
                      bgcolor: kPrimaryColor,
                      textcolor: kWhiteColor,
                      onTap: () {
                        Navigator.pushNamed(context, VerificationScreen.id);
                      },
                      borderColor: kPrimaryColor,
                    )
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
