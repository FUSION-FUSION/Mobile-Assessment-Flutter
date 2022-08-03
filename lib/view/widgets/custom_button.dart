import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/constants/color_pallette.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final double height;
  final double width;
  final VoidCallback? press;
  final bool isIcon;
  final bool isLightBackground;
  final Color? color;
  final String? icon;
  final double? fontSize;
  final bool? isCircle;

  const CustomButton({
    Key? key,
    this.text,
    this.press,
    this.isIcon = true,
    this.icon,
    this.fontSize,
    required this.height,
    required this.width,
    this.color = kBackground,
    this.isLightBackground = false,
    this.isCircle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: isLightBackground ? kSecBackground : kPrimary,
          borderRadius: isCircle ?? true
              ? BorderRadius.circular(25)
              : BorderRadius.circular(15),
          border: isLightBackground
              ? Border.all(color: Colors.white)
              : Border.all(color: kPrimary),
        ),
        child: Center(
            child: isIcon
                ? Text(
                    text ?? 'null',
                    style: TextStyle(
                      color: isLightBackground ? Colors.black : Colors.white,
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Icon(
                    Icons.arrow_forward,
                    color: kSecBackground,
                  )),
        //padding: EdgeInsets.symmetric(vertical: 20,horizontal: 100),
      ),
    );
  }
}
