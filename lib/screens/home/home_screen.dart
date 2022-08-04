// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mobile_assessment_flutter/utilities/constants/constants.dart';
import 'package:mobile_assessment_flutter/widgets/widgets.dart';

import '../../routes/router.gr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    // final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FA),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(child: Image.asset('assets/images/Hamburger menu.png', height: 25.h)),
                  Text(
                    'Hello, John.',
                    style: textTheme.headline2,
                  ),
                  InkWell(
                    child: Image.asset('assets/images/ic-notification.png',
                        height: 30.h),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 100.h,
                width: size.width,
                decoration: BoxDecoration(
                  color: SColors.buttonsideColor,
                  borderRadius: BorderRadius.circular(14),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/bg-dashboard-balance.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 10,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Balance', style: textTheme.caption),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              // SizedBox(height: 8.h),
                              SvgPicture.asset('assets/images/₦ 50,000.svg',
                                  height: 24.h),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  'assets/images/Topup Button.svg',
                                  height: 57.h),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              Container(
                height: 150.h,
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFFDFEEF),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Track your waybill',
                          style: textTheme.headline2?.copyWith(fontSize: 19.sp),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                              // color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: SColors.buttonsideColor,
                              hintText: 'Waybill Number',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/images/ic-search.png',
                                  // height:20.h
                                ),
                              ),
                              prefixIconConstraints:
                                  BoxConstraints(maxHeight: 35.h),
                              suffixIcon: SButton(
                                width: 40.w,
                                onPressed: () {
                                  AutoRouter.of(context)
                                      .push(const TrackingScreen());
                                },
                                buttontext: 'Track',
                                style: textTheme.caption
                                    ?.copyWith(color: SColors.buttonsideColor),
                                color: SColors.primaryColor,
                              ),
                              suffixIconConstraints:
                                  BoxConstraints(maxHeight: 35.h),
                              hintStyle: textTheme.headline5?.copyWith(
                                  fontSize: 13.5.sp,
                                  color: const Color(0xFF606060)),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(20.0, 0, 20.0, .0),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: SColors.primaryColor,
                                  // style: BorderStyle.solid
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: SColors.primaryColor,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: SColors.primaryColor,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Send a Package',
                    style: textTheme.headline2,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  //? same state
                  SameState(),
                  //? interstate
                  InterState(),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  //? charter
                  Charter(),
                  //? international
                  International()
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Other Actions',
                    style: textTheme.headline2,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //?waybill history
                  Container(
                    height: 150.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDFEFF),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 25),
                            child: Text('Waybill History',
                                style: textTheme.bodyText1
                                    ?.copyWith(fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 4),
                            child: SvgPicture.asset(
                              'assets/images/Line 1.svg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 4),
                            child: Text('Records of all your \nwaybills',
                                style: textTheme.headline6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Group 301B.svg',
                                  height: 25.h,
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                  //?get help
                  Container(
                    height: 150.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDFEFF),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 25),
                            child: Text('Get Help',
                                style: textTheme.bodyText1
                                    ?.copyWith(fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 4),
                            child: SvgPicture.asset(
                              'assets/images/Line 1.svg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 4),
                            child: Text('Get help & support \nfrom our team',
                                style: textTheme.headline6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Group 301B.svg',
                                  height: 25.h,
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 130.h),
            ],
          ),
        ),
      ),
    );
  }
}
