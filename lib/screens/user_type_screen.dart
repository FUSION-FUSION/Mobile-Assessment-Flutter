import 'package:flutter/material.dart';

import 'package:mobile_assessment_flutter/utils/colors.dart';

import '../widget/appBackground.dart';
import '../widget/appButton.dart';

class UserType extends StatelessWidget {
  static const routeName = '/user-type';
  const UserType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBackground(
        body: Padding(
      padding: const EdgeInsets.all(26.33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 130,
          ),
          SizedBox(
            width: 320,
            child: Text('What kind of user are you?',
                style: Theme.of(context).textTheme.headline1),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 325,
            child: Text('We will adapt the app to suit your needs.',
                style: Theme.of(context).textTheme.headline2),
          ),
          const SizedBox(
            height: 48.04,
          ),
          AppButton(
            child: Text(
              'Personal',
              style: Theme.of(context).textTheme.button,
            ),
            color: primaryBlue,
            radius: 24.87,
            width: double.infinity,
            height: 136.78,
          ),
          const SizedBox(
            height: 40.96,
          ),
          AppButton(
            child: Text(
              'E-commerce',
              style: Theme.of(context).textTheme.button,
            ),
            color: primaryBlue,
            radius: 24.87,
            width: double.infinity,
            height: 136.78,
          )
        ],
      ),
    ));
  }
}
