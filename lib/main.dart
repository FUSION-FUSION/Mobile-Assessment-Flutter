import 'package:flutter/material.dart';
import './screens/auth_screens/signin_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Welcome to Fusion',
      home: SignInPage(),
    );
  }
}
