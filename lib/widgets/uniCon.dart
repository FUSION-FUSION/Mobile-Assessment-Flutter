import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/widgets/smallGreen.dart';

import '../utilities/ui_helpers.dart';

class InterState extends StatelessWidget {
  const InterState({
    Key? key,
    required this.bigtitle,
    required this.smalltitle,
    required this.road,
    required this.car,
    required this.TopValue,
  }) : super(key: key);

  final String bigtitle;
  final String smalltitle;
  final String road;
  final String car;
  final double? TopValue;

  @override
  Widget build(BuildContext context) {
    return Material(
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
                road,
                // width: 144.49.w,
                height: 120.05.h,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Image.asset(
                    'assets/images/ic-curve.png',
                    width: 190.49.w,
                    height: 25.05.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/ic-curve.png',
                      //   width: 190.49.w,
                      //   height: 10.05.h,
                      //   fit: BoxFit.cover,
                      // ),
                      Text(
                        bigtitle,
                        style: kwaybillstyle,
                      ),
                      const smallGreen(),
                      Padding(
                        padding: EdgeInsets.only(top: 7.h, right: 7),
                        child: Text(
                          smalltitle,
                          style: kthinWaybillstyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: TopValue!.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        car,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
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
    );
  }
}
