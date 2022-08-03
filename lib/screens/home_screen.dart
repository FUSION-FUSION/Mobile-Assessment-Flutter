import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/user_choice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg-app-cloud.png'),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              children: [
                Appbar(),
                UserChoice(),
              ],
            ),
          ),
        ));
  }
}
