import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/app/presentation/log_in_screen.dart';
import 'package:mobile_assessment_flutter/core/constants.dart';
import 'package:mobile_assessment_flutter/core/reuseables.dart';
import 'package:mobile_assessment_flutter/core/screen_size_config.dart';

class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Scaffold(
      body: buildRegistrationScreenBackground(
        child: Padding(
          padding:  EdgeInsets.only(
              left: getProportionateScreenWidth(22),
            right: getProportionateScreenWidth(61.05)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRegistrationScreenHeader(
                  title: 'Congratulations!',
                  subtitle: Text(
                    'Your account has been successfully\ncreated.',
                    style: TextStyle(
                        color: Palette.headerTextColor,
                        fontSize: getProportionateScreenWidth(17.55),
                        fontFamily: FontFamily.light,
                        fontWeight: FontWeight.w300),
                  ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(37.44),
              ),
              Padding(
                padding:  EdgeInsets.only(left: getProportionateScreenWidth(36)),
                child: Image.asset('assets/images/ic-congratulations.png'),
              ),
              SizedBox(
                height: getProportionateScreenHeight(66.59),
              ),
              Align(
                alignment: Alignment.center,
                child:
                BuildButton(
                  onPressed: () {
                    // Navigator.pushReplacement(
                    // context,
                    // MaterialPageRoute(
                    //     builder: (context) => LogInScreen()));
                  },
                  buttonText: 'Continue',
                  containerHeight: 63,
                  containerWidth: 194.01,
                  borderRadiusSize: 20.25,
                  buttonTextSize: 24.3,
                  buttonTextColor: Palette.whiteColor,
                  buttonColor: Palette.primaryColor,
                  borderColor: Palette.primaryColor,
                  buttonTextWeight: FontWeight.w500,
                  buttonTextFamily: FontFamily.bold,
                ),
                
                
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
