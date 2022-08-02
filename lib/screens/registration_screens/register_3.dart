import 'package:flutter/material.dart';
import 'register_2.dart';
import 'package:mobile_assessment_flutter/screens/home_screen/home_screen.dart';

class Registration3 extends StatelessWidget {
  const Registration3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('register 3'),

            MaterialButton(
              child: Text('Go forward'),
              onPressed: () {
                // go to home screen
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),

            MaterialButton(
              child: Text('Go backward'),
              onPressed: () {
                // go to back to register 2
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
