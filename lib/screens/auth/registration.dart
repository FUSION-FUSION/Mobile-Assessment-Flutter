import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';
import 'package:mobile_assessment_flutter/widgets/gradient_background.dart';
import 'package:mobile_assessment_flutter/widgets/register_field.dart';
import 'package:mobile_assessment_flutter/widgets/text_container.dart';

class Registration extends StatelessWidget {
  bool isPersonal;
  Registration({Key? key, required this.isPersonal}) : super(key: key);

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
                  text: 'Welcome!',
                  size: 26.33,
                  bold: true,
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(4)),
                AppText(
                  text: 'Create an account to get started with Cargo Express',
                  size: 17.55,
                ),
                SizedBox(height: Dimensions.sizeHeightPercent(22.44)),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegisterField(
                      name: isPersonal ? 'Fullname' : 'Company Name',
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(20)),
                    RegisterField(
                      name: isPersonal ? 'Your E-mail' : 'Official Email',
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(20)),
                    AppText(
                      text: isPersonal ? 'Phone Number' : 'Contact Number',
                      size: 16,
                      color: AppColors.primaryBlack,
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(6)),
                    Container(
                      width: Dimensions.sizeWidthPercent(390),
                      height: Dimensions.sizeHeightPercent(44),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: const Color(0xffFDFEFF),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: Dimensions.sizeWidthPercent(102),
                            height: Dimensions.sizeHeightPercent(44),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              border: Border.all(
                                color: Colors.grey[100]!,
                                width: 1,
                              ),
                              color: const Color(0xffFDFEFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('+234'),
                                SizedBox(
                                  width: Dimensions.sizeWidthPercent(8),
                                ),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.primaryBlack,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: Dimensions.sizeWidthPercent(270),
                            padding: EdgeInsets.only(
                              left: Dimensions.sizeWidthPercent(10),
                              right: Dimensions.sizeWidthPercent(10),
                              top: Dimensions.sizeHeightPercent(5),
                              bottom: Dimensions.sizeHeightPercent(5),
                            ),
                            child: TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  // WhitelistingTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(11),
                                ],
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(20)),
                    RegisterField(
                      name: 'Password',
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(20)),
                    RegisterField(
                      name: 'Confirm Password',
                    ),
                    SizedBox(height: Dimensions.sizeHeightPercent(27)),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: const TextStyle(
                              color: AppColors.primaryTextColor),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Log In',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Tap');
                                  },
                                style: const TextStyle(
                                  color: AppColors.primaryBlue,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.sizeHeightPercent(37),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextContainer(
                          text: 'Back',
                          width: 141.77,
                          textColor: AppColors.primaryBlack,
                          height: 63.46,
                          backgroundColor: AppColors.primaryWhite,
                        ),
                        SizedBox(
                          width: Dimensions.sizeWidthPercent(62.66),
                        ),
                        TextContainer(
                          text: 'Next',
                          width: 141.77,
                          height: 63.46,
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
