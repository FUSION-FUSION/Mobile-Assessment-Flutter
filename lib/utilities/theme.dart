import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';

class AppTheme {
  ThemeData lightTheme(Color primaryColor, fontSize) {
    final lightTheme = ThemeData.light();
    return lightTheme.copyWith(
      primaryColor: primaryColor,
      // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
      colorScheme:
          ColorScheme.fromSwatch(primarySwatch: SColors.primaryColorswatch),
      appBarTheme: AppBarTheme(
        color: primaryColor,
        iconTheme: const IconThemeData(
          color: Color(0xFFFFFFFF),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarTextStyle: GoogleFonts.poppinsTextTheme().bodyText2,
        titleTextStyle: GoogleFonts.poppinsTextTheme().headline6,
      ),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            fontSize: fontSize + 18,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w600),
        headline2: GoogleFonts.poppins(
            fontSize: fontSize + 8.0,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w600),
        subtitle1: GoogleFonts.poppins(
            fontSize: fontSize + 6.0,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w500),
        subtitle2: GoogleFonts.poppins(
            fontSize: fontSize + 10.0,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w500),
        bodyText1: GoogleFonts.poppins(
            fontSize: fontSize + 3.0,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400),
        bodyText2: GoogleFonts.poppins(
            fontSize: fontSize + 1.0,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w500),
        caption: GoogleFonts.poppins(
            fontSize: fontSize + 1,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w400),
        headline5: GoogleFonts.poppins(
            fontSize: fontSize + 1.5,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w300),
        headline6: GoogleFonts.poppins(
            fontSize: fontSize - 1,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w300),
        button: GoogleFonts.poppins(
            fontSize: fontSize,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w700),
      ),
// hintColor: ,
      errorColor: const Color.fromARGB(255, 237, 81, 70),
      iconTheme: IconThemeData(color: primaryColor),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primaryColor),
    );
  }

  ThemeData darkTheme(Color primaryColor, fontSize) {
    return ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp,),
      colorScheme:
          ColorScheme.fromSwatch(primarySwatch: SColors.primaryColorswatch),
      appBarTheme: AppBarTheme(
        color: const Color.fromARGB(255, 11, 66, 87),
        iconTheme: IconThemeData(
          color: Colors.grey.shade500,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        toolbarTextStyle: GoogleFonts.poppinsTextTheme()
            .apply(
              displayColor: Colors.white,
              bodyColor: Colors.grey[100],
            )
            .bodyText2,
        titleTextStyle: GoogleFonts.poppinsTextTheme()
            .apply(
              displayColor: Colors.white,
              bodyColor: Colors.grey[100],
            )
            .headline6,
      ),

      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            fontSize: fontSize + 13,
            color: Colors.grey[200],
            fontWeight: FontWeight.w600),
        headline2: GoogleFonts.poppins(
            fontSize: fontSize + 6.0,
            color: Colors.grey[200],
            fontWeight: FontWeight.w600),
        subtitle1: GoogleFonts.poppins(
            fontSize: fontSize + 1.0,
            color: Colors.grey[200],
            fontWeight: FontWeight.w700),
        subtitle2: GoogleFonts.poppins(
            fontSize: fontSize + 3.0,
            color: Colors.grey[200],
            fontWeight: FontWeight.w500),
        bodyText1: GoogleFonts.poppins(
            fontSize: fontSize + 3.0,
            color: Colors.grey[200],
            fontWeight: FontWeight.w400),
        bodyText2: GoogleFonts.poppins(
            fontSize: fontSize + 1.0,
            color: Colors.grey[200],
            fontWeight: FontWeight.w500),
        caption: GoogleFonts.poppins(
            fontSize: fontSize + 1,
            color: Colors.grey[200],
            fontWeight: FontWeight.w400),
        headline5: GoogleFonts.poppins(
            fontSize: fontSize + 1,
            color: Colors.grey[200],
            fontWeight: FontWeight.w300),
        headline6: GoogleFonts.poppins(
            fontSize: fontSize - 1,
            color: Colors.grey[200],
            fontWeight: FontWeight.w300),
        button: GoogleFonts.poppins(
            fontSize: fontSize,
            color: Colors.grey[200],
            fontWeight: FontWeight.w700),
      ),

      errorColor: const Color.fromARGB(255, 63, 7, 3),
      iconTheme: IconThemeData(color: primaryColor),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: primaryColor),
    );
  }
}
