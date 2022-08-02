import 'package:flutter/material.dart';

class BackGroundWrapper extends StatelessWidget {
  const BackGroundWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * (1 / 2.5),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.withOpacity(0.17),
            image: const DecorationImage(
              image: AssetImage('assets/bg-app-cloud.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * (3 / 5),
          color: Colors.lightBlueAccent.withOpacity(0.17),
        )
      ],
    ));
  }
}
