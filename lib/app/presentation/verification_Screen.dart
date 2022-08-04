import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/registration_success_screen.dart';
// import 'package:mobile_assessment_flutter/app/presentation/registration_success_screen.dart';
import 'package:mobile_assessment_flutter/core/constants.dart';
import 'package:mobile_assessment_flutter/core/reuseables.dart';

import 'package:mobile_assessment_flutter/core/size_config.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  bool completed = false;

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return buildRegistrationScreenBackground(
        child: Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(22),
        right: getProportionateScreenWidth(57),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRegistrationScreenHeader(
              title: 'Verification!',
              subtitle: RichText(
                text: TextSpan(
                    text: 'We sent you an ',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w300,
                        color: Palette.headerTextColor,
                        fontFamily: FontFamily.light),
                    children: [
                      TextSpan(
                          text: 'SMS ',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                              color: Palette.primaryColor,
                              fontFamily: FontFamily.medium)),
                      TextSpan(
                        text: 'code on\nnumber ',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w300,
                            color: Palette.headerTextColor,
                            fontFamily: FontFamily.light),
                      ),
                      TextSpan(
                          text: '+2348108960610',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: FontWeight.w500,
                              color: Palette.primaryColor,
                              fontFamily: FontFamily.medium))
                    ]),
              )),
          SizedBox(height: getProportionateScreenHeight(28.44)),
          PinCodeTextField(
            appContext: (context),
            length: 5,
            onChanged: (value) {},
            onCompleted: (value) {},
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            cursorColor: Palette.textColor,
            pinTheme: PinTheme(
                fieldHeight: getProportionateScreenHeight(66.66),
                fieldWidth: getProportionateScreenWidth(57),
                inactiveFillColor: Palette.textFieldColor,
                inactiveColor: Palette.textFieldColor,
                activeFillColor: Palette.textFieldColor,
                activeColor: Palette.textFieldColor,
                disabledColor: Palette.textFieldColor,
                selectedColor: Palette.textFieldColor,
                borderRadius: BorderRadius.circular(10),
                selectedFillColor: Palette.textFieldColor),
          ),
          SizedBox(height: getProportionateScreenHeight(14.34)),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              completed ? '00:52' : 'Code Expired',
              style: TextStyle(
                  color: Palette.redColor,
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w400,
                  fontFamily: FontFamily.regular),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(22)),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                setState(() {
                  completed = true;
                });
              },
              child: Text(
                'Resend Code',
                style: TextStyle(
                    color: Palette.blackColor,
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    fontFamily: FontFamily.semiBold),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(22)),
          Align(
            alignment: Alignment.center,
            child: Container(
                height: getProportionateScreenHeight(59),
                width: getProportionateScreenWidth(59),
                decoration: BoxDecoration(
                    color: Palette.primaryColor, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationSuccessScreen()));


                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Palette.whiteColor,
                  ),
                )),
          )
        ],
      ),
    ));
  }
}