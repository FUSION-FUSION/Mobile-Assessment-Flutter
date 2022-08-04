import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/homeScreen.dart';

import 'package:mobile_assessment_flutter/screens/login/widget/loginForm.dart';
import 'package:mobile_assessment_flutter/screens/user_type_screen.dart';
import 'package:mobile_assessment_flutter/screens/verificiation_screen/verification_screen.dart';

import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../providers/verificationProvider.dart';
import '../../widget/appBackground.dart';
import '../../widget/appButton.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  static const routeName = '/login';
  Login({Key? key}) : super(key: key);

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
                child: Text('Sign In',
                    style: Theme.of(context).textTheme.headline1),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: 325,
                child: Text('Sign in to continue to Cargo Express',
                    style: Theme.of(context).textTheme.headline2),
              ),
              const SizedBox(
                height: 22.44,
              ),
              SignUpForm(formKey: _formKey),
              const SizedBox(
                height: 41,
              ),
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Create an Account',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Navigator.pushNamed(context, UserType.routeName),
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          fontSize: 18,
                          color: primaryBlue,
                          fontWeight: FontWeight.w600))
                ])),
              ),
              const SizedBox(
                height: 75.33,
              ),
              Center(
                child: AppButton(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, Verification.routeName, (route) => false);
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.button!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 27.13,
                          color: normalWhite),
                    ),
                    color: primaryBlue,
                    radius: 20.25,
                    width: 141.77,
                    height: 63.46),
              )
            ],
          ),
        ),
      ),
    );
  }
}
