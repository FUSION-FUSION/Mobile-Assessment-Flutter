import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/Util/colors.dart';

class WelcomeButton extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textcolor;
  final Function onTap;
  final Color borderColor;
  const WelcomeButton({
    Key? key,
    required this.text,
    required this.bgcolor,
    required this.textcolor,
    required this.onTap,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => onTap),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.8, color: borderColor),
            color: bgcolor,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(blurRadius: text == 'Next' ? 5.0 : 0, color: kGreyColor)
            ]),
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 13.0,
        ),
        child: Text(
          text,
          style: TextStyle(color: textcolor, fontSize: 23),
        ),
      ),
    );
  }
}
