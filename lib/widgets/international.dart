import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class International extends StatefulWidget {
  const International({Key? key}) : super(key: key);

  @override
  State<International> createState() => _InternationalState();
}

class _InternationalState extends State<International> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
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
          child: Text('International',
              style: textTheme.bodyText1
                  ?.copyWith(fontWeight: FontWeight.w600, color: Colors.grey)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 4),
          child: SvgPicture.asset(
            'assets/images/Line 1.svg',
            color: const Color.fromARGB(255, 152, 205, 217),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 4),
          child: Text('Send packages to  \nother countries',
              style: textTheme.headline6?.copyWith(color: Colors.grey)),
        ),
        Container(
          height: 150.h,
          width: 180.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            // image: const DecorationImage(
            //   image: AssetImage('assets/images/ic-road-same-state.png'),
            //   fit: BoxFit.fill,
            // ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 4.h,
                  bottom: 0,
                  left: 0,
                  right: 40.w,
                  child: Image.asset(
                    'assets/images/ic-aeroplane.png',
                  )),
              Container(
                color: Colors.grey.shade100.withOpacity(0.4),
              ),
              Positioned(
                top: 65.h,
                bottom: 0,
                left: 110.w,
                right: 0,
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/images/Group 1995.svg',
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
