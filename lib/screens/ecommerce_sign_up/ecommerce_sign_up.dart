import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:mobile_assessment_flutter/screens/ecommerce_sign_up/widget/signUpForm.dart';
import 'package:mobile_assessment_flutter/screens/login/login.dart';
import 'package:mobile_assessment_flutter/screens/verificiation_screen/verification_screen.dart';

import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../widget/appBackground.dart';
import '../../widget/appButton.dart';

class EcommerceSignUp extends StatelessWidget {
  static const routeName = '/ecommerce-signup';
  EcommerceSignUp({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AppBackground(
        body: Padding(
      padding: const EdgeInsets.all(26.33),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 130,
            ),
            SizedBox(
              width: 320,
              child: Text('Welcome!',
                  style: Theme.of(context).textTheme.headline1),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: 325,
              child: Text('Create an account to get started with Cargo Express',
                  style: Theme.of(context).textTheme.headline2),
            ),
            const SizedBox(
              height: 22.44,
            ),
            SignUpForm(formKey: _formKey),
            const SizedBox(
              height: 27,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Already have an account? ',
                    style: Theme.of(context).textTheme.subtitle2),
                TextSpan(
                    text: 'Login',
                    recognizer: TapGestureRecognizer()
                      ..onTap =
                          () => Navigator.pushNamed(context, Login.routeName),
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 16,
                        color: primaryBlue,
                        fontWeight: FontWeight.w600))
              ])),
            ),
            const SizedBox(
              height: 37,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButton(
                        child: Text(
                          'Back',
                          style: Theme.of(context).textTheme.button!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.3,
                              color: titleTextColor),
                        ),
                        color: normalWhite,
                        radius: 20.25,
                        width: 141.77,
                        height: 63.46,
                        onTap: () {
                          Navigator.pop(context);
                        }),
                    AppButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamedAndRemoveUntil(context,
                                Verification.routeName, (route) => false);
                          }
                        },
                        child: Text(
                          'Next',
                          style: Theme.of(context).textTheme.button!.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.3,
                              color: normalWhite),
                        ),
                        color: primaryBlue,
                        radius: 20.25,
                        width: 141.77,
                        height: 63.46)
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
