import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:mobile_assessment_flutter/widgets/gradient_background.dart';
import 'package:mobile_assessment_flutter/widgets/text_container.dart';

class UserType extends StatelessWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: EdgeInsets.only(
                left: Dimensions.sizeWidthPercent(26.33),
                right: Dimensions.sizeWidthPercent(26.33),
                top: Dimensions.sizeHeightPercent(130.56),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'What kind of user are you?',
                    size: 26.33,
                    bold: true,
                  ),
                  SizedBox(height: Dimensions.sizeHeightPercent(4)),
                  AppText(
                    text: 'We will adapt the app to suit your needs.',
                    size: 17.55,
                  ),
                  SizedBox(height: Dimensions.sizeHeightPercent(48)),
                  TextContainer(
                    text: 'Personal',
                    width: 373,
                    height: 136.78,
                  ),
                  SizedBox(height: Dimensions.sizeHeightPercent(40.96)),
                  TextContainer(
                    text: 'E-commerce',
                    width: 373,
                    height: 136.78,
                  ),
                ],
              ),
            )));
  }
}
