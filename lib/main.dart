import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Screens/personal_user_screen.dart';
import 'package:mobile_assessment_flutter/Screens/user_type_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const UserTypeScreen(),
      // home: const PersonalUserScreen(),
      home: const PersonalUserScreen(),
    );
  }
}
