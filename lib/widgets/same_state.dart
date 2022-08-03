
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SameState extends StatefulWidget {
  const SameState({Key? key}) : super(key: key);

  @override
  State<SameState> createState() => _SameStateState();
}

class _SameStateState extends State<SameState> {
  @override
  Widget build(BuildContext context) {
       var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
   return Container(
      height: 262.5.h,
      width: 180.w,
      decoration: BoxDecoration(
        color: const Color(0xFFFDFEFF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 25),
          child: Text('Same State',
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
          child: Text('Deliveries within the \nsame state',
              style: textTheme.headline6),
        ),
        Container(
          height: 150.h,
          width: 180.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: const DecorationImage(
              image: AssetImage('assets/images/ic-road-same-state.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 25.h,
                  bottom: 0,
                  left: 0,
                  right: 64.w,
                  child: Image.asset('assets/images/ic-bike.png')),
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
