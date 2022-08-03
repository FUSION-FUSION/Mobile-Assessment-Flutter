import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color buttoncolor, textcolor;
  final double fontsize;
  final FontWeight fontWeight;
  final String buttonText;
  final IconData? iconData;
  final double buttonHieght;
  final double buttonWidth;
  final VoidCallback onPressed;

  const ButtonWidget(
      {Key? key,
      required this.buttoncolor,
      required this.textcolor,
      required this.buttonText,
      required this.onPressed,
      this.iconData,
      required this.buttonHieght,
      required this.buttonWidth,
      required this.fontsize,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: buttoncolor,
          minimumSize: Size(buttonWidth, buttonHieght),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: onPressed,
      child: Text(
      buttonText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontsize, fontWeight: fontWeight, color: textcolor,),
    ),
    );
  }
}
