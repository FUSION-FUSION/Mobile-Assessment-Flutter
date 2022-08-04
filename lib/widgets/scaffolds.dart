import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../__lib.dart';

class OnboardingScaffold extends StatelessWidget {
  final String? title;
final String? subTitle;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Function()? onBackPressed;

  const OnboardingScaffold({
    Key? key,
    this.onBackPressed,
    this.title,
    required this.child,
    this.color,
    this.padding, this.subTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (_, orientation) => Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(
                  AppAssets.onboardingBg,
                  fit: BoxFit.fill,
                ),
              ),
              col(children: [
                verticalSpace(height: 87.45),
               if (title != null) text(title, size: 26.33, weight: FontWeight.w500),
              if (title != null) verticalSpace(height: 4),
                   if (subTitle != null) text(title, size: 17.55, weight: FontWeight.w300),
                   if(title != null && subTitle != null) verticalSpace(height: 28.44),
                   child,
              ])
            ],
          ),
        ),
      ),
    );
  }
}
