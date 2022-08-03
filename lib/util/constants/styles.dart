import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/util/constants/strings.dart';

import 'colors.dart';

const backgroundDesign = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [gradientColor1, gradientColor2, Colors.white]),
  image: DecorationImage(
      image: AssetImage("$imageDir/bg-app-cloud.png"),
      fit: BoxFit.contain,
      alignment: Alignment.topCenter),
);


const kEditTextDecoration = InputDecoration(
  hintText: '',
  filled: true,
  fillColor: Colors.white,
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);

Widget titleTags(String name) {
  return Padding(
    padding: const EdgeInsets.only(left: 15,bottom: 5),
    child: Text(name, style: const TextStyle(
      fontFamily: "Poppins",
        color: textColor1, fontWeight: FontWeight.w600, fontSize: 16),),
  );
}