import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/base_authentication_screen.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_button.dart';

class RegistrationSuccessfulScreen extends StatelessWidget {
  static const route =
      BaseAuthenticationScreen.route + "/registration/successful";

  const RegistrationSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAuthenticationScreen(
      title: 'Congratulations!',
      subTitle: 'Your account has been successfully created.',
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset('assets/ic-congratulations.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: UnconstrainedBox(
              child: AppButton(
                text: 'Continue',
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
