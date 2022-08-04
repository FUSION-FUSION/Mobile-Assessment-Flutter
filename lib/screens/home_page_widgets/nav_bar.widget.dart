import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarWidget_ extends StatelessWidget {
  const NavBarWidget_({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(bottom: 20),
      decoration:
      BoxDecoration(),
      child: Row(
        children: [
          Container(
            width: 90,
            decoration:
            BoxDecoration(),
            child: Center(
              child: Icon(
                Icons.dehaze_outlined,
                size: 35,
              ),
            ),
          ),
          Container(
            width: 224,
            decoration:
            BoxDecoration(),
            child: Center(
              child: Text(
                'Hello, John.',
                style: TextStyle(fontFamily: 'JosefinSans', fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 90,
            decoration:
            BoxDecoration(),
            child: Center(
              child: Container(
                alignment: Alignment.center,
                  height: 35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/ic-notification.png'),
                          fit: BoxFit.contain))
              )
            )
          )
        ],
      ),
    );
  }
}
