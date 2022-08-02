import 'package:flutter/material.dart';

// components
import 'visual_components/big_button.dart';

// screens
import 'register_1.dart';

class ChoosePurposeScreen extends StatelessWidget {
  const ChoosePurposeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    pushToRegister2() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Registration1()),
      );
    }

    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: Colors.grey[300],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg-app-cloud.png'),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texts
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Column(
                  children: const [
                    // "What kind of user are you?" Text
                    Text(
                      'What kind of user are you?',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 10),

                    // "We will adapt the app to suit..."
                    Text(
                      'We will adapt the app to suit your needs.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 35),
                  ],
                ),
              ),

              // Buttons
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // "Personal" Button
                  CustomBigButton(
                    color: Colors.cyan,
                    height: 110,
                    text: 'Personal',
                    onPressed: () {
                      pushToRegister2();
                    },
                  ),
                  const SizedBox(height: 30),

                  // "E-commerce" button
                  CustomBigButton(
                    color: Colors.cyan,
                    height: 110,
                    text: 'E-commerce',
                    onPressed: () {
                      pushToRegister2();
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
