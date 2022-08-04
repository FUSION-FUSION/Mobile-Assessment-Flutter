import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


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
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.0.r)
      ),
      child:
      Center(child:
      TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1)
        ],
        decoration: const InputDecoration(
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