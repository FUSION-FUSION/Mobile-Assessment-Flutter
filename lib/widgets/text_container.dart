import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/utils/dimensions.dart';
import 'package:mobile_assessment_flutter/widgets/app_text.dart';

class TextContainer extends StatelessWidget {
  String text;
  double size;
  Color textColor;
  Color backgroundColor;
  double raduis;
  double height;
  double width;
  TextContainer(
      {Key? key,
      required this.text,
      this.size = 24.3,
      this.textColor = const Color(0XFFFFFFFF),
      this.backgroundColor = const Color(0xFF46A5BA),
      this.raduis = 20.25,
      this.height = 63,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.sizeHeightPercent(height),
      width: Dimensions.sizeWidthPercent(width),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius:
            BorderRadius.circular(Dimensions.sizeWidthPercent(raduis)),
      ),
      child: Center(
        child: AppText(
          text: text,
          size: size,
          color: textColor,
          bold: true,
        ),
      ),
    );
  }
}
