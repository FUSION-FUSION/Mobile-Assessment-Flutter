import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InterState extends StatefulWidget {
  const InterState({Key? key}) : super(key: key);

  @override
  State<InterState> createState() => _InterStateState();
}

class _InterStateState extends State<InterState> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          child: Text('Interstate',
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
          padding: const EdgeInsets.only(left: 10, top: 4),
          child: Text('Deliveries outside \nyour current state',
              style: textTheme.headline6),
        ),
        Container(
          height: 145.h,
          width: 180.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
              image: AssetImage('assets/images/ic-road-interstate.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 16.h,
                  bottom: 0,
                  left: 0,
                  right: 38.w,
                  child: Image.asset(
                    'assets/images/Delivery Van.png',
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
