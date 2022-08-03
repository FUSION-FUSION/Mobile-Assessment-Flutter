import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../_shared/utils/app_colors.dart';
import '../../_shared/utils/text_styles.dart';
class HomePackageWidget4 extends StatelessWidget {
  final String header;
  final String subHeader;
  final String autoImg;
  final Widget? child;

  const HomePackageWidget4({
    this.child,
    required this.autoImg,
    required this.header,
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
            Expanded(child: Container(
              color: Colors.white.withOpacity(0.5),
              child:
              Expanded(
                child: Container(
                  //height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: Text("coming soon", style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(fontSize: 10, color: Colors.black),),
                ),
              ),
            ),
            ),
            Column(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0,),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 18.0, color: Colors.black),),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 4.0),
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
                          Container(
                              height: 120.0,
                              child: Image(image: AssetImage(autoImg))),
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