import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class smallGreen extends StatelessWidget {
  const smallGreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.h,
      width: 20.w,
      decoration: BoxDecoration(
          color: const Color(0xff46A5BA),
          borderRadius: BorderRadius.circular(7.r)),
    );
  }
}
