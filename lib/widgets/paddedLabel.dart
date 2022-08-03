import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/ui_helpers.dart';

class paddedLabel extends StatelessWidget {
  const paddedLabel({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Text(
        label,
        style: klabelstyle,
      ),
    );
  }
}
