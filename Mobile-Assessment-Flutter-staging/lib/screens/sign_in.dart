import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/widgets/background_wrapper.dart';
import 'package:mobile_assessment_flutter/screens/welcome_screen.dart';
import 'package:mobile_assessment_flutter/widgets/custom_button.dart';
import 'package:mobile_assessment_flutter/widgets/header_text.dart';
import 'package:mobile_assessment_flutter/widgets/text_and_containers.dart';

class SignInScreen extends StatelessWidget {
  static const String id = 'SignIn_screen';
  SignInScreen({Key? key}) : super(key: key);

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        const BackGroundWrapper(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top: 110, right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextHeader(
                  header: 'Sign In',
                  subheader: 'Sign in to continue to Cargo Express',
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                TextAndContainers(
                  text: 'Phone Number / E-mail',
                  controller: controller1,
                ),
                TextAndContainers(
                  text: 'Password',
                  controller: controller2,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        WelcomeScreen.id,
                      );
                    },
                    child: const Text(
                      'Create an Account',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Center(
                  child: CustomButton(
                    text: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {},
                    size: Size(
                      size.width * .5,
                      size.height * .08,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
