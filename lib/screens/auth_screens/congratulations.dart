import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/router.gr.dart';
import '../../utilities/constants/constants.dart';
import '../../widgets/widgets.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
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
                height: 240.h,
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
                      SizedBox(height: 120.h),
                      Text(
                        'Congratulations!',
                        style: textTheme.subtitle2,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Your account has been successfully \ncreated',
                        style: textTheme.headline5,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 350.h,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ic-congratulations.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              SButton(
                onPressed: () {
                  AutoRouter.of(context).push(const HomeScreen());
                },
                height: 60.h,
                width: 180.w,
                color: SColors.primaryColor,
                buttontext: 'Continue',
                style: textTheme.subtitle1
                    ?.copyWith(color: Colors.white, fontSize: 24.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
