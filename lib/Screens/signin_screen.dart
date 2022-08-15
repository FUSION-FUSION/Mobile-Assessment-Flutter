import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/home_screen.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';
import 'package:mobile_assessment_flutter/Util/utils.dart';
import 'package:mobile_assessment_flutter/Widgets/background_image.dart';
import 'package:mobile_assessment_flutter/Widgets/input_widgets.dart';
import 'package:mobile_assessment_flutter/Widgets/user_topsection.dart';
import 'package:mobile_assessment_flutter/Widgets/welcome_button.dart';

class SignInScreen extends StatelessWidget {
  static const id = '/sign-in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundImage(),
          SingleChildScrollView(
            child: Container(
              padding: userPadding(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const UserTopSection(
                    header: 'Sign In',
                    subHeader: 'Sign in to countinue to Cargo Express',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InputWidget(title: 'Phone Number / E-mail'),
                  const InputWidget(title: 'Password'),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Create an Account ',
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
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WelcomeButton(
                        text: 'Sign In',
                        bgcolor: kPrimaryColor,
                        textcolor: kWhiteColor,
                        onTap: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        borderColor: kPrimaryColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
