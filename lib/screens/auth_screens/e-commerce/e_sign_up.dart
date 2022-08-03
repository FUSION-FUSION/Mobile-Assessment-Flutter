import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../providers/providers.dart';
import '../../../routes/router.gr.dart';
import '../../../utilities/constants/constants.dart';
import '../../../widgets/widgets.dart';



class SignUpEcommerce extends StatefulWidget {
  const SignUpEcommerce({Key? key}) : super(key: key);

  @override
  State<SignUpEcommerce> createState() => _SignUpEcommerceState();
}

class _SignUpEcommerceState extends State<SignUpEcommerce> {
   @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    final authProvider = Provider.of<AuthProvider>(context);

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
                height: 210.h,
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
                      SizedBox(height: 110.h),
                      Text(
                        'Welcome!',
                        style: textTheme.subtitle2,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Create an accountt to get started \nwith Cargo Express',
                        style: textTheme.headline5,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const STextfield(
                        labelText: 'Business Name',
                        obscureText: false,
                        isMandatory: false),
                    SizedBox(height: 20.h),
                    const STextfield(
                        labelText: 'Official E-mail',
                        obscureText: false,
                        isMandatory: false),
                    SizedBox(height: 20.h),
                    STextfield(
                      labelText: 'Contact Number',
                      obscureText: false,
                      isMandatory: false,
                      prefix: InkWell(
                        onTap: () {
                          authProvider.showCustomizedDialog(context);
                        },
                        child:
                            //?dropdownfixneeded
                            buildDropdownItem(
                          context,
                          authProvider.selectedCountry,
                          100.w,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const STextfield(
                        labelText: 'Password',
                        obscureText: true,
                        isMandatory: false),
                    SizedBox(height: 20.h),
                    const STextfield(
                        labelText: 'Confirm Password',
                        obscureText: true,
                        isMandatory: false),
                    SizedBox(height: 30.h),
                    Center(
                      child: GestureDetector(
                        onTap: () =>
                            AutoRouter.of(context).push(const SignInscreen()),
                        child: RichText(
                          text: TextSpan(
                              text: 'Already have an account?',
                              style: textTheme.headline5?.copyWith(),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " Log In",
                                  style: textTheme.button?.copyWith(
                                      color: SColors.primaryColor,
                                      fontSize: 18.sp),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: const EdgeInsets.only(left:40,right:40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SButton(
                            onPressed: () 
                       => AutoRouter.of(context).pop()
                            ,
                            height: 60.h,
                            width: 110.w,
                            color: SColors.buttonColor,
                            sideColor: SColors.buttonsideColor,
                            buttontext: 'Back',
                            style: textTheme.subtitle1?.copyWith(),
                          ),
                          SButton(
                            onPressed: () {
                              //?to verification

                            },
                            height: 60.h,
                            width: 110.w,
                            color: SColors.primaryColor,
                            buttontext: 'Next',
                            style: textTheme.subtitle1
                                ?.copyWith(color: Colors.white),
                          ),
                        ],
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
