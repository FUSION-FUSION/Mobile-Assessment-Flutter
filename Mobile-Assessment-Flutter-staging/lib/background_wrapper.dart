import 'package:flutter/material.dart';

class BackGroundWrapper extends StatelessWidget {
  const BackGroundWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 199, 222, 231),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * (1 / 3),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 199, 222, 231),
              image: DecorationImage(
                image: AssetImage('assets/bg-app-cloud.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
