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
          body: Stack(
            children: [
              Hero(child: Image.asset('assets/bg-app-cloud.png'), tag: 'bg',),
              Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Appbar(),
                  UserChoice(),
                ],
              ),
            ),
          ],),
        ));
  }
}
