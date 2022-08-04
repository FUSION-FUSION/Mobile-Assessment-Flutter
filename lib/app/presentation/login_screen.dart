import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/user_type_screen.dart';
import 'package:mobile_assessment_flutter/core/constants.dart';
import 'package:mobile_assessment_flutter/core/reuseables.dart';
import 'package:mobile_assessment_flutter/core/size_config.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return buildRegistrationScreenBackground(
        child: Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenHeight(23)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildRegistrationScreenHeader(
            title: 'Sign In',
            subtitle: Text(
              'Sign in to continue to Cargo Express',
              style: TextStyle(
                  color: Palette.headerTextColor,
                  fontSize: getProportionateScreenWidth(17.55),
                  fontFamily: FontFamily.light,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(22.44),
          ),
          BuildTextInputField(
              text: 'Phone Number / E-mail ',
              keyboardType: TextInputType.emailAddress),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          BuildTextInputField(
              text: 'Password', keyboardType: TextInputType.emailAddress),
          SizedBox(
            height: getProportionateScreenHeight(41),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserTypeScreen()));
                },
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                      color: Palette.primaryColor,
                      fontSize: getProportionateScreenWidth(18),
                      fontFamily: FontFamily.semiBold,
                      fontWeight: FontWeight.w600),
                )),
          ),
          SizedBox(
            height: getProportionateScreenHeight(75.33),
          ),
          Align(
            alignment: Alignment.center,
            child: BuildButton(
              onPressed: () {
                // Navigator.pushReplacement(
                // context,
                // MaterialPageRoute(
                //     builder: (context) => LogInScreen()));
              },
              buttonText: 'Sign In',
              containerHeight: 71.15,
              containerWidth: 182.45,
              borderRadiusSize: 20.25,
              buttonTextSize: 27.13,
              buttonTextColor: Palette.whiteColor,
              buttonColor: Palette.primaryColor,
              borderColor: Palette.primaryColor,
              buttonTextWeight: FontWeight.w500,
              buttonTextFamily: FontFamily.bold,
            ),
          )
        ],
      ),
    ));
  }
}