import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../_shared/utils/app_colors.dart';
import '../../_shared/utils/text_styles.dart';


class HomePackageWidget1 extends StatelessWidget {
  final String header;
  final String subHeader;
  final String rdImg;
  final String autoImg;
  final Widget? child;
  final Widget? child2;

  const HomePackageWidget1({
    this.child2,
    this.child,
    required this.autoImg,
    required this.header,
    required this.rdImg,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Stack(
          children:[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage(rdImg)),
              ],
            )),
            Column(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20.0,),
                      child2 ?? Container(),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 17.0, color: Colors.black),),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(height: 3.0.h,width:30.0 ,
                          color: AppColors.primaryGreen,
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                        child: Text(subHeader, style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black),),
                      ),
                      const SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 120.0,
                              child: Image(image: AssetImage(autoImg))),

                          Padding(
                            padding:  const EdgeInsets.only(top: 70.0, right: 10.0),
                            child: child ?? const CircleAvatar(backgroundColor: Colors.white, radius: 13.0,
                              child: Icon(Icons.arrow_forward_outlined, color: Colors.black,size: 16.0,),),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}


