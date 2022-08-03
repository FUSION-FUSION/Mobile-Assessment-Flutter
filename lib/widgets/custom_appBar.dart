import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/ui_helpers.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Color(0xffdce4e9),
        child: Image.asset('assets/images/bg-app-cloud.png'),
        width: double.infinity,
      ),
      Padding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // 'What kind of user are you?',
              title,
              style: kBigBlackTextStyle,
            ),
            verticalSpaceSmall,
            Text(
              // 'We will adapt the app to suit your needs',
              subtitle,
              style: kSmallTextStyle,
            )
          ],
        ),
        padding: EdgeInsets.only(top: 130.56.h, left: 26.33.w, right: 82.4.w),
      )
    ]);
  }
}
