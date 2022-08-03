import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../_shared/utils/app_colors.dart';
import '../../_shared/utils/text_styles.dart';

class HomeBottomWidget extends StatelessWidget {
  final String header;
  final String subHeader;

  const HomeBottomWidget({
    required this.header,
    required this.subHeader,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Stack(
          children:[
            Column(
              children: [

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.0,),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        child: Text(header, style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 16.0, color: Colors.black),),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(height: 3.0.h,width:30.0 ,
                          color: AppColors.primaryGreen,
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                        child: Text(subHeader, style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black,fontSize: 13.0),),
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(left: 140.0),
                        child: CircleAvatar(backgroundColor: Colors.black, radius: 13.0,
                          child: Icon(Icons.arrow_forward_outlined, color: Colors.white,size: 16.0,),),
                      )
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