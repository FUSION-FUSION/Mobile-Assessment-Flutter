import 'package:flutter/material.dart';

import '../themes/theme_colors.dart';
import '../themes/theme_styles.dart';

class ShipifyButton extends StatefulWidget {
  Function()? onPressed;
  String? text;
  double? radius;
  FontWeight? fontWeight;
  double? fontSize;
  Color? color;
  Color? backgroundColor;
  Icon? icon;
  ShipifyButton({this.icon, this.onPressed, this.text, this.radius,this.fontSize, this.fontWeight, this.color, this.backgroundColor});

  @override
  State<ShipifyButton> createState() => _ShipifyButtonState();
}

class _ShipifyButtonState extends State<ShipifyButton> {


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: widget.onPressed,
      child: Text(widget.text!,
        style: TextStyle(
          fontSize: widget.fontSize,
          fontWeight: widget.fontWeight,
          color: widget.color,
        ),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(widget.backgroundColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius!),
          ),
        ),
      ),
    );
  }
}
