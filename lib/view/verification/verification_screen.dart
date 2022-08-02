
import 'package:flutter/material.dart';

import '../../constants/assets_constant_name.dart';
import '../../constants/color_pallette.dart';

class VerificationScreen extends StatelessWidget {
  static String routeName = '/verification_screen';
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: kBackground,
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(backgroundAppCloud),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
