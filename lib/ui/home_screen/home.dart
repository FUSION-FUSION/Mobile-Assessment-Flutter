import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/text_styles.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_bottom_widget.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_package_widget1.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_package_widget2.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_package_widget3.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_package_widget4.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_top_widget.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_track_widget.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/widgets/home_wallet_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 16.0.w,right:16.0.w, top: 30.0.h, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const HomeTopWidget(),


                SizedBox( height: 20.0.h,),

                const HomeWalletWidget(),

                SizedBox(height: 20.0.h,),

                const HomeTrackWidget(),

                Padding(
                  padding:  EdgeInsets.only(top: 20.0.h, left: 12.0.w, bottom:20.0.h),
                  child: Text("Send a Package", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: const [
                     HomePackageWidget1(
                       header: "Same State",
                       subHeader: "Deliveries within the same state",
                       autoImg: "assets/images/ic-bike.png",
                       rdImg: "assets/images/ic-road-same-state.png",
                     ),
                     HomePackageWidget2(
                       header: "InterState",
                       subHeader: "Deliveries within outside your current state",
                       autoImg: "assets/images/Delivery Van.png",
                       rdImg: "assets/images/ic-road-interstate.png",
                     ),
                   ],
                 ),
                 const SizedBox(height: 20.0,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: const [
                     HomePackageWidget3(
                       header: "Charter",
                       subHeader: "Request a vehicle ",
                       autoImg: "assets/images/ic-truck.png",
                       rdImg: "assets/images/ic-road-charter.png",
                     ),
                     HomePackageWidget4(
                       header: "International",
                       subHeader: "send Packages to other countries",
                       autoImg: "assets/images/ic-aeroplane.png",
                     ),
                   ],
                 ),
                Padding(
                  padding:  EdgeInsets.only(top: 20.0.h, left: 12.0.w, bottom:20.0.h),
                  child: Text("Other Actions", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    HomeBottomWidget(
                      header: "Waybill History",
                      subHeader: "Record of all your waybills",
                    ),
                    HomeBottomWidget(
                      header: "Get Help",
                      subHeader: "Get help and surpport from our team",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
