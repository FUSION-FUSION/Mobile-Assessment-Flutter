import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/screens/authentication/base_authentication_screen.dart';
import 'package:mobile_assessment_flutter/views/themes/app_theme.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_button.dart';
import 'package:mobile_assessment_flutter/views/widgets/app_textfield.dart';

class PersonalRegistrationScreen extends StatelessWidget {
  static const route = BaseAuthenticationScreen.route + "/registration/personal";

  const PersonalRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.current(context);

    return BaseAuthenticationScreen(
      title: 'Welcome!',
      subTitle: 'Create an account to get started with Cargo Express',
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: AppTextField(
              title: 'Full Name',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: AppTextField(
              title: 'Your E-mail',
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: AppTextField(
              title: 'Phone Number',
              keyboardType: TextInputType.phone,
              prefixIcon: UnconstrainedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(17)),
                      color: theme.borderColor,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(17)),
                        color: theme.textfieldBackgroundColor,
                      ),
                      child: Row(
                        children: [
                          theme.text(
                            '+234',
                            color: theme.grayTextColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                          const Padding(padding: EdgeInsets.only(right: 3)),
                          const Icon(Icons.keyboard_arrow_down_rounded),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: AppTextField(
              title: 'Password',
              isPasswordField: true,
            ),
          ),
          const AppTextField(
            title: 'Confirm Password',
            isPasswordField: true,
          ),
          buildSection2(theme),
          buildSection3(context, theme),
        ],
      ),
    );
  }

  Widget buildSection2(AppTheme theme) {
    const fontSize = 18.0;
    const weight = FontWeight.w300;

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          theme.text(
            'Already have an account?',
            color: theme.grayTextColor,
            fontWeight: weight,
            fontSize: fontSize,
          ),
          const Padding(padding: EdgeInsets.only(left: 2)),
          TextButton(
            onPressed: () {},
            child: theme.text(
              'Log In',
              color: theme.primaryColor,
              fontWeight: weight,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSection3(BuildContext context, AppTheme theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppButton(
            text: 'Back',
            backgroundColor: theme.lightButtonColor,
            textColor: theme.grayTextColor,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            onPressed: () => Navigator.of(context).pop(),
          ),
          AppButton(
            text: 'Next',
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
