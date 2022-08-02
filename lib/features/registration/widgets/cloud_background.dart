import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/core/constants/size_constants.dart';
import 'package:mobile_assessment_flutter/core/theme/app_color.dart';
import 'package:mobile_assessment_flutter/core/utils/extensions.dart';

class CloudBackground extends StatelessWidget {
  final Widget child;
  const CloudBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColor.toplinear,
            AppColor.bottomlinear,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/bg-app-cloud.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kspace) +
            const EdgeInsets.only(top: ktoppadding),
        child: child,
      ),
    );
  }
}
