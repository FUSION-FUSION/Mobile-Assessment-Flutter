import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class ForwardNavigation extends StatefulWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final double? radius;
  final double? iconSize;
  final VoidCallback onTap;
  const ForwardNavigation(
      {this.backgroundColor = ColorManager.teal,
      this.iconColor = ColorManager.white,
      this.iconSize = 32,
      this.radius = 30,
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  _ForwardNavigationState createState() => _ForwardNavigationState();
}

class _ForwardNavigationState extends State<ForwardNavigation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: CircleAvatar(
        radius: widget.radius!,
        backgroundColor: widget.backgroundColor,
        child: Icon(
          Icons.arrow_forward,
          color: widget.iconColor,
          size: widget.iconSize,
        ),
      ),
    );
  }
}
