import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
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

  const CustomButton2({
    Key? key,
    this.text,
    this.press,
    this.isIcon = true,
    this.icon,
    this.fontSize,
    required this.height,
    required this.width,
    this.color,
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
          color: const Color(0xff46a5ba),
          borderRadius: isCircle ?? true
              ? BorderRadius.circular(15)
              : BorderRadius.circular(10),
          border: isLightBackground
              ? Border.all(color: Colors.white)
              : Border.all(color: const Color(0xff46a5ba)),
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
                : const Icon(
                    Icons.arrow_forward,
                    color: Color(0xfff5f5f5),
                  )),
        //padding: EdgeInsets.symmetric(vertical: 20,horizontal: 100),
      ),
    );
  }
}
