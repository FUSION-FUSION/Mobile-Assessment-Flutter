import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilities/ui_helpers.dart';
import '../widgets/buttons.dart';
import '../widgets/custom_appBar.dart';

class Launch extends StatefulWidget {
  const Launch({Key? key}) : super(key: key);

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdce4e9),
        body: SafeArea(
            child: Stack(children: [
          Container(
            child: Image.asset('assets/images/bg-app-cloud.png'),
            width: double.infinity,
          ),
          Padding(
              padding: EdgeInsets.only(top: 130.56.h, left: 26.3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 'What kind of user are you?',
                  // title,

                  Padding(
                    padding: const EdgeInsets.only(right: 82.4),
                    child: Text(
                      'What kind of user are you?',
                      // title,
                      style: kappBarTitlestyle,
                    ),
                  ),

                  verticalSpaceCustom(4.h),
                  Padding(
                    padding: const EdgeInsets.only(right: 75.72),
                    child: Text(
                      'We will adapt the app to suit your needs.',
                      // subtitle,
                      style: kappBarsubTitlestyle,
                    ),
                  ),
                  Custom_but(
                    text: 'Personal',
                    onTap: () => Navigator.pushNamed(context, '/personal'),
                  ),

                  Custom_but(
                    text: 'E-commerce',
                    onTap: () => Navigator.pushNamed(context, '/commerce'),
                  )
                ],
              )),
        ])));
  }
}
