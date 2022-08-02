import 'package:flutter/material.dart';
import 'register_2.dart';

class Registration1 extends StatelessWidget {
  const Registration1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('register 1'),
            MaterialButton(
              child: Text('Go forward'),
              onPressed: () {
                // go to register 2
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Registration2()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
