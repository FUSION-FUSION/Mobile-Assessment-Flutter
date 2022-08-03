import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/ui/auth%20Screens/auth_welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryTextTheme: TextTheme(
            button:  GoogleFonts.inter(color: Colors.white),
          ),
          appBarTheme: AppBarTheme(
           titleTextStyle: GoogleFonts.inter( fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ),
        home: const AuthWelcomeScreen(),
      ),
      designSize: const Size(360, 690),
    );
  }
}
