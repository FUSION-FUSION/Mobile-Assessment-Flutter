import 'package:flutter/material.dart';

import '../utilities/ui_helpers.dart';

class Custom_but extends StatelessWidget {
  const Custom_but({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 17),
        child: Center(
            child: Text(
          text,
          style: kBigWhiteTextStyle,
        )),
        decoration: BoxDecoration(
            color: Color(0xff46a5ba), borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
