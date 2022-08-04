import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Charter extends StatefulWidget {
  const Charter({Key? key}) : super(key: key);

  @override
  State<Charter> createState() => _CharterState();
}

class _CharterState extends State<Charter> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
   return  Container(
      height: 262.5.h,
      width: 180.w,
      decoration: BoxDecoration(
        color: const Color(0xFFFDFEFF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 10.h),
        Image.asset(
          'assets/images/ic-curve.png',
          height: 28.h,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Text('Charter',
              style:
                  textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 4),
          child: SvgPicture.asset(
            'assets/images/Line 1.svg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 4, bottom: 10),
          child: Text('Request a vehicle', style: textTheme.headline6),
        ),
        Container(
          height: 145.h,
          width: 180.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
              image: AssetImage('assets/images/ic-road-charter.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 0.h,
                  bottom: 0,
                  left: 0,
                  right: 48.w,
                  child: Image.asset(
                    'assets/images/ic-truck.png',
                    height: 30.h,
                  )),
              Positioned(
                top: 100.h,
                bottom: 0,
                left: 135.w,
                right: 0,
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/images/Group 301.svg',
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
