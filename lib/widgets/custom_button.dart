import 'package:flutter/material.dart';

class SButton extends StatefulWidget {
  final Color? color;
  final double? minWidth;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final ShapeBorder? shape;
  final String? buttontext;
  final Color? buttonTextCor;
  final Color? sideColor;
  final double? width;
  final double? height;
  final TextStyle? style;

  const SButton({
    Key? key,
    this.color,
    this.minWidth,
    required this.onPressed,
    this.padding,
    this.child,
    this.shape,
    this.buttontext,
    this.buttonTextCor,
    this.sideColor,
    this.width,
    this.height,
    this.style,
  }) : super(key: key);

  @override
  State<SButton> createState() => _SButtonState();
}

class _SButtonState extends State<SButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: widget.height,
      color: widget.color ?? const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(  
          width: 2.0,
          color: widget.sideColor ?? Colors.transparent),
      ),
      minWidth: widget.width,
      padding: widget.padding,
      onPressed: widget.onPressed!,
      //  const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

      child:widget.child ?? Text(widget.buttontext ?? 'buttontext', style: widget.style
          // Theme.of(context).textTheme.button?.copyWith(

          //     color: widget.buttonTextCor ?? Colors.white)
          // ??
          // TextStyle(
          //     fontWeight: FontWeight.bold,
          //     color: widget.buttonTextCor ?? Colors.white),
          ),
    );
  }
}
