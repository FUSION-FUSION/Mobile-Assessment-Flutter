import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'auth_screens/personal_account_signup_page.dart';
import 'auth_screens/ecommerce_account_signup_page.dart';

class AccountTypePage extends StatelessWidget {
  const AccountTypePage({Key? key}) : super(key: key);

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
                            style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'JosefinSans',
                                fontWeight: FontWeight.bold))),
                    Text('We will adopt the app to suit your needs',
                        style: TextStyle(
                            fontSize: 27,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w200))
                  ],
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg-app-cloud.png'),
                    repeat: ImageRepeat.repeatY)),
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
                        textStyle: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        primary: Color(0xFF46A5B9),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PersonalAccountSignUpPage()));
                      },
                      child: Text('Personal'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        minimumSize: Size(200, 100),
                        textStyle: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        primary: Color(0xFF46A5B9),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                EcommerceAccountSignUpPage()));
                      },
                      child: Text(
                        'E-commerce',
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
