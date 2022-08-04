// ignore_for_file: avoid_unnecessary_containers

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/utilities/constants/constants.dart';
import 'package:mobile_assessment_flutter/widgets/widgets.dart';

import '../../routes/router.gr.dart';

class Usertype extends StatefulWidget {
  const Usertype({Key? key}) : super(key: key);

  @override
  State<Usertype> createState() => _UsertypeState();
}

class _UsertypeState extends State<Usertype> {
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
          colors: [SColors.lineargradientColor2, SColors.lineargradientColor1],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300.h,
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
                    SizedBox(height: 120.h),
                    Text(
                      'What kind of user are \nyou?',
                      style: textTheme.subtitle2,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'We will adapt the app to suit your \nneeds.',
                      style: textTheme.headline5,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                children: [
                  SButton(
                    onPressed: () {
                      AutoRouter.of(context).push(const SignUpPersonal());
                    },
                    height: 130.h,
                    color: SColors.primaryColor,
                    width: size.width,
                    buttontext: 'Personal',
                    style: textTheme.headline1?.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 40.h),
                  SButton(
                    onPressed: () {
                      AutoRouter.of(context).push(const SignUpEcommerce());
                    },
                    height: 130.h,
                    color: SColors.primaryColor,
                    width: size.width,
                    buttontext: 'E-commerce',
                    style: textTheme.headline1?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
