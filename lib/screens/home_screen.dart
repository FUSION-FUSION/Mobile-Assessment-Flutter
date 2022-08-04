import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/utilities/ui_helpers.dart';
import 'package:mobile_assessment_flutter/widgets/uniCon.dart';

import '../widgets/lastCon.dart';
import '../widgets/menuIcon.dart';
import '../widgets/smallGreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8fa),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 55.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Menuicon(),
                  Text(
                    'Hello, John.',
                    style: kgreetingstyle,
                  ),
                  Image.asset(
                    'assets/images/ic-notification.png',
                    height: 26.28.h,
                    width: 23.56.w,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xfffdfeff),
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 115.w),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                  'assets/images/bg-dashboard-balance.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 17.h, left: 28.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Balance',
                                  style: ktotalstyle,
                                ),
                                verticalSpaceCustom(3),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '₦',
                                      style: knormalTextStyle,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '50,000',
                                        style: kgreetingstyle,
                                      ),
                                    ),
                                    // HorizontalSpaceCustom(149.sp),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.h,
                                        right: 15.w,
                                      ),
                                      child: Container(
                                        height: 42.h,
                                        width: 100.w,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff46A5BA),
                                            borderRadius:
                                                BorderRadius.circular(19)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Top Up',
                                                style: kTopupstyle,
                                              ),
                                              Icon(
                                                Icons.double_arrow,
                                                size: 22.r,
                                                color: Colors.white,
                                              )
                                            ]),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Material(
                elevation: 4,
                borderRadius: BorderRadius.all(Radius.circular(26.r)),
                child: Container(
                    width: double.infinity,
                    height: 136.sp,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 23.h, bottom: 16.h),
                          child: Text(
                            'Track your waybill',
                            style: kwaybillstyle,
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 9.w, right: 15.w),
                                child: Image.asset(
                                  'assets/images/ic-search.png',
                                  height: 17,
                                  width: 17,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Waybill Number',
                                  style: kthinWaybillstyle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 1.5.w, top: 1.5.h, bottom: 1.5.h),
                                child: GestureDetector(
                                  onTap: () =>
                                      Navigator.pushNamed(context, '/track'),
                                  child: Container(
                                    height: double.infinity,
                                    width: 79.w,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff46A5BA),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Text(
                                        'TRACK',
                                        style: kTopupstyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.r),
                            color: Colors.white,
                            border: Border.all(
                                width: 1.5,
                                color: const Color(
                                    0xff90c9d6) //                   <--- border width here
                                ),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 28),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffFDFEFF),
                      borderRadius: BorderRadius.circular(26.r),
                    )),
              ),
              verticalSpaceCustom(30.h),
              Text(
                'Send a package',
                style: kblacksmallbutttonstyle,
              ),
              verticalSpaceCustom(13.28.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 4,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      height: 242.h,
                      width: 186.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffFDFEFF),
                          borderRadius: BorderRadius.circular(15)),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              'assets/images/ic-road-same-state.png',
                              // width: 144.49.w,
                              height: 120.05.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 31.h, left: 12.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Same State',
                                      style: kwaybillstyle,
                                    ),
                                    const smallGreen(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 7.h, right: 7),
                                      child: Text(
                                        'Deliveries within same state',
                                        style: kthinWaybillstyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.5.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/ic-bike.png',
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: const CircleAvatar(
                                        radius: 17,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const InterState(
                    bigtitle: 'InterState',
                    road: 'assets/images/ic-road-interstate.png',
                    smalltitle: 'Deliveries outside your currrent state',
                    car: 'assets/images/Delivery Van.png',
                    TopValue: 9,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const InterState(
                      bigtitle: 'Charter',
                      road: 'assets/images/ic-road-interstate.png',
                      smalltitle: 'Request a vehicle',
                      car: 'assets/images/ic-truck.png',
                      TopValue: 31.95,
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Material(
                        elevation: 4,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        child: Container(
                          height: 242.h,
                          width: 186.w,
                          decoration: BoxDecoration(
                              // color: Color(0xffF3F4F5),

                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 31.h, left: 12.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'International',
                                      style: kwaybillstyle,
                                    ),
                                    const smallGreen(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 7.h, right: 7),
                                      child: Text(
                                        'Send package to another country',
                                        style: kthinWaybillstyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    'assets/images/ic-aeroplane.png',

                                    // colorBlendMode: BlendMode.modulate,
                                    height: 85.h,
                                    fit: BoxFit.cover,
                                  ),
                                  // ignore: prefer_const_constructors
                                  Padding(
                                    padding: EdgeInsets.only(right: 2.w),
                                    child: Material(
                                      elevation: 4,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Container(
                                          height: 18.h,
                                          width: 100.58.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white),
                                          child: const Center(
                                              child: Text('Coming soon'))),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpaceCustom(15.h),
              Text(
                'Other Options',
                style: kblacksmallbutttonstyle,
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.h, bottom: 22.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    lastCon(
                      bigText: 'Waybill History',
                      smallText: 'Records of all your waybills.',
                    ),
                    lastCon(
                      bigText: 'Get Help',
                      smallText: 'Get help & support from our team.',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
