import 'package:flutter/material.dart';

import 'package:mobile_assessment_flutter/screens/personal_sign_up/widget/signUpForm.dart';

import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../widget/appBackground.dart';
import '../../widget/appButton.dart';

class Verification extends StatelessWidget {
  static const routeName = '/verification';
  Verification({Key? key}) : super(key: key);

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
              child: Text('Verification!',
                  style: Theme.of(context).textTheme.headline1),
            ),
            const SizedBox(height: 4),
            SizedBox(
                width: 325,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'We sent you an SMS code on number +2348108960610'),
                  TextSpan(
                      text: 'We sent you an SMS code on number +2348108960610'),
                  TextSpan(
                      text: 'We sent you an SMS code on number +2348108960610'),
                ]))
                // Text('Create an account to get started with Cargo Express',
                //     style: Theme.of(context).textTheme.headline2),
                ),
            const SizedBox(
              height: 22.44,
            ),
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
                        height: 63.46),
                    AppButton(
                        onTap: () {
                          // _formKey.currentState!.validate();
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
