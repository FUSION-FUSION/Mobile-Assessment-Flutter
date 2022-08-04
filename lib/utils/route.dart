import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


Future push(String routeName) async {
  return Navigator.pushNamed(Get.context!, routeName);
}

Future pushScreen(Widget widget, {context}) async {
  return Navigator.push(
    context ?? Get.context!,
    CupertinoPageRoute(
      builder: (c) => widget
    ),
  );
}

Future replaceScreen(Widget widget,
    {context}) async {
  return await Navigator.pushAndRemoveUntil<dynamic>(
    context ?? Get.context!,
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) =>   widget
         
    ),
    (route) => false,
  );
}

pop() {
  Navigator.pop(Get.context!);
}

