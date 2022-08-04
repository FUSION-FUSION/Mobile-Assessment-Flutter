import 'package:flutter/material.dart';

class ShipifyTextButton extends StatefulWidget {
  Function()? onPressed;
  String? text;
  Color? color;
  double? fontSize;

  ShipifyTextButton({this.onPressed, this.text, this.fontSize, this.color});

  @override
  State<ShipifyTextButton> createState() => _ShipifyTextButtonState();
}

class _ShipifyTextButtonState extends State<ShipifyTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(widget.text!,
        style: TextStyle(
          color: widget.color,
          fontSize: widget.fontSize,
        ),),);
  }
}
