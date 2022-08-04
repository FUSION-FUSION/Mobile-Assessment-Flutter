import 'package:flutter/material.dart';

class BackGroundWrapper extends StatelessWidget {
  const BackGroundWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Container(
        width: double.infinity,
        height: height,
        child: Column(
          children: [
            Container(
              height: height * (1 / 3),
              width: double.infinity,
              decoration: const BoxDecoration(
                // color: Color.fromARGB(255, 199, 222, 231),
                image: DecorationImage(
                  image: AssetImage('assets/bg-app-cloud.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffDEE9EA),
            Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
      ),
    );
  }
}
