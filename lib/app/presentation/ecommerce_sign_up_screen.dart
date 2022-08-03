import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/verification_screen.dart';
import 'package:mobile_assessment_flutter/core/constants.dart';
import 'package:mobile_assessment_flutter/core/reuseables.dart';
import 'package:mobile_assessment_flutter/core/screen_size_config.dart';

class EcommerceSignUpScreen extends StatefulWidget {
  const EcommerceSignUpScreen({Key? key}) : super(key: key);

  @override
  State<EcommerceSignUpScreen> createState() => _EcommerceSignUpScreenState();
}

class _EcommerceSignUpScreenState extends State<EcommerceSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return buildRegistrationScreenBackground(
        child: Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(23),
          bottom: getProportionateScreenHeight(88.54)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(7)),
            child: buildRegistrationScreenHeader(
              title: 'Welcome!',
              subtitle: Text(
                'Create an account to get started\nwith Cargo Express',
                style: TextStyle(
                    color: Palette.headerTextColor,
                    fontSize: getProportionateScreenWidth(17.55),
                    fontFamily: FontFamily.light,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(22.44)),
          BuildTextInputField(
            text: 'Business Name',
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          BuildTextInputField(
            text: 'Official E-mail',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          BuildTextInputField(
            text: 'Contact Number',
            prefix: Container(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
                height: getProportionateScreenHeight(44),
                width: getProportionateScreenWidth(102),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: Color.fromARGB(255, 230, 223, 223))),
                child: Row(
                  children: [
                    Text(
                      '+234',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontFamily: FontFamily.light,
                        color: Palette.textColor,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(9.65),
                    ),
                    Icon(Icons.arrow_drop_down, color: Palette.textColor,)
                  ],
                )),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          BuildTextInputField(
            text: 'Password',
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          BuildTextInputField(
            text: 'Confirm Password',
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: getProportionateScreenHeight(27)),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w300,
                    color: Palette.headerTextColor,
                    fontFamily: FontFamily.light),
                children: [
                  TextSpan(
                    text: 'Log In',
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: Palette.primaryColor,
                        fontFamily: FontFamily.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(27)),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(27),
                right: getProportionateScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  buttonText: 'Back',
                  containerHeight: 63.64,
                  containerWidth: 141.77,
                  borderRadiusSize: 20.25,
                  buttonTextSize: 24.3,
                  buttonTextColor: Palette.headerTextColor,
                  buttonColor: Palette.whiteColor,
                  borderColor: Palette.whiteColor,
                  buttonTextWeight: FontWeight.w500,
                  buttonTextFamily: FontFamily.bold,
                ),
                BuildButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => VerificationScreen()));
                  },
                  buttonText: 'Next',
                  containerHeight: 63.64,
                  containerWidth: 141.77,
                  borderRadiusSize: 20.25,
                  buttonTextSize: 24.3,
                  buttonTextColor: Palette.whiteColor,
                  buttonColor: Palette.primaryColor,
                  borderColor: Palette.whiteColor,
                  buttonTextWeight: FontWeight.w500,
                  buttonTextFamily: FontFamily.bold,
                ),
              ],
            ),
          )
        ],
      ),
    ));
    ;
  }
}
