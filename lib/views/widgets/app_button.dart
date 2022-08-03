import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/views/themes/theme_provider.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Widget? child;
  final BorderRadius? borderRadius;
  final Color? backgroundColor, textColor;
  final EdgeInsetsGeometry padding;
  final double fontSize;
  final double? elevation;
  final double? width, height;

  const AppButton({
    Key? key,
    this.onPressed,
    this.text,
    this.child,
    this.borderRadius,
    this.backgroundColor,
    this.textColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.fontSize = 25, this.elevation, this.width, this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(
        text != null || child != null, 'either text or child must be provided');

    final theme = ThemeProvider.current(context);
    final radius = borderRadius ?? BorderRadius.circular(25);
    final background = backgroundColor ?? theme.primaryColor;
    final foreground = textColor ?? Colors.white;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        elevation: elevation,
      ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(borderRadius: radius, color: background),
        padding:
            padding,
        child: Center(
          child: child != null
              ? child!
              : theme.text(
                  text!,
                  color: foreground,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                ),
        ),
      ),
    );
  }
}
