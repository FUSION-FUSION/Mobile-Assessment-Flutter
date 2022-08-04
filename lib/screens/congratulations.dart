import 'package:flutter/material.dart';

import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../../widget/appBackground.dart';
import '../../widget/appButton.dart';

class Congratulation extends StatelessWidget {
  static const routeName = '/congratulation';
  Congratulation({Key? key}) : super(key: key);

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
              child: Text('Congratulations!',
                  style: Theme.of(context).textTheme.headline1),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: 325,
              child: Text('Your account has been successfully created.',
                  style: Theme.of(context).textTheme.headline2),
            ),
            const SizedBox(
              height: 37,
            ),
            Center(
                child: SizedBox(
                    width: 308,
                    height: 307,
                    child: Image.asset(
                      'assets/Shipify-Assets/ic-congratulations.png',
                      fit: BoxFit.cover,
                    ))),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: AppButton(
                child: Text(
                  'Continue',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 24.3,
                      color: normalWhite),
                ),
                color: primaryBlue,
                radius: 20.25,
                width: 194,
                height: 63,
                onTap: () {
                  // Execute Navigation
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
