import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/utils/sizing.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/cloud_background.dart';
import 'package:mobile_assessment_flutter/features/registration/widgets/user_type_tile.dart';

class ChooseUserTypeScreen extends StatelessWidget {
  const ChooseUserTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CloudBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What kind of user are you?',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const YMargin(ktinyspace),
            const Text(
              'We will adapt the app to suit your needs.',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            ),
            const YMargin(kLargespace + ktinyspace),
            UserTypeTile(onTap: () {}, label: 'Personal'),
            const YMargin(kLargespace),
            UserTypeTile(onTap: () {}, label: 'E-commerce'),
          ],
        ),
      ),
    );
  }
}
