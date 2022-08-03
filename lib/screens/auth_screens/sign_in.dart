import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/router.gr.dart';
import '../../utilities/constants/constants.dart';
import '../../widgets/widgets.dart';

class SignInscreen extends StatefulWidget {
  const SignInscreen({Key? key}) : super(key: key);

  @override
  State<SignInscreen> createState() => _SignInscreenState();
}

class _SignInscreenState extends State<SignInscreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              SColors.lineargradientColor1,
              SColors.lineargradientColor2
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200.h,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Cloud illustration.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100.h),
                      Text(
                        'Sign In',
                        style: textTheme.subtitle2,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Sign in to continue to Cargo Express',
                        style: textTheme.headline5,
                      )
                    ],
                  ),
                ),
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const STextfield(
                        labelText: 'Phone Number / E-mail',
                        obscureText: false,
                        isMandatory: false),
                    SizedBox(height: 20.h),
                    const STextfield(
                        labelText: 'Password',
                        obscureText: true,
                        isMandatory: false),
                    SizedBox(height: 45.h),
                    Center(
                      child: GestureDetector(
                        onTap: () =>
                        AutoRouter.of(context).push(const Usertype()),
                        child: RichText(
                          text: TextSpan(
                              text: '',
                              style: textTheme.headline5?.copyWith(),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " Create an Account",
                                  style: textTheme.button?.copyWith(
                                      color: SColors.primaryColor,
                                      fontSize: 18.sp),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 70.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Center(
                        child: SButton(
                          onPressed: () {
                            
                          },
                          height: 70.h,
                          width: 160.w,
                          color: SColors.primaryColor,
                          buttontext: 'Sign In',
                          style: textTheme.subtitle1
                              ?.copyWith(color: Colors.white, fontSize: 24.sp),
                        ),
                      ),
                    ),
                    SizedBox(height: 80.h),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
