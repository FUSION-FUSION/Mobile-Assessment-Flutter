import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../_shared/utils/app_colors.dart';
import '../../_shared/utils/text_styles.dart';
import '../../gMap/google_map_screen.dart';


class HomeTrackWidget extends StatelessWidget {
  const HomeTrackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Track your waybill", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 15.0, color: Colors.black),),
                SizedBox( height: 8.0.h,),
                Container(
                  height: 40.0.h,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: AppColors.primaryGreen)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10.0,),
                        Container(
                          height: 15.0,
                          width: 15.0,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/ic-search.png")
                              )
                          ),
                          // color: Colors.red,

                        ),


                        //TextField Widget
                        Container(
                          height: 40.0.h,
                          width: 200,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(13.0.r)
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "waybill Number",
                            ),
                          ),
                        ),

                        //Track Widget
                        Container(
                          height: 35.0.h,
                          width: 70.0.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.0),
                            color: AppColors.primaryGreen,
                          ),
                          child: Center(child: InkWell(
                              onTap:() {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (ctx) {
                                      return GoogleMapScreen();
                                    }));
                              },
                              child: Text("Track",style: AppTextStyle.kNormalWhiteTextStyle,))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}