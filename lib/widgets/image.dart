import 'package:flutter/material.dart';

Widget assetsImage(String imgUrl,{
  
  BoxFit? fit,
  BoxShape shape = BoxShape.rectangle,
  double? height = 24,
  double? width = 24,
  double? both,
}) =>
    Container(
      height: both ?? height,
      width: both ?? width,
      decoration: BoxDecoration(
        shape: shape,
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: fit,
        ),
      ),
    );
