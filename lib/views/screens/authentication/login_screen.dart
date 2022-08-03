import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/account_type_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/base_authentication_screen.dart';
import 'package:mobile_assessment_flutter/views/screens/dashboard_screen.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_button.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_textfield.dart';

class LoginScreen extends StatelessWidget {
  static const route = BaseAuthenticationScreen.route + "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.current(context);

    return BaseAuthenticationScreen(
      title: 'Sign In',
      subTitle: 'Sign in to continue to Cargo Express',
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: AppTextField(
              title: 'Phone Number / E-mail ',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: AppTextField(
              title: 'Password',
              isPasswordField: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AccountTypeScreen.route),
                  child: theme.text(
                    'Create an Account',
                    color: theme.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: UnconstrainedBox(
              child: AppButton(
                text: 'Sign In',
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                onPressed: () => Navigator.of(context).pushNamed(DashboardScreen.route),
              ),
            ),
          )
        ],
      ),
    );
  }
}
