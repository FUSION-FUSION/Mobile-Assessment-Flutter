import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/ui_helpers.dart';

class Menuicon extends StatelessWidget {
  const Menuicon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 2.5.h,
          width: 12.5.w,
          decoration: BoxDecoration(
              color: Color(0xff1F1F1F),
              borderRadius: BorderRadius.circular(7.r)),
        ),
        verticalSpaceCustom(4.5.h),
        Container(
          height: 2.5.h,
          width: 24.w,
          decoration: BoxDecoration(
              color: const Color(0xff1F1F1F),
              borderRadius: BorderRadius.circular(7.r)),
        ),
        verticalSpaceCustom(4.5.h),
        Container(
          height: 2.5.h,
          width: 20.w,
          decoration: BoxDecoration(
              color: Color(0xff1F1F1F),
              borderRadius: BorderRadius.circular(7.r)),
        )
      ],
    );
  }
}
