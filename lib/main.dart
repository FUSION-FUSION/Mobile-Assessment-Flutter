import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/screens/commerce_signup_screen.dart';
import 'package:mobile_assessment_flutter/screens/home_screen.dart';
import 'package:mobile_assessment_flutter/screens/login_screen.dart';
import 'package:mobile_assessment_flutter/screens/personal_signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/home", page: () => HomeScreen()),
        GetPage(name: "/personal", page: () => PersonalSignupScreen()),
        GetPage(name: "/commerce", page: () => CommerceSignupScreen()),
        GetPage(name: "/login", page: () => LoginScreen()),
        //GetPage(name: "/home", page:()=> HomeScreen()),
      ],
      initialRoute: "/home",
    );
  }
}

