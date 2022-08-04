import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:im_stepper/stepper.dart';
import 'package:mobile_assessment_flutter/widgets/custom_button.dart';

import '../../utilities/constants/constants.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({Key? key}) : super(key: key);

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/RectangleMap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: size.height * 0.07,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        AutoRouter.of(context).pop();
                      },
                      width: 45.w,
                      child: Icon(
                        Icons.arrow_back,
                        size: 25.sp,
                      ),
                    ),
                    SButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        AutoRouter.of(context).pop();
                      },
                      width: size.width * 0.6,
                      buttontext: 'HH-INT-D9FD00-JBW-ORI',
                      style: textTheme.caption,
                    )
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.5,
                minChildSize: 0.25,
                maxChildSize: 0.88,
                builder: (context, scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: SColors.buttonsideColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/Group 2011.png',
                                color: Colors.transparent,
                              ),
                              Image.asset('assets/images/Line 2.png'),
                              InkWell(
                                  child: Image.asset(
                                'assets/images/Group 2011.png',
                                height: 18.h,
                              )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, top: 30),
                          child: Container(
                            height: 140.h,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: SColors.primaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, top: 20, right: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Pickup',
                                      style: textTheme.headline6?.copyWith(
                                          color: SColors.buttonsideColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Jiboo Terminal',
                                      style: textTheme.headline6?.copyWith(
                                          color: SColors.buttonsideColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Abuja Terminal',
                                      style: textTheme.headline6?.copyWith(
                                          color: Colors.grey.shade300
                                              .withOpacity(0.7),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Collected',
                                      style: textTheme.headline6?.copyWith(
                                          color: Colors.grey.shade300
                                              .withOpacity(0.7),
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 8, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        'assets/images/Group 2012.png',
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/Ellipse 36.png',
                                    ),
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/Group 2013.png'),
                                    ),
                                    Expanded(
                                      child: Image.asset(
                                          'assets/images/Group 2014.png'),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15.h),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '04 Mar, 2022',
                                      style: textTheme.headline6?.copyWith(
                                          color: SColors.buttonsideColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '05 Mar, 2022',
                                      style: textTheme.headline6?.copyWith(
                                          color: SColors.buttonsideColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Route Details',
                            style: textTheme.subtitle1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Container(
                            height: 310.h,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/Location pointer.png'),
                                      Image.asset(
                                          'assets/images/Location pointer.png'),
                                      Image.asset(
                                          'assets/images/Location pointerd.png'),
                                      Image.asset(
                                          'assets/images/Location pointers.png'),
                                    ],
                                  ),
                                ),
                                SizedBox(width: size.width * 0.05),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Delivered Successfully',
                                          style: textTheme.headline5?.copyWith(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Bishop's Court, Owerri.",
                                          style: textTheme.headline6?.copyWith(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Delivered Successfully',
                                          style: textTheme.headline5?.copyWith(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Bishop's Court, Owerri.",
                                          style: textTheme.headline6?.copyWith(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Delivered Successfully',
                                          style: textTheme.headline5?.copyWith(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Bishop's Court, Owerri.",
                                          style: textTheme.headline6?.copyWith(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Delivered Successfully',
                                          style: textTheme.headline5?.copyWith(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Bishop's Court, Owerri.",
                                          style: textTheme.headline6?.copyWith(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: size.width * 0.31),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                          'assets/images/Vectorcheck.png'),
                                      Image.asset(
                                          'assets/images/Vectorcheck.png'),
                                      Image.asset('assets/images/Vector.png'),
                                      Image.asset('assets/images/Vector.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          state: StepState.disabled,
          title: Text(''),
          content: Container(
            color: Colors.white,
          ),
        ),
        Step(
          title: Text(''),
          content: Container(),
        ),
        Step(
          title: Text(''),
          content: Container(),
        ),
        Step(
          title: Text(''),
          content: Container(),
        ),
      ];
}
