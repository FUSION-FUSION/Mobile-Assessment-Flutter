import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/routes/route_helper.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:mobile_assessment_flutter/widgets/gradient_background.dart';
import 'package:mobile_assessment_flutter/widgets/register_field.dart';
import 'package:mobile_assessment_flutter/widgets/text_container.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.sizeHeightPercent(26.33),
                  right: Dimensions.sizeHeightPercent(26.33),
                  top: Dimensions.sizeHeightPercent(130)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'Sign In',
                    size: 26.33,
                    bold: true,
                  ),
                  SizedBox(height: Dimensions.sizeHeightPercent(4)),
                  AppText(
                    text: 'Sign in to continue to Cargo Express',
                    size: 17.55,
                  ),
                  SizedBox(height: Dimensions.sizeHeightPercent(22.44)),
                  Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RegisterField(
                        name: 'Fullname',
                      ),
                      SizedBox(height: Dimensions.sizeHeightPercent(20)),
                      RegisterField(
                        name: 'Password',
                      ),
                      SizedBox(height: Dimensions.sizeHeightPercent(41)),
                    ],
                  )),
                  Center(
                      child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: AppText(
                      text: 'Create an Account',
                      size: 18,
                      color: AppColors.primaryBlue,
                    ),
                  )),
                  SizedBox(height: Dimensions.sizeHeightPercent(75.33)),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.offAllNamed(RouteHelper.getDashboard());
                      },
                      child: TextContainer(
                        text: 'Sign In',
                        width: 182.45,
                        height: 71.15,
                        size: 27.13,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
