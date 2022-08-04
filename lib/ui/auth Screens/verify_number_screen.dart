import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/cloud_widget.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/widgets/verification_input_widget.dart';
import '../_shared/utils/text_styles.dart';
import 'auth_succesful_screen.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColors.primary,
      body:
      SafeArea(
        child: Stack(
        children:[
          const CloudWidget(),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height: 70.0.h),
                Padding(
                  padding:  EdgeInsets.only(left: 20.0.w),
                  child: Text("Verification!", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),),
                ),
                SizedBox(height: 20.0.h),
                Padding(
                  padding:  EdgeInsets.only(left: 20.0.w),
                  child: Text("We sent you an sms code on \n+2348108960610",textAlign: TextAlign.left, style: AppTextStyle.kSemiBoldWhiteTextStyle.copyWith(color: Colors.black,),),
                ),
                SizedBox(height: 30.0.h),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.,
                    children: const[
                      VerificationInputField(),
                      VerificationInputField(),
                      VerificationInputField(),
                      VerificationInputField(),
                      VerificationInputField(),
                    ],
                  ),
                ),
                SizedBox(height: 10.0.h,),
                Padding(
                  padding:  EdgeInsets.only(right: 22.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Code Expired", style: AppTextStyle.kNormalObWhiteTextStyle.copyWith(color: Colors.red),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0.h,),
                Center(child: Text("Resend Code", style:AppTextStyle.kSemiBoldObWhiteTextStyle.copyWith(color: Colors.black),)),
                Padding(
                  padding:  EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                          return const AuthSuccessfulScreen();
                        }));
                      },
                      child:
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.primaryGreen,
                        child: Icon(Icons.arrow_right_alt_sharp, color: Colors.white,size: 30.0,),
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ]
        ),
      ),
    );
  }
}

