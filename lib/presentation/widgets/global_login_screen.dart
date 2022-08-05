import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

import '../resources/color_manager.dart';
import 'app_textfield.dart';
import 'custom_elevated_button.dart';

class GlobalLoginScreen extends StatefulWidget {
  final String? labelText1;
  final String? labelText2;
  const GlobalLoginScreen({this.labelText1, this.labelText2, Key? key})
      : super(key: key);

  @override
  _GlobalLoginScreenState createState() => _GlobalLoginScreenState();
}

class _GlobalLoginScreenState extends State<GlobalLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 84.h,
          ),
          Text(
            "Sign In",
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            "Sign in to continue to Cargo Express",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppTextField(
            labelText: widget.labelText1,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppTextField(
            labelText: widget.labelText2,
            isPassword: true,
          ),
          SizedBox(
            height: 41.h,
          ),
          Text(
            "Create an Account",
            style: getSemiBoldStyle(color: ColorManager.teal),
          ),
          SizedBox(
            height: 75.h,
          ),
          SizedBox(
            width: 141,
            child: CustomElevatedButton(
              text: "Sign In",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
