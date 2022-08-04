import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/homeScreen.dart';
import 'package:mobile_assessment_flutter/screens/login/login.dart';
import 'package:mobile_assessment_flutter/screens/verificiation_screen/widgets/customTimer.dart';
import 'package:mobile_assessment_flutter/screens/verificiation_screen/widgets/verificationPin.dart';

import 'package:mobile_assessment_flutter/utils/colors.dart';

import 'package:provider/provider.dart';
import '../../../widget/appBackground.dart';
import '../../../widget/appButton.dart';
import '../../providers/verificationProvider.dart';

class Verification extends StatelessWidget {
  static const routeName = '/verification';
  Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final verificationProvider =
        Provider.of<VerificationProvider>(context, listen: true);
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
                      text: 'We sent you an ',
                      style: Theme.of(context).textTheme.headline2),
                  TextSpan(
                      text: 'SMS ',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 16, color: primaryBlue)),
                  TextSpan(
                      text: 'code on number ',
                      style: Theme.of(context).textTheme.headline2),
                  TextSpan(
                      text: '+2348108960610',
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 16, color: primaryBlue))
                ]))),
            const SizedBox(
              height: 28.44,
            ),
            if (!verificationProvider.isValid)
              Text('Invalid Pin',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.red)),
            const SizedBox(
              height: 5,
            ),
            const VerificationPin(),
            const SizedBox(
              height: 15,
            ),
            const CustomTimer(),
            const SizedBox(
              height: 37,
            ),
            Center(
              child: AppButton(
                child: Icon(
                  Icons.arrow_forward,
                  color: normalWhite,
                  size: 35,
                ),
                color: primaryBlue,
                radius: 30,
                width: 60,
                height: 60,
                onTap: () {
                  if (verificationProvider.pin.length == 5) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        HomePage.routeName, (route) => false);
                  } else {
                    verificationProvider.setIsValid(false);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
