import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/base_authentication_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/ecommerce_registration_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/personal_registration_screen.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_button.dart';

class AccountTypeScreen extends StatelessWidget {
  static const route = BaseAuthenticationScreen.route + "/account_type";

  const AccountTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAuthenticationScreen(
      title: 'What kind of user are you?',
      subTitle: 'We will adapt the app to suit your needs.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AppButton(
              text: 'Personal',
              fontSize: 38,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              onPressed: () => Navigator.of(context)
                  .pushNamed(PersonalRegistrationScreen.route),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AppButton(
              text: 'E-commerce',
              fontSize: 38,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              onPressed: () => Navigator.of(context)
                  .pushNamed(EcommerceRegistrationScreen.route),
            ),
          ),
        ],
      ),
    );
  }
}
