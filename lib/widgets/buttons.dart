import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/ui_helpers.dart';

class Custom_but extends StatelessWidget {
  const Custom_but({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        margin: EdgeInsets.only(right: 26.33.sp, top: 40.sp),
        child: Center(
            child: Text(
          text,
          style: kbigHomestyle,
        )),
        decoration: BoxDecoration(
            color: Color(0xff46a5ba), borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
