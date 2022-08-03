import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/auth_welcome_screen.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/Sign_up_button.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/form_widgets.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  Widget formSpace =  SizedBox(
    height: 15.h,
  );

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: AppColors.primary,
        body:
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors:
              [
                AppColors.primary,
                Colors.white,
              ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
          ),
          child: Stack(
            children: [
              const CloudWidget(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 22.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          "Sign in to continue to Cargo Express",
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 30.0.h),
                        Form(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Padding(
                                  padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                                  child: Text("Phone Number / E-mail"),
                                ),
                                buidPhoneNumberFormFeild(),
                                formSpace,

                                const Padding(
                                  padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                                  child: Text("Password"),
                                ),
                                buidLastNameFormFeild(),
                              ]),
                        ),
                        SizedBox(
                          height: 30.0.h,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Create an Account",
                              style: TextStyle(
                                  fontFamily: "GoogleSans", color: AppColors.primaryGreen, fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40.0.h,
                        ),
                        Center(child: AuthButton(label:  "Sign Up",buttonColor: AppColors.primaryGreen, width: 170.0.w,)),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

