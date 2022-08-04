import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../providers/providers.dart';
import '../../routes/router.gr.dart';
import '../../utilities/constants/constants.dart';
import '../../widgets/widgets.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                    image: AssetImage('assets/images/bg-app-cloud.png'),
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
                        'Verification!',
                        style: textTheme.subtitle2,
                      ),
                      SizedBox(height: 8.h),
                      // Text(
                      //   'Sign in to continue to Cargo Express',
                      //   style: textTheme.headline5,
                      // ),
                      RichText(
                        textAlign: TextAlign.start,
                        textDirection: TextDirection.ltr,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'We sent you an ',
                            style: textTheme.headline5?.copyWith(
                                // fontSize: 15.sp,
                                ),
                          ),
                          TextSpan(
                            text: 'SMS ',
                            style: textTheme.headline5?.copyWith(
                              // fontSize: 15.sp,
                              color: SColors.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'code on                                                          ',
                            style: textTheme.headline5?.copyWith(
                                // fontSize: 15.sp,

                                ),
                          ),
                          TextSpan(
                              text: "\nnumber ", style: textTheme.headline5),
                          TextSpan(
                            text: '+2348108960610 ',
                            style: textTheme.headline5?.copyWith(
                              // fontSize: 15.sp,
                              color: SColors.primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const Otpform(),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          authProvider.timeOut == false
                              ? TweenAnimationBuilder(
                                  tween: Tween(begin: 60.0, end: 0.0),
                                  duration: const Duration(seconds: 60),
                                  builder: (_, dynamic value, child) =>
                                      Text("00:${value?.toInt()}",
                                          style: textTheme.headline5?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.red,
                                          )),
                                  onEnd: () {
                                    authProvider.setTimeOut(true);
                                  },
                                )
                              : Text('Code expired',
                                  style: textTheme.headline5?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.red,
                                  ))
                        ],
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Center(
                      child: GestureDetector(
                        // onTap: () =>
                        // AutoRouter.of(context).push(const Usertype()),
                        child: RichText(
                          text: TextSpan(
                              text: '',
                              style: textTheme.headline5?.copyWith(),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Resend Code",
                                  style: textTheme.button?.copyWith(
                                      // color: SColors.primaryColor,
                                      fontSize: 18.sp),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Center(
                          child: InkWell(
                        onTap: () {
                          AutoRouter.of(context).push(const Congratulations());
                        },
                        child: Container(
                          height: 60.h,

                          decoration: BoxDecoration(
                            color: SColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                                'assets/images/bi_arrow-right-circle.png',
                                height: 25.h),
                          ),

                 
                        ),
                      )),
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
