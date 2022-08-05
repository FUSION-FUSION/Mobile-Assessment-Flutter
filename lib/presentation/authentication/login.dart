import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../widgets/app_textfield.dart';
import '../widgets/custom_elevated_button.dart';

class LoginScreen extends StatefulWidget {
  final String? labelText1;
  final String? labelText2;
  const LoginScreen({this.labelText1, this.labelText2, Key? key})
      : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(top: false, bottom: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64.h,
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
                const AppTextField(
                  labelText: "Phone Number / E-mail",
                ),
                SizedBox(
                  height: 20.h,
                ),
                const AppTextField(
                  labelText: "Password",
                  isPassword: true,
                ),
                SizedBox(
                  height: 41.h,
                ),
                Center(
                  child: Text(
                    "Create an Account",
                    style: getSemiBoldStyle(color: ColorManager.teal),
                  ),
                ),
                SizedBox(
                  height: 75.h,
                ),
                Center(
                  child: SizedBox(
                    width: 141,
                    child: CustomElevatedButton(
                      text: "Sign In",
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Routes.homeRoute);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
