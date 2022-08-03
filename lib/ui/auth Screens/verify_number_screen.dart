import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/ui/_shared/utils/app_colors.dart';

import '../_shared/utils/text_styles.dart';

class VerifyNumber extends StatefulWidget {
  const VerifyNumber({Key? key}) : super(key: key);

  @override
  State<VerifyNumber> createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height: 20.0.h),
                Center(child: Text("Verification", style: AppTextStyle.kBoldWhiteTextStyle.copyWith(color: Colors.black, fontSize: 20.0),)),
                SizedBox(height: 20.0.h),
                Center(child: Text("We sent you an sms code on \n+2348186746590",textAlign: TextAlign.left, style: AppTextStyle.kSemiBoldWhiteTextStyle.copyWith(color: Colors.black,),)),
                SizedBox(height: 80.0.h),

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

                 Padding(
                  padding:  EdgeInsets.only(left: 20.0, right: 20.0, top: 90.0),
                  child: InkWell(
                   onTap: (){},
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: AppColors.primaryGreen,
                      child: Icon(Icons.arrow_right_alt_sharp, color: Colors.white,size: 30.0,),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}

class VerificationInputField extends StatelessWidget {
  const VerificationInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0.h,
      width: 50.0.w,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(13.0.r)
      ),
      child:
      Center(child:
      TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1)
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.number,
        style: GoogleFonts.inter(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0), textAlign: TextAlign.center,
        onChanged: (value){
          if (value.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },

      )
      ),
    );
  }
}