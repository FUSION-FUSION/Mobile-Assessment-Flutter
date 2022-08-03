import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/border_button.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/cloud_background.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CloudBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Congratulations!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const YMargin(ktinyspace),
            const Text(
              'Your account has been successfully created.',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            ),
            const YMargin(kLargespace + ktinyspace),
            Image.asset(
              'assets/images/ic-congratulations.png',
              fit: BoxFit.cover,
            ),
            const YMargin(kLargespace * 2),
            Center(
              child: SizedBox(
                width: 194,
                child: BorderButton(
                  label: 'Continue',
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
