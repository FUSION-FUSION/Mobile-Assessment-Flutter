// PADDING
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

const kMainPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
const k4pxPadding = EdgeInsets.symmetric(horizontal: 4, vertical: 4);
const k8pxPadding = EdgeInsets.symmetric(horizontal: 8, vertical: 8);
const k16pxPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 16);

const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceRegular = SizedBox(width: 15.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);
Widget HorizontalSpaceCustom(double width) => SizedBox(width: width);

const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceRegular = SizedBox(height: 15.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
Widget verticalSpaceCustom(double height) => SizedBox(height: height);

TextStyle kappBarTitlestyle = GoogleFonts.poppins(
    textStyle: TextStyle(
  // fontFamily: 'OpenSauceOne',
  color: const Color(0xff484848),
  fontSize: 26.33.sp,
  fontWeight: FontWeight.w500,
));

TextStyle kappBarsubTitlestyle = GoogleFonts.poppins(
    textStyle: TextStyle(
  color: const Color(0xff484848),
  fontSize: 17.55.sp,
  fontWeight: FontWeight.w300,
));

TextStyle kbigHomestyle = GoogleFonts.poppins(
    textStyle: TextStyle(
  color: Colors.white,
  fontSize: 39.5.sp,
  fontWeight: FontWeight.w700,
));

TextStyle klabelstyle = GoogleFonts.poppins(
    textStyle: TextStyle(
  color: const Color(0xff1F1F1F),
  fontSize: 17.sp,
  fontWeight: FontWeight.w400,
));

TextStyle kblacksmallbutttonstyle = GoogleFonts.poppins(
    textStyle: TextStyle(
  color: Colors.black,
  fontSize: 24.3.sp,
  fontWeight: FontWeight.w500,
));
TextStyle kwhitesmallbutttonstyle = GoogleFonts.poppins(
    textStyle: TextStyle(
  color: Colors.white,
  fontSize: 24.3.sp,
  fontWeight: FontWeight.w500,
));

TextStyle kBigWhiteTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 36,
  fontWeight: FontWeight.w500,
);

TextStyle kBigBlackTextStyle = const TextStyle(
  color: Colors.black,
  fontSize: 36,
  fontWeight: FontWeight.w500,
);

TextStyle kSmallTextStyle = const TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w300,
);

TextStyle knormalTextStyle = const TextStyle(
  // fontFamily: 'OpenSauceOne',
  // color: kTextColor,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
