import 'package:flutter/material.dart';

const kPrimary = Color(0xff46a5ba);
const kBackground = Color(0xffdce4e9);
const kSecBackground = Color(0xfff5f5f5);


final kShadow =  [
  BoxShadow(
    color: Colors.black.withOpacity(0.9),
    spreadRadius: -30,
    blurRadius: 5,
    offset: Offset(-20, 0), // changes position of shadow
  ),
];