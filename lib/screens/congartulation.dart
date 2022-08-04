import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/utilities/ui_helpers.dart';
import 'package:mobile_assessment_flutter/widgets/custom_appBar.dart';

class Congrats extends StatefulWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdce4e9),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Stack(children: [
          Container(
            child: Image.asset('assets/images/bg-app-cloud.png'),
            width: double.infinity,
          ),
          Padding(
              padding: EdgeInsets.only(top: 130.56.h, left: 22.0.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 86.73.w),
                      child: Text(
                        'Congratulations!',
                        // title,
                        style: kappBarTitlestyle,
                      ),
                    ),
                    verticalSpaceCustom(4.h),
                    Padding(
                      padding: EdgeInsets.only(right: 80.06.w),
                      child: Text(
                        'Your account has been sucessfully created',
                        // subtitle,
                        style: kappBarsubTitlestyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 40.04.h,
                          left: 50.w,
                          right: 50.w,
                          bottom: 86.3.h),
                      child: Image.asset(
                        'assets/images/ic-congratulations.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/home'),
                        child: Container(
                          height: 60,
                          width: 200,
                          child: Center(
                              child: Text(
                            'Continue',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                                color: Colors.white),
                          )),
                          decoration: BoxDecoration(
                            color: const Color(0xff46a5ba),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ]))
        ]))));
  }
}
