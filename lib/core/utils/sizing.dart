import 'package:flutter/material.dart';

class YMargin extends StatelessWidget {
  final double y;
  const YMargin({Key? key, required this.y}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y);
  }
}

class XMargin extends StatelessWidget {
  final double x;
  const XMargin({Key? key, required this.x}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: x);
  }
}
