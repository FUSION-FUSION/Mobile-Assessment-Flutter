import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';

class AppText extends StatelessWidget {
  String text;
  double size;
  Color color;
  bool bold;
  AppText(
      {Key? key,
      required this.text,
      required this.size,
      this.color = const Color(0Xff484848),
      this.bold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
            fontSize: Dimensions.sizeHeightPercent(size),
            color: color,
            fontWeight: bold ? FontWeight.w500 : FontWeight.w300));
  }
}
