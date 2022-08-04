import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({
    Key? key,
    required this.header,
    this.subheader,
    this.norm = true,
    this.textWidget,
  }) : super(key: key);
  final String? header, subheader;
  //added this two variables because of the peculiar verification Screen
  final bool norm;
  final Widget? textWidget;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header!,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                letterSpacing: 1.5)),
        SizedBox(height: size.height * 0.01),
        norm
            ? Text(
                subheader!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black.withOpacity(0.5),
                ),
              )
            : textWidget!,
      ],
    );
  }
}
