import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/routes_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

import '../resources/font_manager.dart';
import '../widgets/forward_navigation.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(top: false, bottom: false,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 84.h,
              ),
              Text(
                "Verification!",
                style: Theme.of(context).textTheme.headline2,
              ),
              RichText(
                text: TextSpan(
                    text: 'We sent you an ',
                    style: getLightStyle(
                        color: ColorManager.black400, fontSize: FontSize.s16),
                    children: [
                      TextSpan(
                          text: 'sms ',
                          style: getMediumStyle(
                              color: ColorManager.teal, fontSize: FontSize.s16),
                          children: [
                            TextSpan(
                                text: 'code on number ',
                                style: getLightStyle(
                                    color: ColorManager.black400,
                                    fontSize: FontSize.s16)),
                            TextSpan(
                                text: '+234818960610',
                                style: getMediumStyle(
                                    color: ColorManager.teal,
                                    fontSize: FontSize.s16))
                          ])
                    ]),
              ),
              SizedBox(
                height: 28.h,
              ),
              OtpTextField(
                borderColor: ColorManager.white,
                filled: true,
                fillColor: ColorManager.white,
                numberOfFields: 5,
                fieldWidth: 51,
                enabled: true,  cursorColor: ColorManager.teal,
                enabledBorderColor: ColorManager.white,
                focusedBorderColor: ColorManager.white,
                borderRadius: const BorderRadius.all(Radius.circular(17.0)),
                showFieldAsBox: true,
                autoFocus: true,
                onCodeChanged: (String code) {
                  //handle validation or checks here if necessary
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {},
              ),
              SizedBox(
                height: 7.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Text(
                    "00:52",
                    style: getRegularStyle(
                        color: ColorManager.red, fontSize: FontSize.s16),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Center(
                child: Text(
                  "Resend Code",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Center(
                child: ForwardNavigation(onTap: () {
                  Navigator.of(context)
                      .pushNamed(Routes.welcomeRoute);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
