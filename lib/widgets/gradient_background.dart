import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  GradientBackground({Key? key, required this.child}) : super(key: key);

  double width = Dimensions.screenWidth;
  double height = Dimensions.screenHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.sizeHeightPercent(height),
      width: Dimensions.sizeWidthPercent(width),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0XFFDBE4E9),
            Color(0XFFF0F0F3),
          ],
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/bg-app-cloud.png'),
          alignment: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}
