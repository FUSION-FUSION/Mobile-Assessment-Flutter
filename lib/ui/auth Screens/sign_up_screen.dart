import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/auth_welcome_screen.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/sign_in_screen.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/Sign_up_button.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/form_widgets.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
                        "Welcome!",
                        style: TextStyle(
                            fontSize: 22.0.sp,
                            fontWeight: FontWeight.w500,
                           ),
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        "Create an account to get started\nwith Cargo Express",
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

                              Padding(
                                padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                                child: Text("Full Name"),
                              ),
                          buidFirstNameFormFeild(),
                              formSpace,
                          Padding(
                            padding:  EdgeInsets.only(left: 8.0,bottom: 9.0),
                            child: Text("Your E-mail"),
                          ),
                          buidEmailAddressFormFeild(),
                              formSpace,

                              Padding(
                                padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                                child: Text("Phone Number"),
                              ),
                          buidPhoneNumberFormFeild(),
                              formSpace,

                              Padding(
                                padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                                child: Text("Password"),
                              ),
                              buidLastNameFormFeild(),
                              formSpace,
                              Padding(
                                padding:  EdgeInsets.only(left: 8.0,bottom: 8.0),
                                child: Text("Confirm Password"),
                              ),
                          buidAddressFormFeild(),
                        ]),
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //SizedBox(width: 10.0,),
                          const Center(
                            child: Text(
                              "Already have an account? ",
                              style: TextStyle(
                                  fontFamily: "GoogleSans", color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignInScreen()));
                            },
                            child: const Text(
                              "log In",
                              style: TextStyle(
                                  fontFamily: "GoogleSans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: AppColors.primaryGreen),
                            ),
                          ),
                          SizedBox(
                            height: 30.0.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AuthButton(label:  "Back",textColor: Colors.black),
                          AuthButton(label:  "Next",buttonColor: AppColors.primaryGreen,),
                        ],
                      ),

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

