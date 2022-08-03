import 'package:flutter/material.dart';

class CloudWidget extends StatelessWidget {
  const CloudWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child:
      const Image(image: AssetImage("assets/images/bg-app-cloud.png"),
        fit: BoxFit.cover,
      ),
    );
  }
}