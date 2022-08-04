import 'package:flutter/material.dart';
import './screens/auth_screens/signin_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fusion Intelligence',
      home: SignInPage(),
    );
  }
}
