import 'package:flutter/material.dart';

class CustomBigButton extends StatelessWidget {
  final double height;
  final Color color;
  final String text;
  final Function onPressed;

  const CustomBigButton({
    Key? key,
    required this.height,
    required this.color,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          onPressed();
        },
        color: color,
        height: height,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
  }
}
