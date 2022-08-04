import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/routes_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/app_textfield.dart';
import 'package:mobile_assessment_flutter/presentation/widgets/custom_elevated_button.dart';

class GlobalRegisterScreen extends StatefulWidget {
  final String? labelText1;
  final String? labelText2;
  final String? labelText3;
  final String? labelText4;
  final String? labelText5;

  const GlobalRegisterScreen(
      {this.labelText1,
      this.labelText2,
      this.labelText3,
      this.labelText4,
      this.labelText5,
      Key? key})
      : super(key: key);

  @override
  _GlobalRegisterScreenState createState() => _GlobalRegisterScreenState();
}

class _GlobalRegisterScreenState extends State<GlobalRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100.h,
          ),
          Text(
            "Welcome!",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "Create an account to get started with Cargo Express",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 22.h,
          ),
          AppTextField(
            labelText: widget.labelText1,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppTextField(
            labelText: widget.labelText2,
          ),
          AppTextField(
            labelText: widget.labelText3,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppTextField(
            labelText: widget.labelText4,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppTextField(
            labelText: widget.labelText5,
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                  text: "Already have an account? ",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: "Login",
                        style: getSemiBoldStyle(
                            color: ColorManager.teal, fontSize: FontSize.s16))
                  ]),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 135,
                child: CustomElevatedButton(
                  buttonColor: ColorManager.white, buttonHeight: 64,
                  buttonTextStyle: getMediumStyle(color: ColorManager.black400, fontSize: FontSize.s24),
                  text: "Back",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                width: 135,
                child: CustomElevatedButton(
                  text: "Next", buttonHeight: 64,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Routes.verificationRoute);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
