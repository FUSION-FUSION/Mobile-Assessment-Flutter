import 'package:flutter/material.dart';

class Utils{
 static final messengerKey = GlobalKey<ScaffoldMessengerState>();
  //custom toast/snackBar
  static showSnackBar(String? text){
    if(text == null)return;
    final snackBar =SnackBar(content: Text(text),backgroundColor: Colors.red,);

    messengerKey.currentState!
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
  }
}