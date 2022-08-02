import 'package:flutter/material.dart';
import 'register_1.dart';
import 'register_3.dart';

class Registration2 extends StatelessWidget {
  const Registration2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('register 2 screen'),

            MaterialButton(
              child: Text('Go forward'),
              onPressed: () {
                // go to register 3
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Registration3()),
                );
              },
            ),

            MaterialButton(
              child: Text('Go backward'),
              onPressed: () {
                // go to back to register 1
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
