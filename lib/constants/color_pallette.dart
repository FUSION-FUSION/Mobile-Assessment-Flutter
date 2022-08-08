import 'package:flutter/material.dart';

const kPrimary = Color(0xff46a5ba);
const kBackground = Color(0xffdce4e9);
const kSecBackground = Color(0xfff5f5f5);


final kShadow =  [
  BoxShadow(
    color: Colors.blueGrey.withOpacity(0.1),
    spreadRadius: 5,
    blurRadius: 15,
    offset: Offset(1, 1), // changes position of shadow
  ),
  BoxShadow(
    color: Colors.blueGrey.withOpacity(0.1),
    spreadRadius: 5,
    blurRadius: 15,
    offset: Offset(-1,-1), // changes position of shadow
  ),
];