import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFDEE4EB),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.5,
            width: screenWidth,
            padding: const EdgeInsets.all(9.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
              width: screenWidth * 0.8,
              margin: EdgeInsets.only(top: 160),
              child: ListView(
                padding: EdgeInsets.all(15),
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text('What kind of user are you?',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)))
              ,
                  Text('We will adopt the app to suit your needs', style: TextStyle(fontSize: 23 ))
                ],
              ),

            ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/bg-app-cloud.png'))
            ),
          ),
          Container(
            height: screenHeight * 0.5,
            padding: const EdgeInsets.all(9.0),
            child: Center(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 100),
                        textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        primary: Color(0xFF46A5B9),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () => '',
                      child: Text('Personal'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 100),
                        textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        primary: Color(0xFF46A5B9),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () => '',
                      child: Text('E-commerce',
                          ),
                    ),
                  )
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
}
