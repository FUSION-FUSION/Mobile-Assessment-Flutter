import 'package:flutter/material.dart';

const kPrimary = Color(0xff46a5ba);
const kBackground = Color(0xffdce4e9);
const kSecBackground = Color(0xfff5f5f5);


final kShadow =  [
  BoxShadow(
    color: Colors.black,
    spreadRadius: 50,
    blurRadius: -30,
    offset: Offset(30, 30), // changes position of shadow
  ),
  BoxShadow(
    color: Colors.black,
    spreadRadius: 50,
    blurRadius: -30,
    offset: Offset(-30, -30), // changes position of shadow
  ),

];