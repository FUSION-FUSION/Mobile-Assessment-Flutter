import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:mobile_assessment_flutter/widgets/gradient_background.dart';
import 'package:mobile_assessment_flutter/widgets/text_container.dart';

class AccountSuccess extends StatelessWidget {
  const AccountSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(
              top: Dimensions.sizeHeightPercent(130),
              left: Dimensions.sizeWidthPercent(22)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: AppText(
                    text: 'Congratulations!',
                    size: 26.33,
                    bold: true,
                  )),
              SizedBox(height: Dimensions.sizeHeightPercent(4)),
              Align(
                  alignment: Alignment.topLeft,
                  child: AppText(
                    text: 'Your account has been successfully created.!',
                    size: 16,
                  )),
              SizedBox(height: Dimensions.sizeHeightPercent(37.44)),
              SizedBox(
                height: Dimensions.sizeHeightPercent(312),
                width: Dimensions.sizeWidthPercent(312),
                child: Image.asset('assets/images/ic-congratulations.png'),
              ),
              SizedBox(height: Dimensions.sizeHeightPercent(66.59)),
              TextContainer(text: 'Continue', width: 194, height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
