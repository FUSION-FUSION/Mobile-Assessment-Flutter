import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../_shared/utils/app_colors.dart';
import '../../_shared/utils/text_styles.dart';
import '../../_shared/utils/user_data.dart';


class HomeWalletWidget extends StatelessWidget {
  const HomeWalletWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        image: const DecorationImage(image: AssetImage("assets/images/bg-dashboard-balance.png"),
            fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Balance", style: AppTextStyle.kNormalWhiteTextStyle.copyWith(color: Colors.black),),
                Text("# ${UserData.balance}", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 20.0, color: Colors.black),),
              ],
            ),
            Container(
              height: 30.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: AppColors.primaryGreen,
                  borderRadius: BorderRadius.circular(20.0.r)
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Top up", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(fontSize: 12.0),),
                    Icon(Icons.keyboard_arrow_right_sharp, color: Colors.white,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}