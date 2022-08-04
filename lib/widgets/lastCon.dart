import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/widgets/smallGreen.dart';

import '../utilities/ui_helpers.dart';

class lastCon extends StatelessWidget {
  const lastCon({
    Key? key,
    required this.bigText,
    required this.smallText,
  }) : super(key: key);

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.all(Radius.circular(11.r)),
      child: Container(
        height: 145.h,
        width: 186.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(11.r)),
        child: Padding(
          padding: EdgeInsets.only(top: 26.h, left: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // 'Waybill History',
                bigText,
                style: kwaybillstyle,
              ),
              const smallGreen(),
              verticalSpaceCustom(7.h),
              Text(
                // 'Records of all your waybills',
                smallText,
                style: kthinWaybillstyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
