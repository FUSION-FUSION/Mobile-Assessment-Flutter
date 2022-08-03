import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget buidFirstNameFormFeild() {

  return TextFormField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(color: Colors.white)
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(color: Colors.white)
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
    ),
  );
}

Widget buidLastNameFormFeild() {
  return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.r),
            borderSide: BorderSide(color: Colors.white)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.r),
            borderSide: BorderSide(color: Colors.white)
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 15.h,
        ),
        hintStyle: TextStyle(fontSize: 14.sp),
      ),

      );
}

Widget buidEmailAddressFormFeild() {
  return TextFormField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(color: Colors.white)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(color: Colors.white)
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintStyle: TextStyle(fontSize: 14.sp),
    ),
  );
}

Widget buidPhoneNumberFormFeild() {
  return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.r),
            borderSide: BorderSide(color: Colors.white)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.r),
            borderSide: BorderSide(color: Colors.white)
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 19.w,
          vertical: 15.h,
        ),
        hintText: "+234",
        hintStyle: TextStyle(fontSize: 14.sp),
      ),
     );
}

Widget buidAddressFormFeild() {
  return TextFormField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(color: Colors.white)
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          borderSide: BorderSide(color: Colors.white)
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 19.w,
        vertical: 15.h,
      ),
      hintStyle: TextStyle(fontSize: 14.sp),
    ),
  );
}
