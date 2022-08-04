import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;
  final Size size;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff46a5ba),
          minimumSize: size,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: text);
  }
}
