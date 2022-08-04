import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants.dart';

import 'package:mobile_assessment_flutter/core/size_config.dart';

class buildRegistrationScreenBackground extends StatelessWidget {
  buildRegistrationScreenBackground({required this.child});
  Widget child;

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // color: Colors.black
          gradient: LinearGradient(
              colors: [Palette.backgroundColor1, Palette.backgroundColor2]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionateScreenHeight(6.58),
                      left: getProportionateScreenWidth(38.41),
                      right: getProportionateScreenWidth(28.53)),
                  child: Container(
                    height: getProportionateScreenHeight(249.05),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/bg-app-cloud.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
                child
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class buildRegistrationScreenHeader extends StatelessWidget {
  buildRegistrationScreenHeader({required this.title, required this.subtitle});

  String title;
  Widget subtitle;

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getProportionateScreenHeight(130.56)),
        Text(
          title,
          style: TextStyle(
              color: Palette.headerTextColor,
              fontSize: getProportionateScreenWidth(26.33),
              fontFamily: FontFamily.medium,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: getProportionateScreenHeight(4.09)),
        subtitle
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  BuildButton({
    required this.onPressed,
    required this.buttonText,
    required this.containerHeight,
    required this.containerWidth,
    required this.borderRadiusSize,
    required this.buttonTextSize,
    required this.buttonTextColor,
    required this.buttonColor,
    required this.borderColor,
    required this.buttonTextWeight,
    required this.buttonTextFamily,
  });

  void Function()? onPressed;
  String buttonText;
  double containerHeight;
  double containerWidth;
  double borderRadiusSize;
  double buttonTextSize;
  Color buttonTextColor;
  Color buttonColor;
  Color borderColor;
  FontWeight buttonTextWeight;
  String buttonTextFamily;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(containerHeight),
      width: getProportionateScreenWidth(containerWidth),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
              color: buttonTextColor,
              fontSize: getProportionateScreenWidth(buttonTextSize),
              fontWeight: buttonTextWeight,
              fontFamily: buttonTextFamily),
        ),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadiusSize),
                side: BorderSide(color: borderColor))),
      ),
    );
  }
}

class BuildTextInputField extends StatelessWidget {
  String text;
  Widget? prefix;
  TextInputType keyboardType;

  BuildTextInputField(
      {required this.text, this.prefix, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: getProportionateScreenWidth(7)),
          child: Text(
            text,
            style: TextStyle(
                color: Palette.textColor,
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.w400,
                fontFamily: FontFamily.regular),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(6)),
        Container(
          height: getProportionateScreenHeight(44),
          width: getProportionateScreenWidth(390),
          child: TextField(
              cursorColor: Palette.textColor,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                prefixIcon: prefix,
                filled: true,
                fillColor: Palette.textFieldColor,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(17)),
              )),
        )
      ],
    );
  }
}
