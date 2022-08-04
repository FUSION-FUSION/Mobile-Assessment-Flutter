import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/Sign_up_button.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/cloud_widget.dart';
import 'package:mobile_assessment_flutter/ui/home_screen/home.dart';

import '../_shared/utils/text_styles.dart';


class AuthSuccessfulScreen extends StatefulWidget {
  const AuthSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<AuthSuccessfulScreen> createState() => _AuthSuccessfulScreenState();
}

class _AuthSuccessfulScreenState extends State<AuthSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Stack(
          children: [
            CloudWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70.0.h),
                Padding(
                  padding:  EdgeInsets.only(left: 20.0.w),
                  child: Text("Congratulations!", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
                ),
                SizedBox(height: 20.0.h),
                Padding(
                  padding:  EdgeInsets.only(left: 20.0.w),
                  child: Text("Your account has been successfully \n created",textAlign: TextAlign.left, style: AppTextStyle.kSemiBoldWhiteTextStyle.copyWith(color: Colors.black,),),
                ),
                SizedBox(height: 30.0.h),
                Center(
                  child: Container(
                    height: 300.0,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ic-congratulations.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                SizedBox(height: 50.0.h),

                Center(child:
                AuthButton(label: "Continue", buttonColor: AppColors.primaryGreen,
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                    return const HomeScreen();
                  }));
                  },
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
