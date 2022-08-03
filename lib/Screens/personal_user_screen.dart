import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:mobile_assessment_flutter/Widgets/input_widgets.dart';
import 'package:mobile_assessment_flutter/Widgets/user_topsection.dart';
import 'package:mobile_assessment_flutter/Widgets/welcome_button.dart';

class PersonalUserScreen extends StatelessWidget {
  const PersonalUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
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
            const InputWidget(title: 'Full Name'),
            const InputWidget(title: 'Your E-mail'),
            const InputWidget(title: 'Password'),
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
                  onTap: () {},
                  borderColor: kWhiteColor,
                ),
                WelcomeButton(
                  text: 'Next',
                  bgcolor: kPrimaryColor,
                  textcolor: kWhiteColor,
                  onTap: () {},
                  borderColor: kPrimaryColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
