import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/providers/verificationProvider.dart';
import 'package:mobile_assessment_flutter/screens/congratulations.dart';
import 'package:mobile_assessment_flutter/screens/homeScreen/homeScreen.dart';
import 'package:mobile_assessment_flutter/utils/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<VerificationProvider>(
        create: (context) => VerificationProvider(),
        child: MaterialApp(
            theme: ThemeData(
                primaryColor: primaryBlue,
                primarySwatch: Colors.blue,
                textTheme: ThemeData.light().textTheme.copyWith(
                    headline1: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 26.33,
                        height: 1.5,
                        color: titleTextColor),
                    headline2: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: titleTextColor,
                        fontSize: 17.55,
                        height: 1.5),
                    button: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: normalWhite,
                        fontSize: 39.5,
                        height: 1.5),
                    subtitle1: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: formTextColor,
                        fontSize: 16,
                        height: 1.25),
                    subtitle2: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: Color(0xff484848),
                        fontSize: 13,
                        height: 1.25))),
            debugShowCheckedModeBanner: false,
            home: HomePage()));
  }
}
